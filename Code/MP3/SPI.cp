#line 1 "C:/Users/Ayman/Desktop/MP3/SPI.c"
#line 1 "c:/users/ayman/desktop/mp3/spi.h"
char read_data();
void read_address(char address);
void write_address(char address);
void write_data(char data);
void linkup();
void linkdown();
#line 3 "C:/Users/Ayman/Desktop/MP3/SPI.c"
char read_data()
{
 delay_us(1000);
 return spi_read(0);
}

void write_data(char data)
{
 delay_us(1000);
 spi_write(data);
}

void linkup()
{
 delay_us(1000);
 output_low(SCSN);
}

void linkdown()
{
 delay_us(1000);
 output_high(SCSN);
}
