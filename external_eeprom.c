/*
 * File:   external_eeprom.c
 * Author: Abhishek Pradeep
 *
 * Created on 21 May, 2023, 2:25 PM
 */
#include <xc.h>
#include "external_eeprom.h"

/* 
 * DS1307 Slave address
 * D0  -  Write Mode
 * D1  -  Read Mode
 */



void init_i2c1(void)
{
	/* Set SCL and SDA pins as inputs */
	TRISC3 = 1;
	TRISC4 = 1;
	/* Set I2C master mode */
	SSPCON1 = 0x28;

	SSPADD = 0x31;
	/* Use I2C levels, worked also with '0' */
	CKE = 0;
	/* Disable slew rate control  worked also with '0' */
	SMP = 1;
	/* Clear SSPIF interrupt flag */
	SSPIF = 0;
	/* Clear bus collision flag */
	BCLIF = 0;
}

void i2c_idle1(void)
{
	while (!SSPIF);
	SSPIF = 0;
}

void i2c_ack1(void)
{
	if (ACKSTAT)
	{
		/* Do debug print here if required */
	}
}

void i2c_start1(void)
{
	SEN = 1;
	i2c_idle1();
}

void i2c_stop1(void)
{
	PEN = 1;
	i2c_idle1();
}

void i2c_rep_start1(void)
{
	RSEN = 1;
	i2c_idle1();
}

void i2c_write1(unsigned char data1)
{
	SSPBUF = data1;
	i2c_idle1();
}

void i2c_rx_mode1(void)
{
	RCEN = 1;
	i2c_idle1();
}

//void i2c_no_ack(void)
//{
//	ACKDT = 1;
//	ACKEN = 1;
//}

unsigned char i2c_read1(void)
{
	i2c_rx_mode1();
	//i2c_no_ack();

	return SSPBUF;
}


void write_ext_eeprom(unsigned char address1, unsigned char data1)
{
	i2c_start1();
	i2c_write1(S_WRITE);
	i2c_write1(address1);
	i2c_write1(data1);
	i2c_stop1();
    for(int i=3000;i--;);
}

unsigned char read_ext_eeprom(unsigned char address1)
{
	unsigned char data1;

	i2c_start1();
	i2c_write1(S_WRITE);
	i2c_write1(address1);
	i2c_rep_start1();
	i2c_write1(S_READ);
	data1 = i2c_read1();
	i2c_stop1();

	return data1;
}

