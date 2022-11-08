#!/bin/sh
if [ ! -f UUID ]; then
  UUID="c75c24c7-0b3c-467f-b3b5-c2d6b2bf9fbd"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

