# node-exporter
node-exporter


### install
```shell
   mkdir -p /data/docker/node-explorer/ \
&& cd /data/docker/node-explorer/ \
&& curl node-exporter.zip https://github.com/symbolspace/node-exporter/archive/main.zip \
&& unzip node-exporter.zip \
&& chmod +x *.sh \
&& ./firewall.sh \
&& sed -i "s/1hostname1/${hostname}/g" docker-compose.yml \
&& ./up.sh
```


### firewall
* centos
```
# node-exporter 7100:9100
firewall-cmd --zone=public --permanent --add-port=7100/tcp

# cadvisor 7200:8080
firewall-cmd --zone=public --permanent --add-port=7200/tcp

# reload
firewall-cmd --reload
```
