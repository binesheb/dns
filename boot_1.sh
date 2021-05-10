#!/bin/bash
echo "Welcome to pi-hole by WiFi-ed Networks"
echo "Boot Script Stage one"
sleep 3
echo "Updating the OS..."
sleep 3
sudo apt-get update -y
echo "Upgrading the OS..."
sleep 3
sudo apt-get upgrade -y
sleep 3
echo "Changing Hostname to wifieddns"
NEW_NAME="wifieddns"
echo $NEW_NAME > /etc/hostname
sudo sed -i "s/raspberrypi/$NEW_NAME/g" /etc/hosts
sudo hostname $NEW_NAME
echo "Hostname Changed Successfully"
sleep 1
echo "Adding user wified"
useradd wified; echo -e "wified123\nwified123" | sudo passwd wified
sudo usermod -aG sudo wified
sudo apt install curl
curl -sSL https://install.pi-hole.net | bash
echo -e "\n" | pihole -a -p
pihole -up
echo "Remove First Boot"
sudo rm /boot/boot_1.sh
echo "Self Destruct"
sudo rm ./boot_1.sh
echo "Restrating the node in 10 seconds"
sleep 10
sudo reboot


