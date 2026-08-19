/*
 * File:   main.c
 * Author: Abhishek pradeep
 * Black Box implementation in an Automotive System to log critical events. 
 * This will help in pro-active vehicle monitoring and maintenance.
 * Created on 21 May, 2023, 2:25 PM
 */


#include <xc.h>
#include "main.h"

/*
 This function call all the initialization functions
 */
void init_config(void) {
    init_matrix_keypad();
    init_clcd();
    init_i2c();
    init_adc();
    init_ds1307();
    init_uart();
}

/*--------------------------------
 FUNCTION SET A NEW TIME
 ---------------------------------*/

/*
 * This function will do the change the time 
 * If u press the switch 5 means it will increase the particular values 
 * If u press the switch 6 means it will change the field like hr to min to sec like that
 * If u press the switch 5 in long time it will set the time and that time it will write in RTC
 * First we store the change time in change time array and that time we converted in to BCD after that we write in rtc and it will go the dash board
 * If u press the switch 6 long press then it will not save the time and go to menu.
 */
void set_time(void) {
    unsigned char hour = 0, min = 0, sec = 0;
    unsigned static change;
    static long int delay;
    int blink = 0;
    unsigned char *change_time = time;
    unsigned static int val1 = 0, val2 = 0;
    unsigned char set_time_key = read_switches(LEVEL_CHANGE);
    clcd_print("ENTER NEW TIME", LINE1(0));
    clcd_print(time, LINE2(0));
    switch (change) {
        case 0:
            if (blink++ < 15000) {
                clcd_putch('_', LINE2(0));
                clcd_putch('_', LINE2(1));
            } else {
                clcd_putch(' ', LINE2(0));
                clcd_putch(' ', LINE2(1));
            }
            break;
        case 1:
            if (delay++ < 15000) {
                clcd_putch('_', LINE2(3));
                clcd_putch('_', LINE2(4));
            } else {
                clcd_putch(' ', LINE2(3));
                clcd_putch(' ', LINE2(4));
            }
            break;
        case 2:
            if (delay++ < 15000) {
                clcd_putch('_', LINE2(6));
                clcd_putch('_', LINE2(7));
            } else {
                clcd_putch(' ', LINE2(6));
                clcd_putch(' ', LINE2(7));
            }
            break;
    }
    if (set_time_key == MK_SW6) {
        val1++;
    }
    if (set_time_key == MK_SW5) {
        val2++;
    }
    if (val1 < 200 && val1 > 0 && set_time_key == ALL_RELEASED) {
        val1 = 0;

        change++;
        change = change % 3;
    } else if (val1 > 200 && set_time_key == ALL_RELEASED) {
        val1 = 0;
        flag = 2;
    }
    if (val2 < 200 && val2 > 0 && set_time_key == ALL_RELEASED) {
        val2 = 0;
        if (change == 0) {
            change_time[1]++;
            if (change_time[1] > '9') {
                change_time[1] = '0';
                change_time[0]++;
            }
            if (change_time[0] == '2' && change_time[1] == '4') {
                change_time[0] = '0';
                change_time[1] = '0';
            }

        } else if (change == 1) {
            change_time[4]++;
            if (change_time[4] > '9') {
                change_time[4] = '0';
                change_time[3]++;
            }
            if (change_time[3] == '6') {
                change_time[3] = '0';
                change_time[4] = '0';
            }

        } else if (change == 2) {
            change_time[7]++;
            if (change_time[7] > '9') {
                change_time[7] = '0';
                change_time[6]++;
            }
            if (change_time[6] == '6') {
                change_time[6] = '0';
                change_time[7] = '0';
            }
        }
    } else if (val2 > 200 && set_time_key == ALL_RELEASED) {
        if (val2 > 200) {
            val2 = 0;
            clcd_print("SET TIME SUCCESS", LINE1(0));
            clcd_print("                  ", LINE2(0));
            hour = (change_time[0] - '0') << 4;
            hour = (change_time[1] - '0') | hour;
            write_ds1307(HOUR_ADDR, hour);
            min = (change_time[3] - '0') << 4;
            min = (change_time[4] - '0') | min;
            write_ds1307(MIN_ADDR, min);
            sec = (change_time[6] - '0') << 4;
            sec = (change_time[7] - '0') | sec;
            write_ds1307(SEC_ADDR, sec);
            for (delay = 200000; delay--;);
            CLEAR_DISP_SCREEN;

            flag = 0;
        }
    }
}

