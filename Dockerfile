FROM lucaderi/ntopng-docker:latest

MAINTAINER Alessio Cassibba (x-drum) <swapon@gmail.com>

ADD run.sh /

CMD ["/bin/bash","/run.sh"]
