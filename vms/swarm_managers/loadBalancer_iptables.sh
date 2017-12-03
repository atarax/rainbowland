# beacuse vagrant routes the ports from the host to the
# first interface, and our private network containing the
# workers is connected to the second, we have to set up
# some routes
sudo iptables -t nat -A PREROUTING -p tcp -d 10.0.2.15 --dport 80 -j DNAT --to 192.168.99.200:80
sudo iptables -A FORWARD -p tcp -d 192.168.99.200 --dport 80 -j ACCEPT
sudo sysctl net.ipv4.ip_forward=1

