#!/bin/bash

# Check if the script is run with sudo
if [ "$(id -u)" -ne 0 ]; then
    echo "Please run this script with sudo."
    exit 1
fi

# Get the sudo password
echo -n "Enter sudo password: "
read -s password
echo

# Copy program.out to /usr/local/bin
echo "$password" | sudo -S cp ROH /usr/local/bin/

# Check if the copy was successful
if [ $? -eq 0 ]; then
    echo "program.out copied to /usr/local/bin successfully."
else
    echo "Failed to copy program.out to /usr/local/bin."
fi
