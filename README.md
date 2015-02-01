# xdrum/docker-ntopng
# ntopng and nprobe container

A ntopng/nprobe container based on lucaderi/ntopng-docker and Ubuntu 14:04 images


## Usage

```bash
$ docker run -ti --rm --net=host xdrum/ntopng
```

```bash
$ docker run -ti --rm --net=host -e WEB_PORT=8000 -e COLLECTOR_PORT=6543
```

Note that by default the container will expose ntopng webinterface on port tcp/3000 and the nprobe collector on port udp/6343.
