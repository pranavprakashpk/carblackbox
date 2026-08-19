#ifndef MAIN_H
#define	MAIN_H

#include "CLCD.h"
#include "Matrix_KEYPAD.h"
#include "UART.h"
#include "RTC.h"
#include "POT.h"
#include "external_eeprom.h"


    
   unsigned int blinker = 0; 
unsigned int m, l;
unsigned char clock_reg[3];
unsigned char time[9];
unsigned int RPM,clear =0;
unsigned char EV[9][3] = {"ON", "GR", "GN", "G1", "G2", "G3", "G4", "C "};
unsigned char log_flag,d=0,menu=0,*menu_view[] = { "View Log     ","Download Log    ","Clear Log    ","Set Time       ","Change Password ","                "};
unsigned char pass[5]="1111",in_pass[4];
unsigned char store_data[11],log,logs[10][17];
unsigned long int delay = 0, delay3 = 0;
unsigned char key, key1, key2,key4;
unsigned int flag = 0, count = 0, flag1,value1=0,value2=1;
static unsigned int t_count1 = 0, t_count2 = 0;
int k = 0, equal = 0,equal1=0,event=0, once = 0;

#endif	/* MAIN_H */

