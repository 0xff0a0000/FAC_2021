#!/bin/sh
apt update
apt install -y build-essential bc linux-headers-5.15.0-kali2-amd64 linux-image-5.15.0-kali2-amd64 git
sudo update-grub
echo " si aucune erreur -> reboot"