/*---------------------------------------------------
 FUNCTION TO DONLOAD THE EVENTS TO CONNECTED DEVICE
 ----------------------------------------------------*/


/*
 * This function will do the download the logs in screen with the help of UART protocol
 * After completion of download logs it will go the view menu
 */
void download_log(void) {
    unsigned char arr[17] = {};
    if (clear == 0) {
        puts("DOWNLOADED LOGS\n\r");
        for (int i = 0; i < 10; i++) {
            arr[0] = read_ext_eeprom((i * 10) + 0);
            arr[1] = read_ext_eeprom((i * 10) + 1);
            arr[2] = ':';

            arr[3] = read_ext_eeprom((i * 10) + 2);
            arr[4] = read_ext_eeprom((i * 10) + 3);
            arr[5] = ':';
            arr[6] = read_ext_eeprom((i * 10) + 4);
            arr[7] = read_ext_eeprom((i * 10) + 5);
            arr[8] = ' ';
            arr[9] = ' ';

            arr[10] = read_ext_eeprom((i * 10) + 6);
            arr[11] = read_ext_eeprom((i * 10) + 7);
            arr[12] = ' ';
            arr[13] = read_ext_eeprom((i * 10) + 8);
            arr[14] = read_ext_eeprom((i * 10) + 9);
            puts("\n\r");
            puts(arr);
        }
        clcd_print("  DOWNLOADING  ", LINE1(0));
        for (static long int del = 200000; del--;);
        clcd_print("  DOWNLOADED  ", LINE2(0));
        for (static long int del = 800000; del--;);
        CLEAR_DISP_SCREEN;
        flag = 2;
    } else {
        clcd_print("LOGS_ARE_CLEARED", LINE1(0));
        for (static long int del = 800000; del--;);
        CLEAR_DISP_SCREEN;
        flag = 2;
    }
}

/*---------------------------------------
 FUNCTION TO VIEW ALL STORED EVENTS 
 ----------------------------------------*/
/*
 * This function will do the display the logs by pressing switches
 * First store the events in log array with the help of read_ext_eeprom function
 * If u press the switch 5 means it will display the logs in first to last
 * If u press the switch 6 means it will display the logs in last to first
 * If u press the switch 6 in long time  means it will go to menu
 */
void view_log(void) {
    static unsigned int view_select1, view_select2 = 0, view_key;
    view_key = read_switches(LEVEL_CHANGE);
    if (clear == 0) {
        logs[log][0] = read_ext_eeprom((log * 10) + 0);
        logs[log][1] = read_ext_eeprom((log * 10) + 1);
        logs[log][2] = ':';

        logs[log][3] = read_ext_eeprom((log * 10) + 2);
        logs[log][4] = read_ext_eeprom((log * 10) + 3);
        logs[log][5] = ':';

        logs[log][6] = read_ext_eeprom((log * 10) + 4);
        logs[log][7] = read_ext_eeprom((log * 10) + 5);

        logs[log][8] = ' ';
        logs[log][9] = read_ext_eeprom((log * 10) + 6);
        logs[log][10] = read_ext_eeprom((log * 10) + 7);
        logs[log][11] = ' ';

        logs[log][12] = read_ext_eeprom((log * 10) + 8);
        logs[log][13] = read_ext_eeprom((log * 10) + 9);

        clcd_print("Log           ", LINE1(0));
        clcd_putch(log + 48, LINE2(0));
        clcd_print(logs[log], LINE2(2));

    }
    if (clear == 1) {
        clcd_print("LOGS_ARE_CLEARED", LINE1(0));
        clcd_print("               ", LINE2(0));
        for (static long int del = 800000; del--;);
        CLEAR_DISP_SCREEN;
        flag = 2;
    }
    if (view_key == MK_SW5) {
        view_select1++;
    }
    if (view_key == MK_SW6) {
        view_select2++;
        if (view_select2 > 200) {
            flag = 2;
            view_select2 = 0;
        }
    }
    if (view_select1 < 200 && view_select1 > 0 && view_key == ALL_RELEASED) {

        view_select1 = 0;
        if (log < 9)
            log++;
    } else if (view_select1 > 200 && view_key == ALL_RELEASED) {
        view_select1 = 0;
    }
    if (view_select2 < 200 && view_select2 > 0 && view_key == ALL_RELEASED) {
        view_select2 = 0;
        if (log >= 1)
            log--;

    }
    if (view_select2 > 200 && view_key == ALL_RELEASED) {
        CLEAR_DISP_SCREEN;
        flag = 2;
        view_select2 = 0;

    }
}

