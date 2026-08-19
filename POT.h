/* 
 * File:   POT.h
 * Author: Abhishek
 *
 * Created on 22 May, 2023, 11:10 AM
 */

#ifndef POT_H
#define	POT_H
#define CHANNEL4		0x04
void init_adc(void);
unsigned short read_adc(unsigned char channel);

#endif	/* POT_H */

