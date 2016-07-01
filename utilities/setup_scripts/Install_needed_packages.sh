#!/bin/sh 
cd ~

# Install Geos headers (for shapely)
sudo apt-get --assume-yes install libgeos-dev

# Install Latlon, shapely (navigation) and pynmea2 (reading GPS)
yes | sudo pip install Latlon shapely pynmea2

# Needed for serial
yes | sudo pip install spidev

# Wiringpi2 needed for hardware pwm
yes | sudo pip install wiringpi2

# Install vim
sudo apt-get --assume-yes install vim

# Needed for dashboard
yes | sudo pip install tornado

# Set time zone to england (it is the same for portugal)
sudo timedatectl set-timezone Europe/London


cd ~