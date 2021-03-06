EESchema Schematic File Version 2  date 3/21/2013 9:31:14 PM
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
LIBS:avrcraft-cache
LIBS:csense-opamp
LIBS:poe-injector-cache
LIBS:rjcse538001
LIBS:irs2301s
LIBS:induction-heater-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "22 mar 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 3050 -200
Wire Wire Line
	1300 3450 2050 3450
Wire Wire Line
	1300 3450 1300 2400
Wire Wire Line
	1300 2400 1500 2400
Wire Wire Line
	2050 3450 2050 3700
Wire Wire Line
	1500 2250 1150 2250
Wire Wire Line
	2750 2400 2850 2400
Wire Wire Line
	2850 2400 2850 3100
Wire Wire Line
	2850 3100 3350 3100
Wire Wire Line
	2950 2250 2950 2450
Wire Wire Line
	2950 2250 2750 2250
Connection ~ 3050 3100
Connection ~ 3350 2800
Wire Wire Line
	3050 2800 5200 2800
Wire Wire Line
	3050 2800 3050 2850
Wire Wire Line
	2950 4000 2950 3400
Wire Wire Line
	3050 3400 3050 3500
Wire Wire Line
	3050 3500 5200 3500
Wire Wire Line
	5600 2700 5900 2700
Wire Wire Line
	5900 2700 5900 4000
Wire Wire Line
	5900 4000 2950 4000
Connection ~ 5200 3100
Wire Wire Line
	5200 2900 5200 3200
Connection ~ 4200 3100
Wire Wire Line
	4600 3200 4600 2900
Wire Wire Line
	4600 2900 4200 2900
Wire Wire Line
	4200 2900 4200 3200
Wire Wire Line
	1450 6400 1350 6400
Wire Wire Line
	1350 6400 1350 6100
Wire Wire Line
	1350 6100 1750 6100
Wire Wire Line
	1750 6100 1750 3700
Wire Wire Line
	2550 6400 1950 6400
Wire Wire Line
	1950 6400 1950 3700
Connection ~ 3350 3500
Wire Wire Line
	1850 3700 1850 6300
Wire Wire Line
	1850 6300 1450 6300
Wire Wire Line
	1450 6500 1450 6750
Wire Wire Line
	1450 6750 2750 6750
Wire Wire Line
	2750 6750 2750 3700
Wire Wire Line
	2750 3700 2550 3700
Wire Wire Line
	4200 3100 3950 3100
Wire Wire Line
	5200 2800 5200 2700
Wire Wire Line
	5200 3500 5200 3400
Wire Wire Line
	5600 3200 5750 3200
Wire Wire Line
	5750 3200 5750 2450
Wire Wire Line
	5750 2450 2950 2450
Connection ~ 4600 3100
Wire Wire Line
	2950 3850 3500 3850
Wire Wire Line
	3500 3850 3500 3200
Wire Wire Line
	3500 3200 3450 3200
Connection ~ 2950 3850
Wire Wire Line
	3450 2850 3450 2450
Connection ~ 3450 2450
Wire Wire Line
	3050 3050 3050 3200
Wire Wire Line
	2950 3400 2750 3400
Wire Wire Line
	2750 3400 2750 2550
Wire Wire Line
	3750 2800 3750 2100
Wire Wire Line
	3750 2100 2750 2100
Connection ~ 3750 2800
Wire Wire Line
	2450 3700 2450 2900
Wire Wire Line
	2450 2900 1150 2900
Wire Wire Line
	1150 2900 1150 2250
$Comp
L +5V #PWR01
U 1 1 512153F8
P 3200 5900
F 0 "#PWR01" H 3200 5990 20  0001 C CNN
F 1 "+5V" H 3200 5990 30  0000 C CNN
	1    3200 5900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 512153F3
P 3200 6300
F 0 "#PWR02" H 3200 6300 30  0001 C CNN
F 1 "GND" H 3200 6230 30  0001 C CNN
	1    3200 6300
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 512153EE
P 3200 6100
F 0 "C2" H 3250 6200 50  0000 L CNN
F 1 "10uF" H 3250 6000 50  0000 L CNN
	1    3200 6100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 511E47FB
P 1500 2100
F 0 "#PWR03" H 1500 2190 20  0001 C CNN
F 1 "+5V" H 1500 2190 30  0000 C CNN
	1    1500 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 511E47F5
P 1500 2550
F 0 "#PWR04" H 1500 2550 30  0001 C CNN
F 1 "GND" H 1500 2480 30  0001 C CNN
	1    1500 2550
	1    0    0    -1  
