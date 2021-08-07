#!/bin/sh
if [ "$1" = "" ]
then
echo -e "\e[1;33m 买猫盘就选：咪叽数码淘宝店，独家120j引导绝不掉IP  \e[0m"
echo -e "\e[1;31m =================== IMNKS.COM =================== \e[0m"
echo -e "\e[1;31m |                                               | \e[0m"
echo -e "\e[1;31m |           DSM7.0三合一修复Enjoy  it !         | \e[0m"
echo -e "\e[1;31m |                                               | \e[0m"
echo -e "\e[1;31m =============== MIJICN.TAOBAO.COM =============== \e[0m"
echo -e "\e[1;33m           bash bug.sh 120X/120D/120bak            \e[0m"
fi

if [ "$1" = "120X" ]
then
echo -e "\e[1;33m 买猫盘就选：咪叽数码淘宝店，独家120j引导绝不掉IP  \e[0m"
echo -e "\e[1;31m =================== IMNKS.COM =================== \e[0m"
echo -e "\e[1;31m |                                               | \e[0m"
echo -e "\e[1;31m |           DSM7.0三合一修复Enjoy  it !         | \e[0m"
echo -e "\e[1;31m |                                               | \e[0m"
echo -e "\e[1;31m =============== MIJICN.TAOBAO.COM =============== \e[0m"
sleep 1
ping -W 1 -c 1 110.imnks.com > /dev/null 2>&1
if [ $? -eq 0 ];then
curl -SLO https://imnks.com/mp2020/dsm7.0/7.tar.gz
tar -xzvf 7.tar.gz  > /dev/null 2>&1
chmod 755 /root/rc.local.X
mv -f /root/scemd.conf /etc.defaults/syslog-ng/patterndb.d/
mv -f /root/systemd-poweroff.service /usr/lib/systemd/system/
mv -f /root/scemd.xml.bak /usr/syno/etc.defaults/scemd.xml
mv -f /root/postgresql.conf.bak /etc.defaults/syslog-ng/patterndb.d/postgresql.conf
mv -f /root/rc.local.X /etc/rc.local
mv -f /root/hosts /etc/
rm -f /root/7.tar.gz
rm -rf /var/log/*
rm -f /root/rc.local.D
sed -i 's/buzzeroffcfg="0x00"/buzzeroffcfg="0x1b"/g' /etc.defaults/synoinfo.conf
sed -i 's/enable_fan_debug="0x0"/enable_fan_debug="no"/g' /etc.defaults/synoinfo.conf
sed -i 's/support_auto_poweron="yes"/support_auto_poweron="no"/g' /etc.defaults/synoinfo.conf
sed -i 's/support_buzzer="yes"/support_buzzer="no"/g' /etc.defaults/synoinfo.conf
sed -i 's/support_fan="yes"/support_fan="no"/g' /etc.defaults/synoinfo.conf
sed -i 's/support_fan_adjust_dual_mode="yes"/support_fan_adjust_dual_mode="no"/g' /etc.defaults/synoinfo.conf
sed -i 's/support_led_behavior_v2="yes"/support_led_behavior_v2="no"/g' /etc.defaults/synoinfo.conf
sed -i 's/support_power_recovery="yes"/support_power_recovery="no"/g' /etc.defaults/synoinfo.conf
sed -i 's/support_wol="yes"/support_wol="no"/g' /etc.defaults/synoinfo.conf
sed -i 's/supportrcpower="yes"/supportrcpower="no"/g' /etc.defaults/synoinfo.conf
sed -i 's/supportsystemperature="yes"/supportsystemperature="no"/g' /etc.defaults/synoinfo.conf
sed -i 's/supportsystempwarning="yes"/supportsystempwarning="no"/g' /etc.defaults/synoinfo.conf
echo -e "\e[1;33m 成功啦！成功啦！成功啦！立即重启猫盘，Enjoy  it!  \e[0m"
rm -f /root/bug.sh
	i2cset -y -f 0 0x45 0x00 0x55
	i2cset -y -f 0 0x45 0x01 0x01
	i2cset -y -f 0 0x45 0x31 0x33
	i2cset -y -f 0 0x45 0x32 0x33
	i2cset -y -f 0 0x45 0x33 0x33
	i2cset -y -f 0 0x45 0x30 0x07
	i2cset -y -f 0 0x45 0x34 0
	i2cset -y -f 0 0x45 0x35 128
	i2cset -y -f 0 0x45 0x36 0
else
echo -e "\e[1;31m  失败了o(╥﹏╥)o 查看最新教程：imnks.com/2683.html    \e[0m"
rm -f /root/bug.sh
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
fi


if [ "$1" = "120D" ]
then
echo -e "\e[1;33m 买猫盘就选：咪叽数码淘宝店，独家120j引导绝不掉IP  \e[0m"
echo -e "\e[1;31m =================== IMNKS.COM =================== \e[0m"
echo -e "\e[1;31m |                                               | \e[0m"
echo -e "\e[1;31m |           DSM7.0三合一修复Enjoy  it !         | \e[0m"
echo -e "\e[1;31m |                                               | \e[0m"
echo -e "\e[1;31m =============== MIJICN.TAOBAO.COM =============== \e[0m"
sleep 1
ping -W 1 -c 1 110.imnks.com > /dev/null 2>&1
if [ $? -eq 0 ];then
curl -SLO https://imnks.com/mp2020/dsm7.0/7.tar.gz
tar -xzvf 7.tar.gz  > /dev/null 2>&1
chmod 755 /root/rc.local.D
#mv -f /root/scemd.xml /usr/syno/etc.defaults/
mv -f /root/scemd.conf /etc.defaults/syslog-ng/patterndb.d/
mv -f /root/systemd-poweroff.service /usr/lib/systemd/system/
mv -f /root/scemd.xml.bak /usr/syno/etc.defaults/scemd.xml
mv -f /root/postgresql.conf.bak /etc.defaults/syslog-ng/patterndb.d/postgresql.conf
mv -f /root/rc.local.D /etc/rc.local
mv -f /root/hosts /etc/
rm -f /root/7.tar.gz
rm -rf /var/log/*
rm -f /root/rc.local.X
sed -i 's/buzzeroffcfg="0x00"/buzzeroffcfg="0x1b"/g' /etc.defaults/synoinfo.conf
sed -i 's/enable_fan_debug="0x0"/enable_fan_debug="no"/g' /etc.defaults/synoinfo.conf
sed -i 's/support_auto_poweron="yes"/support_auto_poweron="no"/g' /etc.defaults/synoinfo.conf
sed -i 's/support_buzzer="yes"/support_buzzer="no"/g' /etc.defaults/synoinfo.conf
sed -i 's/support_fan="yes"/support_fan="no"/g' /etc.defaults/synoinfo.conf
sed -i 's/support_fan_adjust_dual_mode="yes"/support_fan_adjust_dual_mode="no"/g' /etc.defaults/synoinfo.conf
sed -i 's/support_led_behavior_v2="yes"/support_led_behavior_v2="no"/g' /etc.defaults/synoinfo.conf
sed -i 's/support_power_recovery="yes"/support_power_recovery="no"/g' /etc.defaults/synoinfo.conf
sed -i 's/support_wol="yes"/support_wol="no"/g' /etc.defaults/synoinfo.conf
sed -i 's/supportrcpower="yes"/supportrcpower="no"/g' /etc.defaults/synoinfo.conf
sed -i 's/supportsystemperature="yes"/supportsystemperature="no"/g' /etc.defaults/synoinfo.conf
sed -i 's/supportsystempwarning="yes"/supportsystempwarning="no"/g' /etc.defaults/synoinfo.conf
echo -e "\e[1;33m 成功啦！成功啦！成功啦！立即重启猫盘，Enjoy  it!  \e[0m"
rm -f /root/bug.sh
	i2cset -y -f 0 0x45 0x00 0x55
	i2cset -y -f 0 0x45 0x01 0x01
	i2cset -y -f 0 0x45 0x31 0x33
	i2cset -y -f 0 0x45 0x32 0x33
	i2cset -y -f 0 0x45 0x33 0x33
	i2cset -y -f 0 0x45 0x30 0x07
	i2cset -y -f 0 0x45 0x34 0
	i2cset -y -f 0 0x45 0x35 128
	i2cset -y -f 0 0x45 0x36 0
else
echo -e "\e[1;31m  失败了o(╥﹏╥)o 查看最新教程：imnks.com/2683.html    \e[0m"
rm -f /root/bug.sh
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
fi

if [ "$1" = "120bak" ]
then
echo -e "\e[1;33m 买猫盘就选：咪叽数码淘宝店，独家120j引导绝不掉IP  \e[0m"
echo -e "\e[1;31m =================== IMNKS.COM =================== \e[0m"
echo -e "\e[1;31m |                                               | \e[0m"
echo -e "\e[1;31m |           DSM7.0三合一修复Enjoy  it !         | \e[0m"
echo -e "\e[1;31m |                                               | \e[0m"
echo -e "\e[1;31m =============== MIJICN.TAOBAO.COM =============== \e[0m"
sleep 1
ping -W 1 -c 1 110.imnks.com > /dev/null 2>&1
if [ $? -eq 0 ];then
curl -SLO https://imnks.com/mp2020/dsm7.0/7bak.tar.gz
tar -xzvf 7bak.tar.gz  > /dev/null 2>&1
rm -f /etc/rc.local
mv -f /root/hosts.bak /etc/hosts
mv -f /root/scemd.xml.bak /usr/syno/etc.defaults/scemd.xml
mv -f /root/scemd.conf.bak /etc.defaults/syslog-ng/patterndb.d/scemd.conf
mv -f /root/postgresql.conf.bak /etc.defaults/syslog-ng/patterndb.d/postgresql.conf
mv -f /root/systemd-poweroff.service.bak /usr/lib/systemd/system/systemd-poweroff.service
rm -f /root/7bak.tar.gz
rm -rf /var/log/*
sed -i 's/buzzeroffcfg="0x1b"/buzzeroffcfg="0x00"/g' /etc.defaults/synoinfo.conf
sed -i 's/enable_fan_debug="no"/enable_fan_debug="0x0"/g' /etc.defaults/synoinfo.conf
sed -i 's/support_auto_poweron="no"/support_auto_poweron="yes"/g' /etc.defaults/synoinfo.conf
sed -i 's/support_buzzer="no"/support_buzzer="yes"/g' /etc.defaults/synoinfo.conf
sed -i 's/support_fan="no"/support_fan="yes"/g' /etc.defaults/synoinfo.conf
sed -i 's/support_fan_adjust_dual_mode="no"/support_fan_adjust_dual_mode="yes"/g' /etc.defaults/synoinfo.conf
sed -i 's/support_led_behavior_v2="no"/support_led_behavior_v2="yes"/g' /etc.defaults/synoinfo.conf
sed -i 's/support_power_recovery="no"/support_power_recovery="yes"/g' /etc.defaults/synoinfo.conf
sed -i 's/support_wol="no"/support_wol="yes"/g' /etc.defaults/synoinfo.conf
sed -i 's/supportrcpower="no"/supportrcpower="yes"/g' /etc.defaults/synoinfo.conf
sed -i 's/supportsystemperature="no"/supportsystemperature="yes"/g' /etc.defaults/synoinfo.conf
sed -i 's/supportsystempwarning="no"/supportsystempwarning="yes"/g' /etc.defaults/synoinfo.conf
echo -e "\e[1;33m 成功啦！成功啦！成功啦！立即重启猫盘，Enjoy  it!  \e[0m"
rm -f /root/bug.sh
	i2cset -y -f 0 0x45 0x00 0x55
	i2cset -y -f 0 0x45 0x01 0x01
	i2cset -y -f 0 0x45 0x31 0x33
	i2cset -y -f 0 0x45 0x32 0x33
	i2cset -y -f 0 0x45 0x33 0x33
	i2cset -y -f 0 0x45 0x30 0x07
	i2cset -y -f 0 0x45 0x34 0
	i2cset -y -f 0 0x45 0x35 128
	i2cset -y -f 0 0x45 0x36 0
else
echo -e "\e[1;31m  失败了o(╥﹏╥)o 查看最新教程：imnks.com/2683.html    \e[0m"
rm -f /root/bug.sh
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
fi