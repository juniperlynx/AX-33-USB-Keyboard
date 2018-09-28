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

#ifndef _LED_MATRIX_H_
#define _LED_MATRIX_H_

//From keyboard
#include "config_led.h"

//CS1-CS16 Current Source "Col"
#define ISSI3733_CS_COUNT 16

//SW1-SW12 Switch "Row"
#define ISSI3733_SW_COUNT 12

#define ISSI3733_LED_RGB_COUNT ISSI3733_CS_COUNT * ISSI3733_SW_COUNT
#define ISSI3733_PG0_BYTES ISSI3733_LED_RGB_COUNT / 8 + 1       //+1 for first byte being memory start offset for I2C transfer
#define ISSI3733_PG1_BYTES ISSI3733_LED_RGB_COUNT + 1           //+1 for first byte being memory start offset for I2C transfer
#define ISSI3733_PG2_BYTES ISSI3733_LED_RGB_COUNT + 1           //+1 for first byte being memory start offset for I2C transfer
#define ISSI3733_PG3_BYTES 18 + 1                               //+1 for first byte being memory start offset for I2C transfer

#define ISSI3733_PG_ONOFF_BYTES ISSI3733_PG0_BYTES
#define ISSI3733_PG_OR_BYTES ISSI3733_PG0_BYTES
#define ISSI3733_PG_SR_BYTES ISSI3733_PG0_BYTES
#define ISSI3733_PG_PWM_BYTES ISSI3733_PG1_BYTES
#define ISSI3733_PG_ABM_BYTES ISSI3733_PG2_BYTES
#define ISSI3733_PG_FN_BYTES ISSI3733_PG3_BYTES

typedef struct issi3733_driver_s {
    uint8_t addr; //Address of the driver according to wiring "ISSI3733: Table 1 Slave Address"
    uint8_t onoff[ISSI3733_PG_ONOFF_BYTES]; //PG0 - LED Control Register - LED On/Off Register
    uint8_t open[ISSI3733_PG_OR_BYTES];     //PG0 - LED Control Register - LED Open Register
    uint8_t shrt[ISSI3733_PG_SR_BYTES];     //PG0 - LED Control Register - LED Short Register
    uint8_t pwm[ISSI3733_PG_PWM_BYTES];     //PG1 - PWM Register
    uint8_t abm[ISSI3733_PG_ABM_BYTES];     //PG2 - Auto Breath Mode Register
    uint8_t conf[ISSI3733_PG_FN_BYTES];     //PG3 - Function Register
} issi3733_driver_t;

typedef struct issi3733_rgb_s {
    uint8_t *r;         //Direct access into PWM data
    uint8_t *g;         //Direct access into PWM data
    uint8_t *b;         //Direct access into PWM data
} issi3733_rgb_t;

typedef struct issi3733_rgb_adr_s {
    uint8_t drv;        //Driver from given list
    uint8_t cs;         //CS
    uint8_t swr;        //SW Red
    uint8_t swg;        //SW Green
    uint8_t swb;        //SW Blue
} issi3733_rgb_adr_t;

typedef struct issi3733_led_s {
    uint8_t id;                 //According to PCB ref
    issi3733_rgb_t rgb;         //PWM settings of R G B
    issi3733_rgb_adr_t adr;     //Hardware addresses
    float x;                    //Physical position X
    float y;                    //Physical position Y
    float px;                   //Physical position X in percent
    float py;                   //Physical position Y in percent
    uint8_t scan;               //Key scan code from wiring (set 0xFF if no key)
} issi3733_led_t;

typedef struct led_disp_s {
    uint64_t frame;
    float left;
    float right;
    float top;
    float bottom;
    float width;
    float height;
} led_disp_t;

uint8_t led_matrix_init(void);

#define LED_MODE_NORMAL             0   //Must be 0
#define LED_MODE_KEYS_ONLY          1
#define LED_MODE_NON_KEYS_ONLY      2
#define LED_MODE_INDICATORS_ONLY    3
#define LED_MODE_MAX_INDEX          LED_MODE_INDICATORS_ONLY   //Must be highest value

#define EF_NONE         0x00000000  //No effect
#define EF_OVER         0x00000001  //Overwrite any previous color information with new
#define EF_SCR_L        0x00000002  //Scroll left
#define EF_SCR_R        0x00000004  //Scroll right
#define EF_SUBTRACT     0x00000008  //Subtract color values

typedef struct led_setup_s {
  float hs;         //Band begin at percent
  float he;         //Band end at percent
  uint8_t rs;       //Red start value
  uint8_t re;       //Red end value
  uint8_t gs;       //Green start value
  uint8_t ge;       //Green end value
  uint8_t bs;       //Blue start value
  uint8_t be;       //Blue end value
  uint32_t ef;      //Animation and color effects
  uint8_t end;      //Set to signal end of the setup
} led_setup_t;

extern issi3733_driver_t issidrv[ISSI3733_DRIVER_COUNT];

extern uint8_t gcr_desired;
extern uint8_t gcr_breathe;
extern uint8_t gcr_actual;
extern uint8_t gcr_actual_last;

extern uint8_t led_animation_id;
extern uint8_t led_enabled;
extern float led_animation_speed;
extern uint8_t led_lighting_mode;
extern uint8_t led_animation_direction;
extern uint8_t led_animation_breathing;
extern uint8_t led_animation_breathe_cur;
extern uint8_t breathe_dir;
extern const uint8_t led_setups_count;

extern void *led_setups[];

extern issi3733_led_t *led_cur;
extern issi3733_led_t *lede;

void led_matrix_run(led_setup_t *f);
void led_matrix_task(void);

void gcr_compute(void);

#endif //_LED_MATRIX_H_