/*----------------------------------------
 FUNCTION FOR TIME VIEWING
 -----------------------------------------*/

/*
 * This function get time in RTC
 * That we collected in clock_reg array
 * That time is in bcd format 
 * So we converted to character values and assign time array 
 */
int get_time(void) {
    clock_reg[0] = read_ds1307(HOUR_ADDR);
    clock_reg[1] = read_ds1307(MIN_ADDR);
    clock_reg[2] = read_ds1307(SEC_ADDR);

    if (clock_reg[0] & 0x40) {
        time[0] = '0' + ((clock_reg[0] >> 4) & 0x01);
        time[1] = '0' + (clock_reg[0] & 0x0F);
    } else {
        time[0] = '0' + ((clock_reg[0] >> 4) & 0x03);
        time[1] = '0' + (clock_reg[0] & 0x0F);
    }
    time[2] = ':';
    time[3] = '0' + ((clock_reg[1] >> 4) & 0x0F);
    time[4] = '0' + (clock_reg[1] & 0x0F);
    time[5] = ':';
    time[6] = '0' + ((clock_reg[2] >> 4) & 0x0F);
    time[7] = '0' + (clock_reg[2] & 0x0F);
    time[8] = '\0';
}

/*--------------------------------------------
 FUNCTION  TO STORE EACH OCCURING EVENTS
 ---------------------------------------------*/
/*
 * This function will stores event in array
 * When the event occurs that event stores in store_data array
 * Only stores in 10 events
 * And while calling it then it will write data into ext EEPROM.
 */
void store_event(void) {

    store_data[0] = time[0];
    store_data[1] = time[1];
    store_data[2] = time[3];
    store_data[3] = time[4];
    store_data[4] = time[6];
    store_data[5] = time[7];
    store_data[6] = EV[count][0];
    store_data[7] = EV[count][1];
    store_data[8] = (RPM / 10 + '0');
    store_data[9] = (RPM % 10 + '0');
    store_data[10] = '\0';
    for (int y = 0; y < 10; y++) {
        write_ext_eeprom((event * 10 + y), store_data[y]);
    }
    event++;

    if (event == 10) {
        event = 0;
    }
}

/*------------------------------------------
 FUNCTION FOR THE DASHBOARD
 -------------------------------------------*/
/*
 In this dashboard function display the time in clcd using RTC and RPM using ADC potentiometer and set the gear values using matrix keypad
 */
