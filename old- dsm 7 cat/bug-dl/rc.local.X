#!/bin/sh
if [ "$1" = "R" ]
#red led
then
i2cset -y -f 0 0x45 0x00 0x55
i2cset -y -f 0 0x45 0x01 0x01
i2cset -y -f 0 0x45 0x31 0x03
i2cset -y -f 0 0x45 0x32 0x03
i2cset -y -f 0 0x45 0x33 0x03
i2cset -y -f 0 0x45 0x30 0x07
i2cset -y -f 0 0x45 0x34 128
i2cset -y -f 0 0x45 0x35 0
i2cset -y -f 0 0x45 0x36 0
fi

if [ "$1" = "G" ]
then
# green led
i2cset -y -f 0 0x45 0x00 0x55
i2cset -y -f 0 0x45 0x01 0x01
i2cset -y -f 0 0x45 0x31 0x03
i2cset -y -f 0 0x45 0x32 0x03
i2cset -y -f 0 0x45 0x33 0x03
i2cset -y -f 0 0x45 0x30 0x07
i2cset -y -f 0 0x45 0x34 0
i2cset -y -f 0 0x45 0x35 128
i2cset -y -f 0 0x45 0x36 0
fi

if [ "$1" = "B" ]
then
# blue led
i2cset -y -f 0 0x45 0x00 0x55
i2cset -y -f 0 0x45 0x01 0x01
i2cset -y -f 0 0x45 0x31 0x03
i2cset -y -f 0 0x45 0x32 0x03
i2cset -y -f 0 0x45 0x33 0x03
i2cset -y -f 0 0x45 0x30 0x07
i2cset -y -f 0 0x45 0x34 0
i2cset -y -f 0 0x45 0x35 0
i2cset -y -f 0 0x45 0x36 128

fi

if [ "$1" = "W" ]
then
#yellow led
i2cset -y -f 0 0x45 0x00 0x55
i2cset -y -f 0 0x45 0x01 0x01
i2cset -y -f 0 0x45 0x31 0x03
i2cset -y -f 0 0x45 0x32 0x03
i2cset -y -f 0 0x45 0x33 0x03
i2cset -y -f 0 0x45 0x30 0x07
i2cset -y -f 0 0x45 0x34 128
i2cset -y -f 0 0x45 0x35 128
i2cset -y -f 0 0x45 0x36 128
fi

if [ "$1" = "" ]
then
# rainbow color led
i2cset -y -f 0 0x45 0x00 0x55
i2cset -y -f 0 0x45 0x01 0x01
i2cset -y -f 0 0x45 0x30 0x07
        
i2cset -y -f 0 0x45 0x31 0x72
i2cset -y -f 0 0x45 0x32 0x72
i2cset -y -f 0 0x45 0x33 0x72
        
i2cset -y -f 0 0x45 0x37 0x44  
i2cset -y -f 0 0x45 0x3a 0x55
i2cset -y -f 0 0x45 0x3d 0x66      

i2cset -y -f 0 0x45 0x38 0x44
i2cset -y -f 0 0x45 0x3b 0x55
i2cset -y -f 0 0x45 0x3e 0x66
i2cset -y -f 0 0x45 0x39 0x40
i2cset -y -f 0 0x45 0x3c 0x40
i2cset -y -f 0 0x45 0x3f 0x40

i2cset -y -f 0 0x45 0x34 128
i2cset -y -f 0 0x45 0x35 128
i2cset -y -f 0 0x45 0x36 128
fi

if [ "$1" = "X" ]
then
#no led
i2cset -y -f 0 0x45 0x00 0x55
fi

if [ "$1" = "K" ]
then
# poweroff
/usr/bin/systemctl --force poweroff
i2cset -y -f 0 0x45 0x00 0x55
i2cset -y -f 0 0x45 0x01 0x01
i2cset -y -f 0 0x45 0x31 0x33
i2cset -y -f 0 0x45 0x32 0x33
i2cset -y -f 0 0x45 0x33 0x33
i2cset -y -f 0 0x45 0x30 0x07
i2cset -y -f 0 0x45 0x34 128
i2cset -y -f 0 0x45 0x35 0
i2cset -y -f 0 0x45 0x36 0
fi