$EndComp
$Comp
L IRS2301S U1
U 1 1 511E47E8
P 2150 2300
F 0 "U1" H 2150 2100 60  0000 C CNN
F 1 "IRS2301S" H 2150 2250 60  0000 C CNN
	1    2150 2300
	1    0    0    -1  
$EndComp
$Comp
L IRF540 Q2
U 1 1 511BB100
P 3250 3300
F 0 "Q2" H 2800 3400 50  0000 L BNN
F 1 "IRF540" H 2800 3300 50  0000 L BNN
F 2 "transistor-fet-TO220" H 3250 3450 50  0001 C CNN
	1    3250 3300
	-1   0    0    1   
$EndComp
$Comp
L IRF540 Q3
U 1 1 511D8381
P 5400 2800
F 0 "Q3" H 4950 2900 50  0000 L BNN
F 1 "IRF540" H 4950 2800 50  0000 L BNN
F 2 "transistor-fet-TO220" H 5400 2950 50  0001 C CNN
	1    5400 2800
	-1   0    0    1   
$EndComp
$Comp
L IRF540 Q4
U 1 1 511D837A
P 5400 3300
F 0 "Q4" H 4950 3400 50  0000 L BNN
F 1 "IRF540" H 4950 3300 50  0000 L BNN
F 2 "transistor-fet-TO220" H 5400 3450 50  0001 C CNN
	1    5400 3300
	-1   0    0    1   
$EndComp
$Comp
L INDUCTOR L2
U 1 1 511D8370
P 4900 3100
F 0 "L2" V 4850 3100 40  0000 C CNN
F 1 "INDUCTOR" V 5000 3100 40  0000 C CNN
	1    4900 3100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR05
U 1 1 511BB33E
P 2550 6300
F 0 "#PWR05" H 2550 6390 20  0001 C CNN
F 1 "+5V" H 2550 6390 30  0000 C CNN
	1    2550 6300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 511BB339
P 2550 6500
F 0 "#PWR06" H 2550 6500 30  0001 C CNN
F 1 "GND" H 2550 6430 30  0001 C CNN
	1    2550 6500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 511BB336
P 2550 5800
F 0 "#PWR07" H 2550 5800 30  0001 C CNN
F 1 "GND" H 2550 5730 30  0001 C CNN
	1    2550 5800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR08
U 1 1 511BB330
P 1350 5800
F 0 "#PWR08" H 1350 5890 20  0001 C CNN
F 1 "+5V" H 1350 5890 30  0000 C CNN
	1    1350 5800
	-1   0    0    1   
$EndComp
$Comp
L AVRISP6 J1
U 1 1 511BB328
P 2000 6400
F 0 "J1" H 1800 6650 60  0000 C CNN
F 1 "AVRISP6" H 2150 6100 60  0000 C CNN
	1    2000 6400
	1    0    0    -1  
$EndComp
$Comp
L ATTINY44A-SS IC1
U 1 1 511BB316
P 1950 4750
F 0 "IC1" H 1200 5500 60  0000 C CNN
F 1 "ATTINY44A-SS" H 2450 4000 60  0000 C CNN
F 2 "SO14" H 1250 4000 60  0001 C CNN
	1    1950 4750
	0    -1   -1   0   
$EndComp
$Comp
L IRF540 Q1
U 1 1 511BB104
P 3250 2950
F 0 "Q1" H 2800 3050 50  0000 L BNN
F 1 "IRF540" H 2800 2950 50  0000 L BNN
F 2 "transistor-fet-TO220" H 3250 3100 50  0001 C CNN
	1    3250 2950
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 P4
U 1 1 511BB044
P 3350 3650
F 0 "P4" H 3430 3650 40  0000 L CNN
F 1 "CONN_1" H 3350 3705 30  0001 C CNN
	1    3350 3650
	0    1    1    0   
$EndComp
$Comp
L CONN_1 P3
U 1 1 511BB03F
P 3350 2650
F 0 "P3" H 3430 2650 40  0000 L CNN
F 1 "CONN_1" H 3350 2705 30  0001 C CNN
	1    3350 2650
	0    -1   -1   0   
$EndComp
$Comp
L INDUCTOR L1
U 1 1 511BAB9C
P 3650 3100
F 0 "L1" V 3600 3100 40  0000 C CNN
F 1 "100uH" V 3750 3100 40  0000 C CNN
	1    3650 3100
	0    -1   -1   0   
$EndComp
$Comp
L C C1
U 1 1 511BAB5F
P 4400 3200
F 0 "C1" H 4450 3300 50  0000 L CNN
F 1 "200nF" H 4450 3100 50  0000 L CNN
	1    4400 3200
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