int dashboard(void) {
    clcd_print("TIME     EV  RPM", LINE1(0));
    get_time();
    clcd_print(time, LINE2(0));
    clcd_print(EV[count], LINE2(10));
    key = read_switches(STATE_CHANGE);
    {
        if (key == MK_SW1) {
            if (count >= 0 && count < 6) {
                count++;
                store_event();
            }
        } else if (key == MK_SW2) {
            if (count > 1) {
                count--;
                store_event();
            }
        }

        if (key == MK_SW3) {
            count = 7;
            store_event();
        }
        RPM = ((read_adc(CHANNEL4)) / 10.3);
        clcd_putch(RPM / 10 + '0', LINE2(14));
        clcd_putch(RPM % 10 + '0', LINE2(15));
        if (key == MK_SW5) {
            CLEAR_DISP_SCREEN;
            flag = 1;
        }
    }

}

/*----------------------------------------------
 FUNCTION FOR CHANGING THE OLD PASSWORD
 -----------------------------------------------*/

/*
 This function to change the password
 If password success then go to dashboard
 If password change fails then go to menu 
 */
void change_password(void) {
    unsigned char new_password[5], key3;
    unsigned char re_enter[5], h;
    static unsigned char index1 = 0, index2 = 0;
    static long int delay;

    key3 = read_switches(STATE_CHANGE);
    if (index1 < 4) {
        clcd_print("ENTER PASSWORD", LINE1(0));
        if (key3 == MK_SW5) {
            new_password[index1] = '1';
            clcd_putch('*', LINE2(index1));
            index1++;
        } else if (key3 == MK_SW6) {
            new_password[index1] = '0';
            clcd_putch('*', LINE2(index1));
            index1++;
        }
        if (index1 == 4) {
            for (delay = 100000; delay--;);
            CLEAR_DISP_SCREEN;
        }
    } else if (index1 == 4) {
        new_password[index1] = '\0';
        clcd_print("REENTER PASSWORD", LINE1(0));
        if (index2 < 4) {
            if (key3 == MK_SW5) {
                re_enter[index2] = '1';
                clcd_putch('*', LINE2(index2));
                index2++;
            } else if (key3 == MK_SW6) {
                re_enter[index2] = '0';
                clcd_putch('*', LINE2(index2));
                index2++;
            }
            if (index2 == 4) {
                for (delay = 100000; delay--;);
                CLEAR_DISP_SCREEN;
            }
        } else if (index2 == 4) {
            re_enter[index2] = '\0';
            if (!(strcmp(new_password, re_enter))) {

                clcd_print("SET PASSWORD    ", LINE1(0));
                clcd_print("SUCCESSFUL    ", LINE2(0));
                for (h = 0; h < 4; h++) {
                    write_ext_eeprom(200 + h, new_password[h]);
                }
                for (l = 0; l < 4; l++) {
                    pass[l] = read_ext_eeprom(200 + l);
                }
                pass[4] = '\0';
                for (delay = 800000; delay--;);
                CLEAR_DISP_SCREEN;
                flag = 0;
            } else {
                clcd_print("SET PASSWORD", LINE1(0));
                clcd_print("FAILURE", LINE2(0));
                index1 = 0;
                index2 = 0;
                for (delay = 800000; delay--;);
                CLEAR_DISP_SCREEN;
                flag = 2;
            }

        }
    }
    menu = 0;

}

/*--------------------------------------
 FUNCTION FOR PASSWORD 
 ---------------------------------------*/
/*
 * This function will do the read password 
 * If the password matches go to the view menu
 * If the password is not matches means it will give three chance
 */
