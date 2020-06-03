#!/bin/bash
# create network
docker network create --driver bridge onlyoffice

# run community server
sudo docker run --net onlyoffice -i -t -d --restart=always --name onlyoffice-document-server \
    -v /app/onlyoffice/DocumentServer/data:/var/www/onlyoffice/Data \
    -v /app/onlyoffice/DocumentServer/logs:/var/log/onlyoffice \
    onlyoffice/documentserver

# run document server
sudo docker run --net onlyoffice -i -t -d --restart=always --name onlyoffice-community-server \
    -p 8082:80 -p 5222:5222 -p 8083:443 \
    -v /app/onlyoffice/CommunityServer/data:/var/www/onlyoffice/Data \
    -v /app/onlyoffice/CommunityServer/mysql:/var/lib/mysql \
    -v /app/onlyoffice/CommunityServer/logs:/var/log/onlyoffice \
    -v /app/onlyoffice/DocumentServer/data:/var/www/onlyoffice/DocumentServerData \
    -e DOCUMENT_SERVER_PORT_80_TCP_ADDR=onlyoffice-document-server \
    onlyoffice/communityserver
