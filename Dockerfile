FROM java:8-jre
MAINTAINER m.albers@interwebs-ug.de

WORKDIR /opt/hub

ENV HUB_VERSION 1.0.797

RUN wget -nv https://download.jetbrains.com/hub/1.0/hub-ring-bundle-$HUB_VERSION.zip && unzip hub-ring-bundle-$HUB_VERSION.zip && rm hub-ring-bundle-$HUB_VERSION.zip

VOLUME ["/opt/hub/conf", "/opt/hub/data", "/opt/hub/backup"]

ADD hub.jvmoptions /tmp/hub.jvmoptions
ADD startup.sh /usr/local/bin
RUN chmod +x /usr/local/bin/startup.sh

CMD ["startup.sh"]

EXPOSE 8080


