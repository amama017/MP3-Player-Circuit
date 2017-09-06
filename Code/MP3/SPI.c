#include "SPI.h"

char read_data()
{
      delay_us(1000);         // Must delay!
      return spi_read(0);         // Return read value
}

void write_data(char data)
{
     delay_us(1000);          // Must delay!
     spi_write(data);             // Write the data
}

void linkup()
{
      delay_us(1000);         // Must delay!
      output_low(SCSN);           // Open up the SPI link
}

void linkdown()
{
      delay_us(1000);         // Must delay!
      output_high(SCSN);          // Open up the SPI link
}