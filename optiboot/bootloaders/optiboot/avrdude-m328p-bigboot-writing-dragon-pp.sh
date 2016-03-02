#!/bin/sh
# this is an example of writing the optiboot image to atmega328
# for ATmega328p with AVR Dragon in HVPP (note *PP*) mode
# NOTE: the -P should be changed appropriately
# Check out the lock/efuse/hfuse/lfuse bits
# Note 2: must add -F flag as an workaround for the Device ID issue
# (removed from this script)
# Note 3: fuse bit set to 512-word/1024-byte boot section (BOOTSZ=10),
# EEPROM saved even after chip erase (EESAVE=0),
# Boot Reset vector enabled (BOOTRST=0)
avrdude -D -v -p m328p -c dragon_pp -P usb -e \
	-U efuse:w:0xfd:m -U hfuse:w:0xd4:m -U lfuse:w:0xff:m \
	-U flash:w:optiboot_atmega328.hex \
