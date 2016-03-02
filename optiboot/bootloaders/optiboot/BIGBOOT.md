# BIGBOOT option for ATmega328p / Arduino Uno R3

* To enable EEPROM read/write capability on avrdude
* Set compile BIGBOOT option
* Set HFUSE to 0xDC
* Set text start point to 0x7c00
* Set EESAVE bit to 0 for preventing EEPROM erasure before flash update

