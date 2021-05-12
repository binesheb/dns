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
sudo reboot


