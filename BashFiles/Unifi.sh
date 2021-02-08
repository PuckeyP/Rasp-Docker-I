# mkdir -p unifi/data
# mkdir -p unifi/log
sudo docker run --init \
                --detach \
                --name Unifi \
                --restart always \
                --volume /home/pi/Rasp-Docker-I/Unifi/log:/unifi/log \
                --volume /home/pi/Rasp-Docker-I/Unifi/data:/unifi/data \
                -p 8080:8080 \
                -p 8443:8443 \
                -p 3478:3478 \
                --env "TZ=Europe/Amsterdam" \
                jacobalberty/unifi:6.0
 

 