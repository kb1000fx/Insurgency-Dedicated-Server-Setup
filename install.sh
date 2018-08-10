#!/bin/bash

echo "Updating package list..."
apt-get -y update
apt-get -y upgrade

echo "Installing required..."
apt-get install lib32gcc1
echo "Installing SteamCMD..."
apt-get install steamcmd
mkdir ~/Steam && cd ~/Steam
