#ifndef EXTERNAL_EEPROM_H
#define	EXTERNAL_EEPROM_H
#define S_READ		0xA1
#define S_WRITE		0xA0

void write_ext_eeprom(unsigned char address1,  unsigned char data1);
unsigned char read_ext_eeprom(unsigned char address1);
void init_i2c1(void);
void i2c_start1(void);
void i2c_rep_start1(void);
void i2c_stop1(void);
void i2c_write1(unsigned char data);
unsigned char i2c_read1(void);
#endif	/* EXTERNAL_EEPROM_H */

