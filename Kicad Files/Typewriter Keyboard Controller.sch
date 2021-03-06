EESchema Schematic File Version 4
LIBS:Typewriter Keyboard Controller-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "AX-33 Membrane Keyboard Controller"
Date "2018-07-15"
Rev "0.1"
Comp ""
Comment1 "Author: Juniper"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L keyboard_parts:ATMEGA32U4 U1
U 1 1 5B440885
P 4550 4650
F 0 "U1" H 4550 3400 60  0000 C CNN
F 1 "ATMEGA32U4" H 4550 5900 60  0000 C CNN
F 2 "Housings_QFP:TQFP-44_10x10mm_Pitch0.8mm" H 4550 4650 60  0001 C CNN
F 3 "" H 4550 4650 60  0000 C CNN
	1    4550 4650
	1    0    0    -1  
$EndComp
$Comp
L keyboard_parts:XTAL_GND X1
U 1 1 5B44090A
P 2300 5350
F 0 "X1" H 2300 5500 60  0000 C CNN
F 1 "XTAL_GND" H 2300 5200 60  0000 C CNN
F 2 "Crystals:crystal_FA238-TSX3225" H 2300 5350 60  0001 C CNN
F 3 "" H 2300 5350 60  0000 C CNN
	1    2300 5350
	1    0    0    -1  
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:C C2
U 1 1 5B44098D
P 2700 5650
F 0 "C2" H 2725 5750 50  0000 L CNN
F 1 "22p" H 2725 5550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2738 5500 50  0001 C CNN
F 3 "" H 2700 5650 50  0000 C CNN
	1    2700 5650
	1    0    0    -1  
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:C C1
U 1 1 5B4409F6
P 1900 5650
F 0 "C1" H 1925 5750 50  0000 L CNN
F 1 "22p" H 1925 5550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 1938 5500 50  0001 C CNN
F 3 "" H 1900 5650 50  0000 C CNN
	1    1900 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5B440A21
P 2300 5900
F 0 "#PWR01" H 2300 5650 50  0001 C CNN
F 1 "GND" H 2300 5750 50  0000 C CNN
F 2 "" H 2300 5900 50  0000 C CNN
F 3 "" H 2300 5900 50  0000 C CNN
	1    2300 5900
	1    0    0    -1  
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:C C4
U 1 1 5B440B11
P 2200 2250
F 0 "C4" H 2225 2350 50  0000 L CNN
F 1 "0.1u" H 2225 2150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2238 2100 50  0001 C CNN
F 3 "" H 2200 2250 50  0000 C CNN
	1    2200 2250
	1    0    0    -1  
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:C C5
U 1 1 5B440B32
P 2500 2250
F 0 "C5" H 2525 2350 50  0000 L CNN
F 1 "0.1u" H 2525 2150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2538 2100 50  0001 C CNN
F 3 "" H 2500 2250 50  0000 C CNN
	1    2500 2250
	1    0    0    -1  
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:C C6
U 1 1 5B440BA1
P 2800 2250
F 0 "C6" H 2825 2350 50  0000 L CNN
F 1 "0.1u" H 2825 2150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2838 2100 50  0001 C CNN
F 3 "" H 2800 2250 50  0000 C CNN
	1    2800 2250
	1    0    0    -1  
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:C C7
U 1 1 5B440BCA
P 3100 2250
F 0 "C7" H 3125 2350 50  0000 L CNN
F 1 "0.1u" H 3125 2150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3138 2100 50  0001 C CNN
F 3 "" H 3100 2250 50  0000 C CNN
	1    3100 2250
	1    0    0    -1  
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:C C8
U 1 1 5B440BF7
P 3400 2250
F 0 "C8" H 3425 2350 50  0000 L CNN
F 1 "4.7u" H 3425 2150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3438 2100 50  0001 C CNN
F 3 "" H 3400 2250 50  0000 C CNN
	1    3400 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5B440D0B
P 2200 2600
F 0 "#PWR02" H 2200 2350 50  0001 C CNN
F 1 "GND" H 2200 2450 50  0000 C CNN
F 2 "" H 2200 2600 50  0000 C CNN
F 3 "" H 2200 2600 50  0000 C CNN
	1    2200 2600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 5B440D31
