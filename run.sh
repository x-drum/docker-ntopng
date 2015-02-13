#!/bin/bash
set -e

/etc/init.d/redis-server start

exec /usr/local/bin/ntopng -d /var/lib/ntop "$@"
