# mkdir -p unifi/data
# mkdir -p unifi/log
sudo docker run --detach \
                --name Unifi \
                --restart always \
                # --volume /home/pi/Rasp-Docker-I/Unifi:/unifi \
                --init \
                -p 8080:8080 \
                -p 8443:8443 \
                -p 3478:3478 \
                --env "TZ=Europe/Amsterdam" \
                jacobalberty/unifi:stable
 