P 2200 1900
F 0 "#PWR03" H 2200 1750 50  0001 C CNN
F 1 "VCC" H 2200 2050 50  0000 C CNN
F 2 "" H 2200 1900 50  0000 C CNN
F 3 "" H 2200 1900 50  0000 C CNN
	1    2200 1900
	1    0    0    -1  
$EndComp
$Comp
L keyboard_parts:USB_mini_micro_B J1
U 1 1 5B44233F
P 2250 3850
F 0 "J1" H 1850 3800 60  0000 C CNN
F 1 "USB_mini_micro_B" H 2100 4100 60  0001 C CNN
F 2 "keyboard_parts:USB_miniB_hirose_5S8" H 2200 3850 60  0001 C CNN
F 3 "" H 2200 3850 60  0000 C CNN
	1    2250 3850
	1    0    0    -1  
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:R R4
U 1 1 5B442A29
P 2850 3800
F 0 "R4" V 2930 3800 50  0000 C CNN
F 1 "22" V 2850 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 2780 3800 50  0001 C CNN
F 3 "" H 2850 3800 50  0000 C CNN
	1    2850 3800
	0    1    1    0   
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:R R3
U 1 1 5B442A84
P 3150 3900
F 0 "R3" V 3230 3900 50  0000 C CNN
F 1 "22" V 3150 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 3080 3900 50  0001 C CNN
F 3 "" H 3150 3900 50  0000 C CNN
	1    3150 3900
	0    1    1    0   
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:C C3
U 1 1 5B442ABB
P 2850 4100
F 0 "C3" H 2875 4200 50  0000 L CNN
F 1 "1u" H 2875 4000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2888 3950 50  0001 C CNN
F 3 "" H 2850 4100 50  0000 C CNN
	1    2850 4100
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 5B442D44
P 2500 3600
F 0 "#PWR04" H 2500 3450 50  0001 C CNN
F 1 "VCC" H 2500 3750 50  0000 C CNN
F 2 "" H 2500 3600 50  0000 C CNN
F 3 "" H 2500 3600 50  0000 C CNN
	1    2500 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5B442D72
P 2550 4300
F 0 "#PWR05" H 2550 4050 50  0001 C CNN
F 1 "GND" H 2550 4150 50  0000 C CNN
F 2 "" H 2550 4300 50  0000 C CNN
F 3 "" H 2550 4300 50  0000 C CNN
	1    2550 4300
	1    0    0    -1  
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:R R2
U 1 1 5B4430E9
P 6150 4700
F 0 "R2" V 6230 4700 50  0000 C CNN
F 1 "10k" V 6150 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 6080 4700 50  0001 C CNN
F 3 "" H 6150 4700 50  0000 C CNN
	1    6150 4700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5B443152
P 6400 4700
F 0 "#PWR06" H 6400 4450 50  0001 C CNN
F 1 "GND" H 6400 4550 50  0000 C CNN
F 2 "" H 6400 4700 50  0000 C CNN
F 3 "" H 6400 4700 50  0000 C CNN
	1    6400 4700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5B443182
P 6000 4500
F 0 "#PWR07" H 6000 4250 50  0001 C CNN
F 1 "GND" H 6000 4350 50  0000 C CNN
F 2 "" H 6000 4500 50  0000 C CNN
F 3 "" H 6000 4500 50  0000 C CNN
	1    6000 4500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5B4431B2
P 6000 3700
F 0 "#PWR08" H 6000 3450 50  0001 C CNN
F 1 "GND" H 6000 3550 50  0000 C CNN
F 2 "" H 6000 3700 50  0000 C CNN
F 3 "" H 6000 3700 50  0000 C CNN
	1    6000 3700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5B443248
P 6000 5700
F 0 "#PWR09" H 6000 5450 50  0001 C CNN
F 1 "GND" H 6000 5550 50  0000 C CNN
F 2 "" H 6000 5700 50  0000 C CNN
F 3 "" H 6000 5700 50  0000 C CNN
	1    6000 5700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5B443278
