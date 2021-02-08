# sudo docker network create \
#             --driver=macvlan \
#             --gateway=192.168.1.1 \
#             --subnet=192.168.1.0/24 \
#             --ip-range=192.168.1.4/32 \
#             -o parent=eth0 VLAN1_pi-hole


sudo docker run --detach \
           --name pi-hole \
           --restart always \
           --volume /etc/localtime:/etc/localtime:ro \
           --volume /home/pi/Rasp-Docker-I/PiHole/config:/etc/pihole \
           --volume /home/pi/Rasp-Docker-I/PiHole/dnsmasq.d:/etc/dnsmasq.d \
           --cap-add NET_ADMIN \
           --dns=8.8.8.8 \
           --dns=8.8.4.4 \
           --env "DNS1=8.8.8.8" \
           --env "DNS2=8.8.4.4" \
           --env "ServerIP=192.168.1.4" \
           --env "DNSMASQ_LISTENING=local" \
           --env "WEBPASSWORD=sb25bs738" \
           --env "TZ=Europe/Amsterdam" \
           --network VLAN1_pi-hole \
           --ip "192.168.1.4" \
           --mac-address "04:44:c0:a4:04:a4" \
           pihole@sha256:27f75488f8971127859cd7a81cd4f63ac3d3e01ae128fd0630a47379c9fa1770

#           pihole/pihole:dev-buster
