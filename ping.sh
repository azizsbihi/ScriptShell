#!/bin/bash
#set -x
succes=", 0% packet loss"
for i in {1..10}
do
    result=`ping 10.0.2.${i} -c 1 -W 1`
    if [[ ${result} == *${succes}* ]];
    then
    echo "10.0.2.${i} exist "
    else 
    echo "10.0.2.${i} not exist"
    fi
done
#set +x