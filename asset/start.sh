#!/bin/bash
echo "Welcome to Startup Script by WiFied Networks"
sleep 3
echo "Copying base file from boot device"
sudo mv /boot/boot_1.sh /home/pi
sudo mv /boot/keyboard /etc/default/
cd /home/pi
sleep 5
echo "Executing First Script..."
sudo bash ./boot_1.sh
sudo mv /boot/set_eth.sh /home/
cd /home/
sudo bash ./set_eth.sh
sudo mv /boot/boot_2.sh /home/
cd /home/
sudo bash ./boot_2.sh
exit
