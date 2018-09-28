/*
Copyright 2018 Massdrop Inc.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#include "samd51j18a.h"
#include "tmk_core/common/keyboard.h"

#include "report.h"
#include "host.h"
#include "host_driver.h"
#include "keycode_config.h"
#include <string.h>
#include "quantum.h"

//From protocol directory
#include "arm_atsam_protocol.h"

//From keyboard's directory
#include "config_led.h"

uint8_t keyboard_leds(void);
void send_keyboard(report_keyboard_t *report);
void send_mouse(report_mouse_t *report);
void send_system(uint16_t data);
void send_consumer(uint16_t data);

host_driver_t arm_atsam_driver = {
    keyboard_leds,
    send_keyboard,
    send_mouse,
    send_system,
    send_consumer
};

uint8_t led_states;

uint8_t keyboard_leds(void)
{
#ifdef NKRO_ENABLE
    if (keymap_config.nkro)
        return udi_hid_nkro_report_set;
    else
#endif //NKRO_ENABLE
        return udi_hid_kbd_report_set;
}

void send_keyboard(report_keyboard_t *report)
{
    uint32_t irqflags;

#ifdef NKRO_ENABLE
    if (!keymap_config.nkro)
    {
#endif //NKRO_ENABLE
        dprint("s-kbd\r\n");

        irqflags = __get_PRIMASK();
        __disable_irq();
        __DMB();

        memcpy(udi_hid_kbd_report, report->raw, UDI_HID_KBD_REPORT_SIZE);
        udi_hid_kbd_b_report_valid = 1;
        udi_hid_kbd_send_report();

        __DMB();
        __set_PRIMASK(irqflags);
#ifdef NKRO_ENABLE
    }
    else
    {
        dprint("s-nkro\r\n");

        irqflags = __get_PRIMASK();
        __disable_irq();
        __DMB();

        memcpy(udi_hid_nkro_report, report->raw, UDI_HID_NKRO_REPORT_SIZE);
        udi_hid_nkro_b_report_valid = 1;
        udi_hid_nkro_send_report();

        __DMB();
        __set_PRIMASK(irqflags);
    }
#endif //NKRO_ENABLE
}

void send_mouse(report_mouse_t *report)
{
#ifdef MOUSEKEY_ENABLE
    uint32_t irqflags;

    dprint("s-mou\r\n");

    irqflags = __get_PRIMASK();
    __disable_irq();
    __DMB();

    memcpy(udi_hid_mou_report, report, UDI_HID_MOU_REPORT_SIZE);
    udi_hid_mou_b_report_valid = 1;
    udi_hid_mou_send_report();

    __DMB();
    __set_PRIMASK(irqflags);
#endif //MOUSEKEY_ENABLE
}

void send_system(uint16_t data)
{
#ifdef EXTRAKEY_ENABLE
    dprintf("s-exks %i\r\n", data);

    uint32_t irqflags;

    irqflags = __get_PRIMASK();
    __disable_irq();
    __DMB();

    udi_hid_exk_report.desc.report_id = REPORT_ID_SYSTEM;
    if (data != 0) data = data - SYSTEM_POWER_DOWN + 1;
    udi_hid_exk_report.desc.report_data = data;
    udi_hid_exk_b_report_valid = 1;
    udi_hid_exk_send_report();

    __DMB();
    __set_PRIMASK(irqflags);
#endif //EXTRAKEY_ENABLE
}

void send_consumer(uint16_t data)
{
#ifdef EXTRAKEY_ENABLE
    dprintf("s-exkc %i\r\n",data);

    uint32_t irqflags;

    irqflags = __get_PRIMASK();
    __disable_irq();
    __DMB();

    udi_hid_exk_report.desc.report_id = REPORT_ID_CONSUMER;
    udi_hid_exk_report.desc.report_data = data;
    udi_hid_exk_b_report_valid = 1;
    udi_hid_exk_send_report();

    __DMB();
    __set_PRIMASK(irqflags);
#endif //EXTRAKEY_ENABLE
}

int main(void)
{
    led_ena;
    m15_ena;

    debug_code_init();

    CLK_init();

    ADC0_init();

    SPI_Init();

    i2c1_init();

    matrix_init();

    USB2422_init();

    DBGC(DC_MAIN_UDC_START_BEGIN);
    udc_start();
    DBGC(DC_MAIN_UDC_START_COMPLETE);

    DBGC(DC_MAIN_CDC_INIT_BEGIN);
    CDC_init();
    DBGC(DC_MAIN_CDC_INIT_COMPLETE);

    while (USB2422_Port_Detect_Init() == 0) {}

    led_off;
    m15_off;

    led_matrix_init();

    while (I2C3733_Init_Control() != 1) {}
    while (I2C3733_Init_Drivers() != 1) {}

    I2C_DMAC_LED_Init();

    i2c_led_q_init();

    uint8_t drvid;
    for (drvid=0;drvid<ISSI3733_DRIVER_COUNT;drvid++)
        I2C_LED_Q_ONOFF(drvid); //Queue data

    keyboard_setup();

    keyboard_init();

    host_set_driver(&arm_atsam_driver);

#ifdef VIRTSER_ENABLE
    uint64_t next_print = 0;
#endif //VIRTSER_ENABLE
    uint64_t next_usb_checkup = 0;
    uint64_t next_5v_checkup = 0;

    v_5v_avg = adc_get(ADC_5V);

    debug_code_disable();

    while (1)
    {
        if (usb_state == USB_STATE_POWERDOWN)
        {
            uint32_t timer_led = timer_read32();

            led_on;
            if (led_enabled)
            {
                for (drvid=0;drvid<ISSI3733_DRIVER_COUNT;drvid++)
                {
                    I2C3733_Control_Set(0);
                }
            }
            while (usb_state == USB_STATE_POWERDOWN)
            {
                if (timer_read32() - timer_led > 1000) led_off; //Good to indicate went to sleep, but only for a second
            }
            if (led_enabled)
            {
                for (drvid=0;drvid<ISSI3733_DRIVER_COUNT;drvid++)
                {
                    I2C3733_Control_Set(1);
                }
            }
            led_off;
        }

        keyboard_task();

        led_matrix_task();

        if (CLK_get_ms() > next_5v_checkup)
        {
            next_5v_checkup = CLK_get_ms() + 5;

            v_5v = adc_get(ADC_5V);
            v_5v_avg = 0.9 * v_5v_avg + 0.1 * v_5v;

            gcr_compute();
        }

        if (CLK_get_ms() > next_usb_checkup)
        {
            next_usb_checkup = CLK_get_ms() + 10;

            USB_HandleExtraDevice();
        }

#ifdef VIRTSER_ENABLE
        if (CLK_get_ms() > next_print)
        {
            next_print = CLK_get_ms() + 250;
            //dpf("5v=%i 5vu=%i dlow=%i dhi=%i gca=%i gcd=%i\r\n",v_5v,v_5v_avg,v_5v_avg-V5_LOW,v_5v_avg-V5_HIGH,gcr_actual,gcr_desired);
        }
#endif //VIRTSER_ENABLE
    }

    return 1;
}

