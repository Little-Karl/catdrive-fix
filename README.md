# catdrive hardwhare control

EVERY COMMAND BELOW MUST BE EXECUTED AS ROOT

EVERY COMMAND BELOW MUST BE EXECUTED AS ROOT

EVERY COMMAND BELOW MUST BE EXECUTED AS ROOT

# led ctl cmd structer
```sh
#init the led controler
i2cset -y -f 0 0x45 0x00 0x55   # turn off all led
i2cset -y -f 0 0x45 0x01 0x01   # reset the led controller
i2cset -y -f 0 0x45 0x30 0x07   # led on

# set max power fo reach led
i2cset -y -f 0 0x45 0x31 0x72   #R
i2cset -y -f 0 0x45 0x32 0x72   #G
i2cset -y -f 0 0x45 0x33 0x72   #B

# 0-255，the highter the brighter the led goes
i2cset -y -f 0 0x45 0x34 128    #R
i2cset -y -f 0 0x45 0x35 128    #G
i2cset -y -f 0 0x45 0x36 128    #B

#for rainbow color led
#control how long each led takes to go from 0 to 100
i2cset -y -f 0 0x45 0x37 0x44
i2cset -y -f 0 0x45 0x3a 0x55
i2cset -y -f 0 0x45 0x3d 0x66

#control the how long each led turn on and off
i2cset -y -f 0 0x45 0x38 0x44
i2cset -y -f 0 0x45 0x3b 0x55
i2cset -y -f 0 0x45 0x3e 0x66
i2cset -y -f 0 0x45 0x39 0x40
i2cset -y -f 0 0x45 0x3c 0x40
i2cset -y -f 0 0x45 0x3f 0x40
```
# WARNING

ALL COMMAND BELOW ONLY APPLY TO CATDRIVE RUNING DSM7

ALL COMMAND BELOW ONLY APPLY TO CATDRIVE RUNING DSM7

ALL COMMAND BELOW ONLY APPLY TO CATDRIVE RUNING DSM7

# big catdrive poweroff
```sh
/usr/bin/systemctl --force poweroff
i2cset -y -f 0 0x45 0x77 0xc6
sleep 1
reboot
```

# small catdrive poweroff
```sh
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
```
