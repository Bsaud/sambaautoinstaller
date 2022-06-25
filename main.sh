#!/bin/sh
set -x
echo admin | sudo apt update
sudo apt -y install samba
sudo systemctl start smbd
sudo \cp -r ~/sambaautoinstaller/s /etc/samba/smb.conf
sudo \cp ~/sambaautoinstaller/x /etc/smbshared.conf
sudo groupadd smbgroup
sudo useradd -g smbgroup smbuser
sudo mkdir /share /share/Documents /share/Public
sudo chmod 777 /share/Public
sudo ls -l /share
sudo touch /share/Public/samplepdf.pdf
ls /share/Public/
ip addr
sudo systemctl restart smbd
