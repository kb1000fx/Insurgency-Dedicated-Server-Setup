# Insurgency-setup

[中文文档](https://github.com/kb1000fx/Insurgency-Dedicated-Server-Setup/blob/master/res/README-zh.md)
## Install Insurgency
```
wget https://raw.githubusercontent.com/kb1000fx/Insurgency-Dedicated-Server-Setup/master/install_insurgency.sh --no-check-certificate
chmod +x install_insurgency.sh
./install_insurgency.sh
```
## Config server.cfg
Default config files have been created while installing.  
Edit  ```./insurgency/cfg/server.cfg``` to custom your server.  
More info: https://steamcommunity.com/app/222880/discussions/2/558746089590579609/
## Add MOD from Workshop
Create or edit `subscribed_file_ids.txt` .   
Add ID of the Mods
```
cd ./insurgency/subscribed_file_ids.txt
vi subscribed_file_ids.txt
```
## Run 
Use `srcds_run` command to run the server  
For examole:
```
./srcds_run -port 27015 +map district_coop +maxplayers 32 -workshop
```
