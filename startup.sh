#! /bin/bash

file=/opt/hub/conf/hub.jvmoptions

if [ -f "$file" ]
then
  echo "Config already exists - wont touch!"
else
  cp -n /tmp/hub.jvmoptions /opt/hub/conf/hub.jvmoptions
  /opt/hub/bin/hub.sh configure --base-url $BASE_URL --listen-port $LISTEN_PORT
fi

/opt/hub/bin/hub.sh run --no-browser
