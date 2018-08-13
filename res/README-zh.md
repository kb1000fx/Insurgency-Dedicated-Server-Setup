## 测试环境
Digital Ocean SFO2  
1 vCPU   
1 GB Memory  
25 GB Disk  
Ubuntu 18.04.1 x64 
## 安装
```
wget https://raw.githubusercontent.com/kb1000fx/Insurgency-Dedicated-Server-Setup/master/install_insurgency.sh --no-check-certificate
chmod +x install_insurgency.sh
./install_insurgency.sh
```
## 配置 server.cfg 文件
安装时已自动下载了默认文件.  
编辑  ```./insurgency/cfg/server.cfg``` 来改变服务器设置.  
更多内容参见：  
https://steamcommunity.com/sharedfiles/filedetails/?id=854506744  
https://steamcommunity.com/sharedfiles/filedetails/?id=305605313  

## 添加创意工坊MOD
创建并编辑 `subscribed_file_ids.txt` .   
在其中添加MOD ID，每行一个  
启动时末尾加 `-workshop`
```
cd ./insurgency/subscribed_file_ids.txt
vi subscribed_file_ids.txt
```
## 运行 
使用 `srcds_run` 运行服务器  
例如：
```
./srcds_run -port 27015 +map district_coop +maxplayers 32 -workshop
```
或使用脚本启动
```
wget https://raw.githubusercontent.com/kb1000fx/Insurgency-Dedicated-Server-Setup/master/run_insurgency.sh --no-check-certificate
chmod +x run_insurgency.sh
./run_insurgency.sh
```