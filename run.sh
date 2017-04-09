docker stop domoticz
docker rm domoticz
docker pull kd5ftn/rpi-domoticz-docker
docker run --device=/dev/ttyACM0 -v /etc/localtime:/etc/localtime -v /home/nick/domoticz/domoticz.db:/root/domoticz/domoticz.db:rw -p 8080:8080 --name domoticz --restart=always -d kd5ftn/rpi-domoticz-docker:latest  
docker ps

