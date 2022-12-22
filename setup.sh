#!/bin/bash
sudo apt update 
sudo apt full-upgrade

#Docker
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker pi

#FanControl
curl https://download.argon40.com/argonfanhat.sh | bash

#NordVPN
sh <(curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh)

#Allow devices on same network to access server
nordvpn whitelist remove all
nordvpn whitelist add subnet 192.168.0.1/24 # Router IP is 192.168.0.1
nordvpn connect

### Media Server - setup done with docker compose file ###
docker compose -f media_server.yml up
#QBittorrent
#Jellyfin
#Prowlarr
#Radarr 
#Sonarr