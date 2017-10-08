#!/bin/bash
set -e

# Upgrade from jessie to stretch
sudo sed -i 's/jessie/stretch/g' /etc/apt/sources.list
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -yf upgrade
sudo apt-get clean

# Install software
sudo apt-get install -y fail2ban screenfetch

sudo apt-get install file -y
sudo apt-get install tmux -y 

