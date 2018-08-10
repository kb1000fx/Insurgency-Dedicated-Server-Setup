#!/bin/bash

if ! command -v steamcmd > /dev/null 2>&1;then
    echo "You have installed SteamCMD"

else 
    echo "You have not installed SteamCMD"
    funInstallSteamCMD()
fi  

echo "Updating package list..."
apt-get -y update
apt-get -y upgrade

function funInstallSteamCMD()
{

    echo "Installing required packages..."
    apt-get install lib32gcc1
    echo "Installing SteamCMD..."
    apt-get install steamcmd
    mkdir ~/Steam && cd ~/Steam
    if [ "$?" -ne "0" ]; then
        echo -e "\033[31m ERROR: Cannot install required packages! \033[0m" 
        exit 1
    fi
    return 0
}



