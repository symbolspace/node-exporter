# node-exporter 7100:9100
firewall-cmd --zone=public --permanent --add-port=7100/tcp

# cadvisor 7200:8080
firewall-cmd --zone=public --permanent --add-port=7200/tcp

# reload
firewall-cmd --reload
