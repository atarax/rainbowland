# install haproxy
sudo apt-get update
sudo apt-get install -y haproxy

# enable haproxy on system-start
echo "ENABLED=1" > /etc/default/haproxy

# write haproxy-config @TODO: improve
cat > /etc/haproxy/haproxy.cfg <<EOL
global
        log /dev/log    local0
        log /dev/log    local1 notice
        chroot /var/lib/haproxy
        user haproxy
        group haproxy
        daemon

defaults
        log     global
        mode    http
        option  httplog
        option  dontlognull
        contimeout 5000
        clitimeout 50000
        srvtimeout 50000
        errorfile 400 /etc/haproxy/errors/400.http
        errorfile 403 /etc/haproxy/errors/403.http
        errorfile 408 /etc/haproxy/errors/408.http
        errorfile 500 /etc/haproxy/errors/500.http
        errorfile 502 /etc/haproxy/errors/502.http
        errorfile 503 /etc/haproxy/errors/503.http
        errorfile 504 /etc/haproxy/errors/504.http

listen loadBalancer 192.168.99.200:80
        mode http
        balance roundrobin
        option httpclose
        option forwardfor
        server manager1 192.168.99.201:80 check
        server manager2 192.168.99.202:80 check
	server manager3 192.168.99.203:80 check
EOL

sudo service haproxy start
sudo service haproxy reload