int password(void) {
    unsigned int i = 0, T = 3;
    int blink = 0;
    while (T != 0) {
        clcd_print("ENTER PASSWORD", LINE1(0));
        key = read_switches(STATE_CHANGE);

        if (blink++ < 15000) {
            clcd_putch('_', LINE2(i));
        } else {
            clcd_putch(' ', LINE2(i));
        }
        if (key == MK_SW5) {
            in_pass[i] = '1';
            clcd_putch('*', LINE2(i));
            i++;
        } else if (key == MK_SW6) {
            in_pass[i] = '0';
            clcd_putch('*', LINE2(i));
            i++;
        }

        if (i == 4) {
            in_pass[i] = '\0';
            for (l = 0; l < 4; l++) {
                pass[l] = read_ext_eeprom(200 + l);
            }
            for (int x = 0; x < 4; x++) {
                if (in_pass[x] == pass[x]) {
                    equal++;
                } else {
                    equal = 0;
                }
            }
            if (equal >= 4) {
                clcd_print("SUCCESSFUL", LINE2(0));
                for (unsigned long int delay2 = 1000000; delay2--;);
                CLEAR_DISP_SCREEN;
                flag = 2;
                break;

            } else {
                i = 0;
                if (--T == 0) {
                    flag = 10;
                    break;
                }
                clcd_putch(('0' + T), LINE2(0));

                clcd_print(" Attempt left ", LINE2(1));

                for (unsigned long int delay2 = 1000000; delay2 > 0; delay2--);

                clcd_print("                ", LINE2(0));
            }

        }

    }
    if (flag == 10) {
        CLEAR_DISP_SCREEN;
        clcd_print("You are Blocked     ", LINE1(0));
        for (int z = 120; z >= 0; z--) {
            clcd_putch(((z % 10) + '0'), LINE2(10));
            clcd_putch((((z / 10) % 10) + '0'), LINE2(9));
            clcd_putch((((z / 100) % 10) + '0'), LINE2(8));
            clcd_print("wait...", LINE2(0));
            for (unsigned long int de = 0; de < 200000; de++);
            clcd_print("            ", LINE2(0));
            T = 3;
        }
    }

}

/*----------------------------------------------
 FUNCTION TO DISPLAY MENU AND CHOOSEING EACH ONE
 ------------------------------------------------*/

void display_menu() {

    clcd_putch('*', LINE1(0));
    clcd_putch(' ', LINE2(0));
    clcd_print(menu_view[menu], LINE1(1));
    clcd_print(menu_view[menu + 1], LINE2(1));

    unsigned char key2 = read_switches(LEVEL_CHANGE);
    if (key2 == MK_SW5) {
        t_count1++;
    }
    if (key2 == MK_SW6) {
        t_count2++;
    }
    if (t_count1 < 200 && t_count1 > 0 && key2 == ALL_RELEASED) {

        t_count1 = 0;
        if (menu < 4)
            menu++;
    } else if (t_count1 > 200 && key2 == ALL_RELEASED) {
        flag = 3;
        t_count1 = 0;
        CLEAR_DISP_SCREEN;
        log_flag = menu;
    }
    if (t_count2 < 200 && t_count2 > 0 && key2 == ALL_RELEASED) {
        t_count2 = 0;
        if (menu >= 1)
            menu--;
    } else if (t_count2 > 200 && key2 == ALL_RELEASED) {
        t_count2 = 0;
        flag = 0;
        CLEAR_DISP_SCREEN;
    }
}

/*----------------------------------
 FUNCTION TO CLEAR THE LOGS
 -----------------------------------*/
void clear_log(void) {
    store_data[0];
    clear = 1;
    clcd_print("CLEARING LOGS", LINE1(0));
    clcd_print("SUCCESSFUL", LINE2(0));
    menu = 0;
    for (static long int de = 8000000; de--;);
    CLEAR_DISP_SCREEN;
    flag = 2;
}

/*-----------------------------------
         SETTINGS TO CHOOSE EACH LOGS 
 ------------------------------------*/
void setting_log(void) {
    switch (log_flag) {
        case 0:
        {
            view_log();
            break;
        }
        case 1:
        {
            download_log();
            break;
        }
        case 2:
        {
            clear_log();
            break;
        }
        case 3:
        {
            set_time();
            break;
        }
        case 4:
        {
            change_password();
            break;
        }
    }
}

/*----------------------------------
                  MAIN
 -----------------------------------*/
void main(void) {
    init_config();
    while (1) {
        if (flag == 0) {
            dashboard();
        } else if (flag == 1) {
            password();
        } else if (flag == 2) {
            display_menu();
        } else if (flag == 3) {
            setting_log();
        }
    }
}
