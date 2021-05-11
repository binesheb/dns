#!/bin/bash
echo "Setting up Ethernet Port IP to 192.168.29.29/24"
mv /boot/dhcpcd.conf /etc/
echo "Successfully Changed IP Address"
sudo service dhcpcd status
sudo service dhcpcd start
sudo systemctl enable dhcpcd
echo "Use the new IP address to access the node"
sleep 5
exit