P 3200 5000
F 0 "#PWR010" H 3200 4750 50  0001 C CNN
F 1 "GND" H 3200 4850 50  0000 C CNN
F 2 "" H 3200 5000 50  0000 C CNN
F 3 "" H 3200 5000 50  0000 C CNN
	1    3200 5000
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR011
U 1 1 5B4432A8
P 5800 5600
F 0 "#PWR011" H 5800 5450 50  0001 C CNN
F 1 "VCC" H 5800 5750 50  0000 C CNN
F 2 "" H 5800 5600 50  0000 C CNN
F 3 "" H 5800 5600 50  0000 C CNN
	1    5800 5600
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR012
U 1 1 5B4432D8
P 5800 3600
F 0 "#PWR012" H 5800 3450 50  0001 C CNN
F 1 "VCC" H 5800 3750 50  0000 C CNN
F 2 "" H 5800 3600 50  0000 C CNN
F 3 "" H 5800 3600 50  0000 C CNN
	1    5800 3600
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR013
U 1 1 5B443308
P 3400 4900
F 0 "#PWR013" H 3400 4750 50  0001 C CNN
F 1 "VCC" H 3400 5050 50  0000 C CNN
F 2 "" H 3400 4900 50  0000 C CNN
F 3 "" H 3400 4900 50  0000 C CNN
	1    3400 4900
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR014
U 1 1 5B443338
P 3250 4200
F 0 "#PWR014" H 3250 4050 50  0001 C CNN
F 1 "VCC" H 3250 4350 50  0000 C CNN
F 2 "" H 3250 4200 50  0000 C CNN
F 3 "" H 3250 4200 50  0000 C CNN
	1    3250 4200
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR015
U 1 1 5B44556F
P 5800 4600
F 0 "#PWR015" H 5800 4450 50  0001 C CNN
F 1 "VCC" H 5800 4750 50  0000 C CNN
F 2 "" H 5800 4600 50  0000 C CNN
F 3 "" H 5800 4600 50  0000 C CNN
	1    5800 4600
	0    1    1    0   
$EndComp
$Comp
L keyboard_parts:SW_PUSH SW1
U 1 1 5B445BD5
P 2300 4900
F 0 "SW1" H 2450 5010 50  0000 C CNN
F 1 "SW_PUSH" H 2300 4820 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_PTS645" H 2300 4900 50  0001 C CNN
F 3 "" H 2300 4900 50  0000 C CNN
	1    2300 4900
	1    0    0    -1  
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:R R1
U 1 1 5B445C4F
P 2150 4700
F 0 "R1" V 2230 4700 50  0000 C CNN
F 1 "10k" V 2150 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 2080 4700 50  0001 C CNN
F 3 "" H 2150 4700 50  0000 C CNN
	1    2150 4700
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR016
U 1 1 5B445D96
P 1900 4700
F 0 "#PWR016" H 1900 4550 50  0001 C CNN
F 1 "VCC" H 1900 4850 50  0000 C CNN
F 2 "" H 1900 4700 50  0000 C CNN
F 3 "" H 1900 4700 50  0000 C CNN
	1    1900 4700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5B44642C
P 1900 4900
F 0 "#PWR017" H 1900 4650 50  0001 C CNN
F 1 "GND" H 1900 4750 50  0000 C CNN
F 2 "" H 1900 4900 50  0000 C CNN
F 3 "" H 1900 4900 50  0000 C CNN
	1    1900 4900
	0    1    1    0   
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:CONN_01X08 P2
U 1 1 5B446B90
P 9450 5100
F 0 "P2" H 9450 5550 50  0000 C CNN
F 1 "CONN_01X08" V 9550 5100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08" H 9450 5100 50  0001 C CNN
F 3 "" H 9450 5100 50  0000 C CNN
	1    9450 5100
	0    -1   -1   0   
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:CONN_01X08 P1
U 1 1 5B448849
P 8050 5100
F 0 "P1" H 8050 5550 50  0000 C CNN
F 1 "CONN_01X08" V 8150 5100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08" H 8050 5100 50  0001 C CNN
F 3 "" H 8050 5100 50  0000 C CNN
	1    8050 5100
	0    -1   -1   0   
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:LED LED7
U 1 1 5B44AECA
P 7800 2700
F 0 "LED7" H 7800 2800 50  0000 C CNN
F 1 "LED" H 7800 2600 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 7800 2700 50  0001 C CNN
F 3 "" H 7800 2700 50  0000 C CNN
	1    7800 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR018
