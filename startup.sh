#! /bin/bash

cp -n /tmp/hub.jvmoptions /opt/hub/conf/hub.jvmoptions
/opt/hub/bin/hub.sh configure --base-url $BASE_URL --listen-port $LISTEN_PORT
/opt/hub/bin/hub.sh run --no-browser
