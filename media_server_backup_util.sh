#!/bin/bash
#cd /media/pi/Seagate_HDD/home_server/media_server

now = date +"%d-%m-%Y"
mkdir /media/pi/Seagate_HDD/home_server/media_server/config_backups/$(date +"%d-%m-%Y")

cp -R media/pi/Seagate_HDD/home_server/media_server/configs /media/pi/Seagate_HDD/home_server/media_server/config_backups/$(date +"%d-%m-%Y")