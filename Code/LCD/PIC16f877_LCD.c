
/* www.lcdinterfacing.info */

#include<pic.h>
#include "delay.h"
#include "lcd.h"



void main()
{
TRISD=0X00;
PORTD=0;


lcd_init(); //LCD initialized
lcd_line1(0); //LCD address specified AT LINE 1
lcd_string("INTERFACING LCD"); //Displays message "LCD INTERFACING"
lcd_line2(0); //LCD address specified AT LINE 2
lcd_string("  PIC 16F877A");//Displays message "  PIC 16f877a"
while(1);
}

