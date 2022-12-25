#!/bin/bash
#Grab this repo with:
# wget https://github.com/N-Quan/home_server/archive/main.zip

apt-get update && apt-get upgrade -y && apt-get autoremove && apt-get autoclean

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

### Media Server - setup done with docker compose file ###
docker compose -f media_server.yml up -d
#QBittorrent
#Jellyfin
#Prowlarr
#Radarr 
#Sonarr