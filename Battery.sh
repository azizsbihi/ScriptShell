#!/bin/bash
#set -x
battery=`acpi -b | cut -d " " -f 4` #acpi-b
read -a battery_value <<< ${battery}
value=${battery_value::-2} #${battery_value[3]::-1}

while [ true ]
do
    if [ ${value} -lt 50 ]
    then
        notify-send " please take care you  battery is less than 50 ! ${value}% "
        notify-send " please put your charger "
        sleep 5 
        acpi -a | grep "on"
        if [ $? -eq 0 ];
        then
            notify-send "thinx for charging your battery pls run the script again "
            break
        fi
    fi
done
#set +x