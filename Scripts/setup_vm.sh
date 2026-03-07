#!/bin/bash
# Ubuntu 24.04 VM Setup: Desktop Environment & Remote Desktop
# Prepared by: Deborah Adekanye

# 1. Update the system and install xfce4 desktop
sudo apt update && sudo apt upgrade -y
sudo apt install xfce4 xfce4-goodies -y

# 2. Install and enable xrdp for remote access
sudo apt install xrdp -y
sudo systemctl enable xrdp
echo xfce4-session > ~/.xsession

# 3. Add xrdp user to ssl-cert group and restart service
sudo adduser xrdp ssl-cert
sudo systemctl restart xrdp

echo "Remote Desktop Setup Complete."
