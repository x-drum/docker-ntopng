FROM lucaderi/ntopng-docker:latest

MAINTAINER Alessio Cassibba (x-drum) <swapon@gmail.com>

ADD run.sh /

VOLUME ["/var/lib/redis"]

ENTRYPOINT ["/bin/bash","/run.sh"]
