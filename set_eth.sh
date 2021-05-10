#!/bin/bash
echo "Setting up Ethernet Port IP to 192.168.29.29/24"
mv /boot/dhcpcd.conf /etc/
echo "Successfully Changed IP Address"
echo "Use the new IP address to access the node"
sleep 5
exit
