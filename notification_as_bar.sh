#!/bin/bash

BATTERY=`acpi -b`
HORA=`date +"%H:%M"`
WIFI=`iwconfig wlan0 | grep level=`
VOLUME=`amixer sget Master | grep "Front Right"`
DISK=`df -h |  grep "/dev/sda3"`
WORKSPACE=`wmctrl -d | grep '*' | cut -d ' ' -f1`
BRIGHT=`light -G`
notify-send "Estado:" "[BAT]\t\t${BATTERY:24} \n[HORA]\t${HORA:0} \n[WIFI]\t\t${WIFI:43}\n[VOLUM]\t${VOLUME:70}\n[DISK]\t\t${DISK:31}\n[WS]\t\t${WORKSPACE}\n[BRIGHT]\t${BRIGHT}"