U 1 1 5B44B888
P 7800 2000
F 0 "#PWR018" H 7800 1850 50  0001 C CNN
F 1 "VCC" H 7800 2150 50  0000 C CNN
F 2 "" H 7800 2000 50  0000 C CNN
F 3 "" H 7800 2000 50  0000 C CNN
	1    7800 2000
	1    0    0    -1  
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:R R11
U 1 1 5B44B8C2
P 7800 2250
F 0 "R11" V 7880 2250 50  0000 C CNN
F 1 "330" V 7800 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 7730 2250 50  0001 C CNN
F 3 "" H 7800 2250 50  0000 C CNN
	1    7800 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5350 2600 5350
Wire Wire Line
	2700 5200 2700 5350
Connection ~ 2700 5350
Wire Wire Line
	1900 5100 1900 5350
Wire Wire Line
	2000 5350 1900 5350
Connection ~ 1900 5350
Wire Wire Line
	1900 5800 1900 5900
Wire Wire Line
	2700 5900 2700 5800
Wire Wire Line
	2300 5900 2300 5550
Connection ~ 2300 5900
Wire Wire Line
	1900 5900 2300 5900
Wire Wire Line
	1900 5100 3500 5100
Wire Wire Line
	3500 5200 2700 5200
Wire Wire Line
	2200 2400 2200 2500
Wire Wire Line
	2200 2500 2500 2500
Wire Wire Line
	3400 2500 3400 2400
Wire Wire Line
	3100 2400 3100 2500
Connection ~ 3100 2500
Wire Wire Line
	2800 2400 2800 2500
Connection ~ 2800 2500
Wire Wire Line
	2500 2400 2500 2500
Connection ~ 2500 2500
Connection ~ 2200 2500
Wire Wire Line
	2200 1900 2200 2000
Wire Wire Line
	2200 2000 2500 2000
Wire Wire Line
	3400 2000 3400 2100
Wire Wire Line
	3100 2100 3100 2000
Connection ~ 3100 2000
Wire Wire Line
	2800 2100 2800 2000
Connection ~ 2800 2000
Wire Wire Line
	2500 2100 2500 2000
Connection ~ 2500 2000
Connection ~ 2200 2000
Wire Wire Line
	2400 3700 2500 3700
Wire Wire Line
	3500 3900 3300 3900
Wire Wire Line
	3000 3900 2400 3900
Wire Wire Line
	2400 3800 2700 3800
Wire Wire Line
	3000 3800 3500 3800
Wire Wire Line
	2400 4100 2550 4100
Wire Wire Line
	3500 4000 2550 4000
Wire Wire Line
	2550 4000 2550 4100
Connection ~ 2550 4100
Wire Wire Line
	3000 4100 3500 4100
Wire Wire Line
	2550 4200 2400 4200
Connection ~ 2550 4200
Wire Wire Line
	2500 3600 2500 3700
Connection ~ 2500 3700
Wire Wire Line
	5800 3600 5650 3600
Wire Wire Line
	5650 3700 6000 3700
Wire Wire Line
	3500 4900 3400 4900
Wire Wire Line
	3500 5000 3200 5000
Wire Wire Line
	3250 4200 3500 4200
Wire Wire Line
	6000 4700 5650 4700
Wire Wire Line
	6000 4500 5650 4500
Wire Wire Line
	6300 4700 6400 4700
Wire Wire Line
	5800 5600 5650 5600
Wire Wire Line
	5650 5700 6000 5700
Wire Wire Line
	5800 4600 5650 4600
Wire Wire Line
	2800 4800 3500 4800
Wire Wire Line
	2800 4700 2800 4800
Wire Wire Line
	2800 4700 2300 4700
Wire Wire Line
	2800 4900 2600 4900
Connection ~ 2800 4800
Wire Wire Line
	2000 4700 1900 4700
