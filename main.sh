#!/bin/sh
set -x
sudo apt update
sudo apt -y install samba
sudo systemctl start smbd
sudo \cp -r ~/sambaautoinstaller/s /etc/samba/smb.conf
sudo \cp -r ~/sambaautoinstaller/xy /etc/samba/smbshared.conf
sudo groupadd fileshare
sudo useradd -g fileshareuser fileshare
sudo mkdir /fileserver /fileserver/sharedDocuments /fileserver/sharedMedia
ip addr
sudo systemctl restart smbd
