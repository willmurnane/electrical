
all : test.hex burn
PART=attiny44
PROGPART=t44

CFLAGS=-g -std=c99 -Wall -pedantic -Os -mmcu=$(PART) -DF_CPU=8000000UL
CC=avr-gcc

test.elf : test.o avr_print.o
	avr-gcc -I  -g -Wall -pedantic -Os    -mmcu=$(PART) -Wl,-Map,test.map -o $@ $^ -L/usr/lib/binutils/avr/2.18

test.hex : test.elf
	avr-objcopy -j .text -j .data -O ihex test.elf test.hex 

burn : test.hex
	avrdude -c usbtiny -p $(PROGPART) -U flash:w:test.hex
# if you get the part borked, type -B 1024 and it will go REALLY slow

#This make the part use an external crystal.
burnfuses :
	avrdude -c usbtiny -p $(PROGPART) -U lfuse:w:0xde:m -U hfuse:w:0xdf:m -U efuse:w:0xff:m 

readfuses :
	avrdude -c usbtiny -p $(PROGPART) -U hfuse:r:high.txt:b -U lfuse:r:low.txt:b

clean : 
	rm -f *~ high.txt low.txt test.hex test.map test.elf *.o
