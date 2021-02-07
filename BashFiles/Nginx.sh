# sudo docker pull nginx
sudo docker run \
    --restart always \
	--name Nginx \
	--mount type=bind,source=/home/pi/RaspTest/Nginx/Content,target=/usr/share/nginx/html \
	--mount type=bind,source=/home/pi/RaspTest/Nginx/Config/nginx.conf,target=/etc/nginx/nginx.conf \
	--mount type=bind,source=/home/pi/RaspTest/Nginx/Certs,target=/etc/nginx/certs \
	--mount type=bind,source=/home/pi/RaspTest/Nginx/Log,target=/var/log/nginx \
	-p 80:80 \
	-p 443:443 \
	-d nginx


#	--mount type=bind,source=/home/pi/RaspTest/Nginx/Certs,target=/etc/nginx/certs,readonly \
#	--mount type=bind,source=/home/pi/RaspTest/Nginx/Config/nginx.conf,target=/etc/nginx/conf/nginx.conf,readonly \
#	--mount type=bind,source=/home/pi/RaspTest/Nginx/Certs,target=/etc/ssl/private,readonly \
