#!/bin/bash

# Just run this script once after a fresh sd card build
# to prepare the image for release as a downloadable sd card image

# SSH Pubkeys (make uniquie for every sd card image install)
echo "deleting SSH Pub keys ..."
echo "they will get recreated on fresh bootup, by _bootstrap.sh service"
sudo rm /etc/ssh/ssh_host_*
echo "OK"

echo " "
echo "Will shutdown now."
echo "Wait until Respebarry LEDs show now activity anymore."
echo "Then remove SD card and make an release image from it."
sudo shutdown now
