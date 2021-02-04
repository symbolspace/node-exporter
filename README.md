# node-exporter
node-exporter


### install
```shell
   mkdir -p /data/docker/node-explorer/ \
&& cd /data/docker/node-explorer/ \
&& curl node-exporter.zip https://github.com/symbolspace/node-exporter/archive/main.zip \
&& unzip node-exporter.zip \
&& chmod +x *.sh \
&& sed -i "s/1hostname1/${hostname}/g" docker-compose.yml \
&& ./up.sh
```
