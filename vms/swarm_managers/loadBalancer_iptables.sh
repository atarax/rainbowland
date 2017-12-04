# beacuse vagrant routes the ports from the host to the
# first interface, and our private network containing the
# workers is connected to the second, we have to set up
# some routes
sudo iptables -F
sudo iptables -t nat -A PREROUTING -p tcp -d 10.0.2.15 --match multiport --dports 1:65535 -j DNAT --to 192.168.99.200

sudo sysctl net.ipv4.ip_forward=1

