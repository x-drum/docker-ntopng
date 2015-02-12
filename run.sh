#!/bin/bash
set -e

: ${WEB_PORT:="3000"}

/etc/init.d/redis-server start
ntopng -d /var/tmp -w $WEB_PORT -v >> /dev/null &

exec "$@"
