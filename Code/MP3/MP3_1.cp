#line 1 "C:/Users/Ayman/Desktop/MP3/MP3_1.c"
#line 1 "c:/users/ayman/desktop/mp3/spi.h"
char read_data();
void read_address(char address);
void write_address(char address);
void write_data(char data);
void linkup();
void linkdown();
#line 3 "C:/Users/Ayman/Desktop/MP3/MP3_1.c"
void main()
{
 write_data(0xaa);
}
