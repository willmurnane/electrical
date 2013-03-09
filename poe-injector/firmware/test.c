#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <util/delay.h>
#include <stdio.h>
#include "avr_print.h"

void delay_ms(uint32_t time) {
  uint32_t i;
  for (i = 0; i < time; i++) {
    _delay_ms(1);
  }
}

#define NOOP asm volatile("nop" ::)

static void setup_clock( void )
{
	/*Examine Page 33*/

	CLKPR = 0x80;	/*Setup CLKPCE to be receptive*/
	CLKPR = 0x00;	/*No scalar*/
}

// ADC2
#define INPUT_RVAL1_BM (1 << 2)
// ADC0
#define INPUT_RVAL2_BM (1 << 0)
// ADC1
#define INPUT_POW2_BM (1 << 1)
// ADC3
#define INPUT_POW1_BM (1 << 3)

int main( void )
{
	cli();
	DDRA = 0x00;  // 0000 1111
	PORTA = 0x00; // 0000 1010

	setup_clock();
	setup_spi( );
// 	ADCSRB = (1 << 4);
	uint8_t ports[] = { 0, 1, 2, 3, 7 };
	uint8_t port = 0;
	uint8_t count = 0;
	
	DIDR0 = 0x8F; // Disable digital input circuits on 0,1,2,3,7
	DDRB |= 0x06;
	
	uint16_t result;
	uint16_t total;
	sei();
	while(1)
	{
		total = 0;
		ADCSRA &= ~(1 << ADEN);
		ADMUX = (1 << 7) | ports[port];
		ADCSRA |= (1 << ADEN);
		for (int i = 0; i < 10; i++)
		{
		ADCSRA |= 1 << ADSC;
		while (!(ADCSRA & (1 << ADIF)));
		result = ADCL;
		result |= ADCH << 8;
		total += result;
		}
		printf("%05u ", total);
		port++;
		if (port == sizeof(ports) / sizeof(uint8_t))
		{
			port = 0;
			printf("%d\n", count);
		}
		if (count > 128)
		{
			PORTB |= 0x06;
		} else {
			PORTB &= ~(0x06);
		}
		count++;
	}

	return 0;
} 
