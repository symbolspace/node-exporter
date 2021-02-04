#   node-exporter for docker installer v1.0
#   symbolspace@outlook.com
#   $1  hostname

hostname=$1

   mkdir -p /data/docker/node-explorer/ && cd /data/docker/node-explorer/ \
&& curl -o node-exporter.zip https://codeload.github.com/symbolspace/node-exporter/zip/main \
&& yum install unzip -y && unzip node-exporter.zip -d ./ \
&& mv ./node-exporter-main ./server && cd server \
&& chmod +x *.sh && ./firewall.sh \
&& sed -i "s/1hostname1/${hostname}/g" docker-compose.yml && ./up.sh \
&& rm -f install.sh

echo "done."
