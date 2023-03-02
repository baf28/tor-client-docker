I am Alexandr Linux. This is my docker tor-client for Synology NAS.

Tor client (Socks proxy ) version 0.4.6.10 OS Ubuntu

Install Synology NAS:

1 - In the Synology NAS admin interface, launch Docker package

2 - In the registry tab, search for the image (search for "tor-client") and double click to download

3 - When the download is finished, in the image tab, select the tor-client image and launch to create the container.

4 - Choose a container name and add port settings : local port (9050) and container port (9050)

5 - Click "Next" and adjust ressource limitation if you want. Click "Next" then click "Apply"

6 - Launch the container.

To use, configure your browser/client to use a SOCKS server with the IP of the NAS and server port: 9150. (Use TorBrowser and change connection settings in preferences panel) Your Tor client is running.

Install Linux: docker run -d -p 9050:9050 baf28/tor-client

Docker Hub: https://hub.docker.com/r/baf28/tor-client


Command:

sudo apt update

sudo apt upgrade

sudo apt install docker docker.io

build -t baf28/tor-client .

docker image ls

docker run -d -p 9050:9050 baf28/tor-client

docker ps -a
