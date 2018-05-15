sed -i "s#'zhaoj.in'#'wns.windows.com'#" /root/shadowsocks/userapiconfig.py
sed -i "s#'zhaoj.in'#'wns.windows.com'#" /shadowsocks/userapiconfig.py
firewall-cmd --add-port=443/tcp --permanent
firewall-cmd --add-port=443/udp --permanent
firewall-cmd --reload
supervisorctl restart mu
service iptables stop
chkconfig iptables off
