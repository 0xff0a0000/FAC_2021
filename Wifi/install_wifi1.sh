#!/bin/sh
cd /home/student/Documents/
git clone https://github.com/aircrack-ng/rtl8188eus.git
cd rtl8188eus
cp /home/student/Documents/FAC_2021/Wifi/rtw_br_ext.c core/rtw_br_ext.c
echo -e "blacklist r8188eu.ko\nblacklist r8188eu" > "/etc/modprobe.d/realtek.conf"
make all
make install
reboot
