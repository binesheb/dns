echo "Setting up autostart of KIOSK mode"
sudo mv ./autostart /etc/xdg/lxsession/LXDE-pi/
echo "Done"
sudo rm /boot/autostart
sudo rm /boot/setup_kiosk.sh
echo "Removed temp Files"
sleep 3
