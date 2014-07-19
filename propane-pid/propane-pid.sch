EESchema Schematic File Version 2  date 7/19/2014 3:15:17 PM
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ad8495
LIBS:avrcraft-cache
LIBS:teensy31
LIBS:propane-pid-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "19 jul 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6200 3000 6200 3400
Wire Wire Line
	6200 3400 5400 3400
Wire Wire Line
	5400 3050 5400 2900
Wire Wire Line
	5400 2900 4800 2900
Wire Wire Line
	4800 2900 4800 2600
Connection ~ 5400 3400
Wire Wire Line
	5400 3350 5400 3500
Wire Wire Line
	5100 2600 5100 2800
Wire Wire Line
	5100 2800 4400 2800
Wire Wire Line
	4400 2800 4400 3050
$Comp
L +5V #PWR4
U 1 1 53CAC31D
P 6050 3000
F 0 "#PWR4" H 6050 3090 20  0001 C CNN
F 1 "+5V" H 6050 3090 30  0000 C CNN
	1    6050 3000
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR5
U 1 1 53CAC31A
P 6350 3000
F 0 "#PWR5" H 6350 3000 30  0001 C CNN
F 1 "GND" H 6350 2930 30  0001 C CNN
	1    6350 3000
	1    0    0    -1  
$EndComp
$Comp
L AIN P2
U 1 1 53CAC30D
P 6200 2450
F 0 "P2" H 6200 2450 60  0000 C CNN
F 1 "AIN" H 6200 2550 60  0000 C CNN
	1    6200 2450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR3
U 1 1 53CAC14D
P 5400 3200
F 0 "#PWR3" H 5400 3290 20  0001 C CNN
F 1 "+5V" H 5400 3290 30  0000 C CNN
	1    5400 3200
	1    0    0    -1  
$EndComp
$Comp
L TC-PLUG P1
U 1 1 53CABE94
P 4950 2100
F 0 "P1" H 4950 2000 60  0000 C CNN
F 1 "TC-PLUG" H 4950 2100 60  0000 C CNN
	1    4950 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 53C73AEA
P 4400 3200
F 0 "#PWR1" H 4400 3200 30  0001 C CNN
F 1 "GND" H 4400 3130 30  0001 C CNN
	1    4400 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 53C739EC
P 4400 3350
F 0 "#PWR2" H 4400 3350 30  0001 C CNN
F 1 "GND" H 4400 3280 30  0001 C CNN
	1    4400 3350
	1    0    0    -1  
$EndComp
$Comp
L AD8495 U1
U 1 1 53C73928
P 4900 3200
F 0 "U1" H 4900 3250 60  0000 C CNN
F 1 "AD8495" H 4900 3150 60  0000 C CNN
	1    4900 3200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
