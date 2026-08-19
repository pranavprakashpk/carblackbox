#include <xc.h>
#include "main.h"

void clcd_write(unsigned char byte, unsigned char control_bit)
{
	RC1 = control_bit;
	PORTD = byte;

	RC2 = 1;
	RC2 = 0;

	TRISD7 = 1;
	RC0 = 1;
	RC1 = INSTRUCTION_COMMAND;

	do
	{
		RC2 = 1;
		RC2 = 0;
	} while (RD7);

	RC0 = 0;
	TRISD7 = 0;
}

void init_clcd()
{
	/* Set PortD as output port for CLCD data */
	TRISD = 0x00;
	/* Set PortC as output port for CLCD control */
	TRISC = TRISC & 0xF8;

	RC0 = 0;

	clcd_write(0x38, INSTRUCTION_COMMAND);//TWO_LINE_5x8_MATRIX_8_BIT;
	clcd_write(0x0C, INSTRUCTION_COMMAND);//DISP_ON_AND_CURSOR_OFF;
	clcd_write(0x01, INSTRUCTION_COMMAND);//CLEAR_DISP_SCREEN;
}

void clcd_print(const unsigned char *data, unsigned char addr)
{
	clcd_write(addr, INSTRUCTION_COMMAND);
	while (*data != '\0')
	{
		clcd_write(*data++, DATA_COMMAND);
  	}
      
}

void clcd_putch(const unsigned char data, unsigned char addr)
{
	clcd_write(addr, INSTRUCTION_COMMAND);
	clcd_write(data, DATA_COMMAND);
}


