 #!/bin/bash

function funInstallSteamCMD()
{
    echo "Installing SteamCMD manually..."
    echo "Installing required packages from repositories..."
    apt-get install lib32gcc1
    if [ "$?" -ne "0" ]; then
        echo -e "\033[31m ERROR: Cannot install required packages! \033[0m" 
        exit 1
    fi
    wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz --no-check-certificate
    tar zxvf steamcmd_linux.tar.gz
    chmod +x ./steamcmd.sh
    clear
    return 0
}

if [ `id -u` -eq 0 ];then
    echo -e "\033[33m WARNING: Please don't run this script while operating as the root user for the security risk! \033[0m"
    echo -e "\033[33m Press Ctrl+C to exit and change to a common user. Or press any key to continue.  \033[0m"
    read
fi
echo "Updating package list..."
apt-get -y update
apt-get -y upgrade
clear
if command -v steamcmd > /dev/null 2>&1;then
	echo "Found steamcmd!" 
elif [ -f "steamcmd.sh" ];then
	echo "Found steamcmd.sh"
else	
	echo "You have not installed SteamCMD"
	funInstallSteamCMD
fi
echo "Now you have installed SteamCMD, start to install Insurgency."
./steamcmd.sh +login anonymous +force_install_dir ./Insurgency2 +app_update 222880 +quit




