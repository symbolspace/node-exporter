#   node-exporter for docker installer v1.0
#   symbolspace@outlook.com
#   $1  hostname

hostname=$1

   mkdir -p /data/docker/node-explorer/ \
&& cd /data/docker/node-explorer/ \
&& curl node-exporter.zip https://github.com/symbolspace/node-exporter/archive/main.zip \
&& unzip node-exporter.zip \
&& chmod +x *.sh \
&& sed -i "s/1hostname1/${hostname}/g" docker-compose.yml \
&& ./up.sh

echo "done."