Wire Wire Line
	2000 4900 1900 4900
Wire Wire Line
	7800 2500 7800 2400
Wire Wire Line
	7800 2100 7800 2000
$Comp
L Typewriter-Keyboard-Controller-rescue:LED LED6
U 1 1 5B44DE92
P 8100 2700
F 0 "LED6" H 8100 2800 50  0000 C CNN
F 1 "LED" H 8100 2600 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 8100 2700 50  0001 C CNN
F 3 "" H 8100 2700 50  0000 C CNN
	1    8100 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR019
U 1 1 5B44DE98
P 8100 2000
F 0 "#PWR019" H 8100 1850 50  0001 C CNN
F 1 "VCC" H 8100 2150 50  0000 C CNN
F 2 "" H 8100 2000 50  0000 C CNN
F 3 "" H 8100 2000 50  0000 C CNN
	1    8100 2000
	1    0    0    -1  
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:R R10
U 1 1 5B44DE9E
P 8100 2250
F 0 "R10" V 8180 2250 50  0000 C CNN
F 1 "330" V 8100 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 8030 2250 50  0001 C CNN
F 3 "" H 8100 2250 50  0000 C CNN
	1    8100 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2500 8100 2400
Wire Wire Line
	8100 2100 8100 2000
$Comp
L Typewriter-Keyboard-Controller-rescue:LED LED5
U 1 1 5B44DF9E
P 8400 2700
F 0 "LED5" H 8400 2800 50  0000 C CNN
F 1 "LED" H 8400 2600 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 8400 2700 50  0001 C CNN
F 3 "" H 8400 2700 50  0000 C CNN
	1    8400 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR020
U 1 1 5B44DFA4
P 8400 2000
F 0 "#PWR020" H 8400 1850 50  0001 C CNN
F 1 "VCC" H 8400 2150 50  0000 C CNN
F 2 "" H 8400 2000 50  0000 C CNN
F 3 "" H 8400 2000 50  0000 C CNN
	1    8400 2000
	1    0    0    -1  
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:R R9
U 1 1 5B44DFAA
P 8400 2250
F 0 "R9" V 8480 2250 50  0000 C CNN
F 1 "330" V 8400 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 8330 2250 50  0001 C CNN
F 3 "" H 8400 2250 50  0000 C CNN
	1    8400 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2500 8400 2400
Wire Wire Line
	8400 2100 8400 2000
$Comp
L Typewriter-Keyboard-Controller-rescue:LED LED4
U 1 1 5B44DFB2
P 8700 2700
F 0 "LED4" H 8700 2800 50  0000 C CNN
F 1 "LED" H 8700 2600 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 8700 2700 50  0001 C CNN
F 3 "" H 8700 2700 50  0000 C CNN
	1    8700 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR021
U 1 1 5B44DFB8
P 8700 2000
F 0 "#PWR021" H 8700 1850 50  0001 C CNN
F 1 "VCC" H 8700 2150 50  0000 C CNN
F 2 "" H 8700 2000 50  0000 C CNN
F 3 "" H 8700 2000 50  0000 C CNN
	1    8700 2000
	1    0    0    -1  
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:R R8
U 1 1 5B44DFBE
P 8700 2250
F 0 "R8" V 8780 2250 50  0000 C CNN
F 1 "330" V 8700 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 8630 2250 50  0001 C CNN
F 3 "" H 8700 2250 50  0000 C CNN
	1    8700 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2500 8700 2400
Wire Wire Line
	8700 2100 8700 2000
$Comp
L Typewriter-Keyboard-Controller-rescue:LED LED3
U 1 1 5B44E2A2
P 9000 2700
F 0 "LED3" H 9000 2800 50  0000 C CNN
F 1 "LED" H 9000 2600 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 9000 2700 50  0001 C CNN
F 3 "" H 9000 2700 50  0000 C CNN
	1    9000 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR022
