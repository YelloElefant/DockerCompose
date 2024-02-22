docker run -d \
    --name pihole \
    -p 53:53/tcp -p 53:53/udp \
    -p 8080:80 \
    -p 443:443 \
    -e TZ="Pacific/Auckland" \
    -v "/Docker/Data/Pihole/data/etc-pihole:/etc/pihole/" \
    -v "/Docker/Data/Pihole/data/etc-dnsmasq.d:/etc/dnsmasq.d/" \
    --dns=8.8.8.8 --dns=8.8.4.4 \
    --restart=unless-stopped \
    pihole/pihole:latest
