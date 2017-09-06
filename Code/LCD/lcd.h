/*
 *	LCD interface header file
 *	See lcd.c for more info
 */

/* write a byte to the LCD in 4 bit mode */

extern void lcd_write(unsigned char);

/* Clear and home the LCD */

extern void lcd_clear(void);

/* write a string of characters to the LCD */

extern void lcd_string(const char * s);

/* Go to the specified position in line 1 */
extern void lcd_line1(unsigned char pos);

/* Go to the specified position in line 2 */
extern void lcd_line2(unsigned char pos);

/* Go to the specified position in line 3 */
extern void lcd_line3(unsigned char pos);

/* Go to the specified position in line 4 */
extern void lcd_line4(unsigned char pos);
	
/* intialize the LCD - call before anything else */

extern void lcd_init(void);

extern void lcd_character(char);

/*	Set the cursor position */

#define	lcd_cursor(x)	lcd_write(((x)&0x7F)|0x80)
