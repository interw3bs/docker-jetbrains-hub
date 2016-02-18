# JetBrains Hub 1.0

This image contains the most recent version of the jetbrains hub. You can mount the volumes

- /opt/hub/conf
- /opt/hub/data
- /opt/hub/backup

Apart from this the environment variables ```LISTEN_PORT``` and ```BASE_URL``` **MUST** be specified. 

## Example run command:

> docker run -d -v /opt/hub/conf -v /opt/hub/data -v /opt/hub/backup -e BASE_URL=http://hub.yoursite.com -e LISTEN_PORT=8080 -p 80:8080 interwebs/jetbrains-hub

Have fun using this image! Any feedback is welcome: technik@interwebs-ug.de
