#!/bin/bash

# Make users and group
sudo useradd sonarr -u 13001
sudo useradd radarr -u 13002
sudo useradd lidarr -u 13003
sudo useradd readarr -u 13004
sudo useradd mylar -u 13005
sudo useradd prowlarr -u 13006
sudo useradd qbittorrent -u 13007
sudo useradd jackett -u 13008
sudo useradd bazarr -u 13009
sudo useradd jellyfin -u 13010
sudo useradd sabnzbd -u 13011
sudo groupadd mediacenter -g 13000
sudo usermod -a -G mediacenter sonarr
sudo usermod -a -G mediacenter radarr
sudo usermod -a -G mediacenter lidarr
sudo usermod -a -G mediacenter readarr
sudo usermod -a -G mediacenter mylar
sudo usermod -a -G mediacenter prowlarr
sudo usermod -a -G mediacenter qbittorrent
sudo usermod -a -G mediacenter jackett
sudo usermod -a -G mediacenter bazarr
sudo usermod -a -G mediacenter jellyfin
sudo usermod -a -G mediacenter sabnzbd

# Make directories
sudo mkdir -pv docker/{sonarr,radarr,lidarr,readarr,mylar,prowlarr,qbittorrent,jackett,bazarr,jellyfin,sabnzbd}-config
# sudo mkdir -pv data/{torrents,media}/{tv,movies,music,books,comics}

# Set permissions
sudo chmod -R 775 /mnt/nfs/data/
sudo chown -R $(id -u):mediacenter /mnt/nfs/data/
sudo chown -R sonarr:mediacenter docker/sonarr-config
sudo chown -R radarr:mediacenter docker/radarr-config
sudo chown -R lidarr:mediacenter docker/lidarr-config
sudo chown -R readarr:mediacenter docker/readarr-config
sudo chown -R mylar:mediacenter docker/mylar-config
sudo chown -R prowlarr:mediacenter docker/prowlarr-config
sudo chown -R qbittorrent:mediacenter docker/qbittorrent-config
sudo chown -R jackett:mediacenter docker/jackett-config
sudo chown -R bazarr:mediacenter docker/bazarr-config
sudo chown -R bazarr:mediacenter docker/jellyfin-config
sudo chown -R bazarr:mediacenter docker/sabnzbd-config

echo "UID=$(id -u)" >> .env