U 1 1 5B44E2A8
P 9000 2000
F 0 "#PWR022" H 9000 1850 50  0001 C CNN
F 1 "VCC" H 9000 2150 50  0000 C CNN
F 2 "" H 9000 2000 50  0000 C CNN
F 3 "" H 9000 2000 50  0000 C CNN
	1    9000 2000
	1    0    0    -1  
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:R R7
U 1 1 5B44E2AE
P 9000 2250
F 0 "R7" V 9080 2250 50  0000 C CNN
F 1 "330" V 9000 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 8930 2250 50  0001 C CNN
F 3 "" H 9000 2250 50  0000 C CNN
	1    9000 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 2500 9000 2400
Wire Wire Line
	9000 2100 9000 2000
$Comp
L Typewriter-Keyboard-Controller-rescue:LED LED2
U 1 1 5B44E2B6
P 9300 2700
F 0 "LED2" H 9300 2800 50  0000 C CNN
F 1 "LED" H 9300 2600 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 9300 2700 50  0001 C CNN
F 3 "" H 9300 2700 50  0000 C CNN
	1    9300 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR023
U 1 1 5B44E2BC
P 9300 2000
F 0 "#PWR023" H 9300 1850 50  0001 C CNN
F 1 "VCC" H 9300 2150 50  0000 C CNN
F 2 "" H 9300 2000 50  0000 C CNN
F 3 "" H 9300 2000 50  0000 C CNN
	1    9300 2000
	1    0    0    -1  
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:R R6
U 1 1 5B44E2C2
P 9300 2250
F 0 "R6" V 9380 2250 50  0000 C CNN
F 1 "330" V 9300 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 9230 2250 50  0001 C CNN
F 3 "" H 9300 2250 50  0000 C CNN
	1    9300 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 2500 9300 2400
Wire Wire Line
	9300 2100 9300 2000
$Comp
L Typewriter-Keyboard-Controller-rescue:LED LED1
U 1 1 5B44E2CA
P 9600 2700
F 0 "LED1" H 9600 2800 50  0000 C CNN
F 1 "LED" H 9600 2600 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 9600 2700 50  0001 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR024
U 1 1 5B44E2D0
P 9600 2000
F 0 "#PWR024" H 9600 1850 50  0001 C CNN
F 1 "VCC" H 9600 2150 50  0000 C CNN
F 2 "" H 9600 2000 50  0000 C CNN
F 3 "" H 9600 2000 50  0000 C CNN
	1    9600 2000
	1    0    0    -1  
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:R R5
U 1 1 5B44E2D6
P 9600 2250
F 0 "R5" V 9680 2250 50  0000 C CNN
F 1 "330" V 9600 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 9530 2250 50  0001 C CNN
F 3 "" H 9600 2250 50  0000 C CNN
	1    9600 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2500 9600 2400
Wire Wire Line
	9600 2100 9600 2000
$Comp
L Typewriter-Keyboard-Controller-rescue:LED LED9
U 1 1 5B44E2DE
P 10100 2700
F 0 "LED9" H 10100 2800 50  0000 C CNN
F 1 "LED" H 10100 2600 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 10100 2700 50  0001 C CNN
F 3 "" H 10100 2700 50  0000 C CNN
	1    10100 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR025
U 1 1 5B44E2E4
P 10100 2000
F 0 "#PWR025" H 10100 1850 50  0001 C CNN
F 1 "VCC" H 10100 2150 50  0000 C CNN
F 2 "" H 10100 2000 50  0000 C CNN
F 3 "" H 10100 2000 50  0000 C CNN
	1    10100 2000
	1    0    0    -1  
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:R R13
U 1 1 5B44E2EA
P 10100 2250
F 0 "R13" V 10180 2250 50  0000 C CNN
F 1 "330" V 10100 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 10030 2250 50  0001 C CNN
F 3 "" H 10100 2250 50  0000 C CNN
	1    10100 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 2500 10100 2400
Wire Wire Line
	10100 2100 10100 2000
$Comp
L Typewriter-Keyboard-Controller-rescue:LED LED8
U 1 1 5B44E350
P 7500 2700
F 0 "LED8" H 7500 2800 50  0000 C CNN
F 1 "LED" H 7500 2600 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 7500 2700 50  0001 C CNN
F 3 "" H 7500 2700 50  0000 C CNN
	1    7500 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR026
