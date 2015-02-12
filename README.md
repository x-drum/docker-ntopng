# xdrum/docker-ntopng
# ntopng container

A ntopng container based on lucaderi/ntopng-docker and Ubuntu 14:04 images

## Notes
* by default the container will expose the ntopng webinterface on port tcp/3000.

## Usage

```bash
$ docker run -ti --rm --net=host xdrum/ntopng
```

```bash
$ docker run -ti --rm --net=host -e WEB_PORT=8000 xdrum/ntopng
```
