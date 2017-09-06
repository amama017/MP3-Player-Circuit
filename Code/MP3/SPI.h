char read_data();                    // Read the actual data over SPI
void read_address(char address);     // Issue a read command over SPI
void write_address(char address);    // Issue a write command over SPI
void write_data(char data);          // Write the actual data over SPI
void linkup();                       // Bring up the SPI interface
void linkdown();                     // Bring down the SPI interfac