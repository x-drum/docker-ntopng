#!/bin/bash
set -e

WEB=3000
COLLECTOR=6343

if [ "$WEB_PORT" ]; then
  WEB=$WEB_PORT
fi
if [ "$COLLECTOR_PORT" ]; then
  COLLECTOR=$COLLECTOR_PORT
fi

/etc/init.d/redis-server start
ntopng -i tcp://127.0.0.1:5556 -d /var/tmp -w $WEB -v >> /dev/null &
nprobe --collector-port $COLLECTOR --zmq tcp://127.0.0.1:5556

exec "$@"