U 1 1 5B44E356
P 7500 2000
F 0 "#PWR026" H 7500 1850 50  0001 C CNN
F 1 "VCC" H 7500 2150 50  0000 C CNN
F 2 "" H 7500 2000 50  0000 C CNN
F 3 "" H 7500 2000 50  0000 C CNN
	1    7500 2000
	1    0    0    -1  
$EndComp
$Comp
L Typewriter-Keyboard-Controller-rescue:R R12
U 1 1 5B44E35C
P 7500 2250
F 0 "R12" V 7580 2250 50  0000 C CNN
F 1 "330" V 7500 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 7430 2250 50  0001 C CNN
F 3 "" H 7500 2250 50  0000 C CNN
	1    7500 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2500 7500 2400
Wire Wire Line
	7500 2100 7500 2000
Text Label 7600 5500 2    60   ~ 0
Col1
Text Label 7600 5600 2    60   ~ 0
Col2
Text Label 7600 5700 2    60   ~ 0
Col3
Text Label 7600 5800 2    60   ~ 0
Col4
Text Label 7600 5900 2    60   ~ 0
Col5
Text Label 7600 6000 2    60   ~ 0
Col6
Text Label 7600 6100 2    60   ~ 0
Col7
Text Label 7600 5400 2    60   ~ 0
Col0
Wire Wire Line
	7600 5400 7700 5400
Wire Wire Line
	7700 5400 7700 5300
Wire Wire Line
	7800 5300 7800 5500
Wire Wire Line
	7800 5500 7600 5500
Wire Wire Line
	7900 5300 7900 5600
Wire Wire Line
	7900 5600 7600 5600
Wire Wire Line
	8000 5300 8000 5700
Wire Wire Line
	8000 5700 7600 5700
Wire Wire Line
	8100 5300 8100 5800
Wire Wire Line
	8100 5800 7600 5800
Wire Wire Line
	8200 5300 8200 5900
Wire Wire Line
	8200 5900 7600 5900
Wire Wire Line
	8300 5300 8300 6000
Wire Wire Line
	8300 6000 7600 6000
Wire Wire Line
	8400 5300 8400 6100
Wire Wire Line
	8400 6100 7600 6100
Text Notes 7400 4900 0    60   ~ 0
Green membrane\nPin 1 left when facing front
Text Notes 8900 4900 0    60   ~ 0
Clear membrane\nPin 1 left when facing front
Wire Wire Line
	9000 5400 9100 5400
Wire Wire Line
	9100 5400 9100 5300
Wire Wire Line
	9200 5300 9200 5500
Wire Wire Line
	9200 5500 9000 5500
Wire Wire Line
	9300 5300 9300 5600
Wire Wire Line
	9300 5600 9000 5600
Wire Wire Line
	9400 5300 9400 5700
Wire Wire Line
	9400 5700 9000 5700
Wire Wire Line
	9500 5300 9500 5800
Wire Wire Line
	9500 5800 9000 5800
Wire Wire Line
	9600 5300 9600 5900
Wire Wire Line
	9600 5900 9000 5900
Wire Wire Line
	9700 5300 9700 6000
Wire Wire Line
	9700 6000 9000 6000
Wire Wire Line
	9800 5300 9800 6100
Wire Wire Line
	9800 6100 9000 6100
Text Label 9000 5400 2    60   ~ 0
Row0
Text Label 9000 5500 2    60   ~ 0
Row1
Text Label 9000 5600 2    60   ~ 0
Row2
Text Label 9000 5700 2    60   ~ 0
Row3
Text Label 9000 5800 2    60   ~ 0
Row4
Text Label 9000 5900 2    60   ~ 0
Row5
Text Label 9000 6000 2    60   ~ 0
Row6
Text Label 9000 6100 2    60   ~ 0
Row7
Text Label 3500 5300 2    60   ~ 0
Row0
Text Label 3500 5400 2    60   ~ 0
Row1
Text Label 3500 5500 2    60   ~ 0
Row2
Text Label 3500 5600 2    60   ~ 0
Row3
Text Label 5650 5500 0    60   ~ 0
Row4
Text Label 3500 5700 2    60   ~ 0
Row5
Text Label 5650 5400 0    60   ~ 0
Row6
Text Label 5650 5300 0    60   ~ 0
Row7
Text Label 3500 4400 2    60   ~ 0
Col1
Text Label 3500 4500 2    60   ~ 0
Col2
Text Label 3500 4600 2    60   ~ 0
Col3
Text Label 5650 5200 0    60   ~ 0
Col4
Text Label 5650 5100 0    60   ~ 0
Col5
Text Label 5650 5000 0    60   ~ 0
Col6
Text Label 3500 4700 2    60   ~ 0
Col7
Text Label 3500 4300 2    60   ~ 0
Col0
Text Notes 3700 2300 0    60   ~ 0
Decoupling Caps\nPlace across VCC and GND
Wire Wire Line
	7500 2900 7500 3000
