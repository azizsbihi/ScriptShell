#!/bin/bash

IMAGE_DIR="/home/bihi/poky/build/tmp/deploy/images/raspberrypi3-custom"

img=`ls ${IMAGE_DIR} | grep sdimg | head -n 1`
echo $img
select option in flash erase
do
    case ${option} in 
    flash)
    echo "flashing now"
    time sudo dd if=${IMAGE_DIR}/${img} of=/dev/nmcblk0 bs=300M
    break
    ;;

    erase)
    echo "erasing right now"
    sudo umount /dev/nmcblk0p1
    sudo umount /dev/nmcblk0p1
    time sudo dd if=/dev/zero of=/dev/nmcblk0 bs=5024 count=1000
    break
    ;;
    *)
    echo "usage: 1 for flash 2 for erase"
    esac
done