Wire Wire Line
	7500 3000 7300 3000
Wire Wire Line
	7300 3100 7800 3100
Wire Wire Line
	7800 3100 7800 2900
Wire Wire Line
	7300 3200 8100 3200
Wire Wire Line
	8100 3200 8100 2900
Wire Wire Line
	7300 3300 8400 3300
Wire Wire Line
	8400 3300 8400 2900
Wire Wire Line
	7300 3400 8700 3400
Wire Wire Line
	8700 3400 8700 2900
Wire Wire Line
	7300 3500 9000 3500
Wire Wire Line
	9000 3500 9000 2900
Wire Wire Line
	7300 3600 9300 3600
Wire Wire Line
	9300 3600 9300 2900
Wire Wire Line
	7300 3700 9600 3700
Wire Wire Line
	9600 3700 9600 2900
Wire Wire Line
	7300 3800 10100 3800
Wire Wire Line
	10100 3800 10100 2900
Text Label 7300 3700 2    60   ~ 0
Pitch0
Text Label 7300 3600 2    60   ~ 0
Pitch1
Text Label 7300 3500 2    60   ~ 0
Pitch2
Text Label 7300 3400 2    60   ~ 0
Pitch3
Text Label 7300 3300 2    60   ~ 0
Pitch4
Text Label 7300 3200 2    60   ~ 0
Pitch5
Text Label 7300 3100 2    60   ~ 0
Pitch6
Text Label 7300 3000 2    60   ~ 0
Pitch7
Text Label 7300 3800 2    60   ~ 0
ShiftLock
Text Label 5650 3900 0    60   ~ 0
Pitch0
Text Label 5650 4000 0    60   ~ 0
Pitch1
Text Label 5650 4900 0    60   ~ 0
Pitch2
Text Label 5650 4800 0    60   ~ 0
Pitch3
Text Label 5650 4100 0    60   ~ 0
Pitch4
Text Label 5650 4200 0    60   ~ 0
Pitch5
Text Label 5650 4300 0    60   ~ 0
Pitch6
Text Label 5650 4400 0    60   ~ 0
Pitch7
Text Label 3500 3600 2    60   ~ 0
ShiftLock
NoConn ~ 5650 3800
NoConn ~ 2400 4000
Text Notes 7500 4050 0    60   ~ 0
Pitch LEDs are in a row on the left of the keyboard\nShift lock is in the usual place
Wire Wire Line
	2700 5350 2700 5500
Wire Wire Line
	1900 5350 1900 5500
Wire Wire Line
	2300 5900 2700 5900
Wire Wire Line
	3100 2500 3400 2500
Wire Wire Line
	2800 2500 3100 2500
Wire Wire Line
	2500 2500 2800 2500
Wire Wire Line
	2200 2500 2200 2600
Wire Wire Line
	3100 2000 3400 2000
Wire Wire Line
	2800 2000 3100 2000
Wire Wire Line
	2500 2000 2800 2000
Wire Wire Line
	2200 2000 2200 2100
Wire Wire Line
	2550 4100 2700 4100
Wire Wire Line
	2550 4100 2550 4200
Wire Wire Line
	2550 4200 2550 4300
Wire Wire Line
	2500 3700 3500 3700
Wire Wire Line
	2800 4800 2800 4900
$EndSCHEMATC
