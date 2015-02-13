# xdrum/docker-ntopng
# ntopng container

A ntopng container based on lucaderi/ntopng-docker and Ubuntu 14:04 images

## Notes
* By default the container will expose the ntopng webinterface on port **tcp/3000**.
* Datadir lives on volume **/var/lib/ntop**.

## Usage

Basic usage, fire up an instance with web interface available on port 3000:
```bash
$ docker run -ti --rm -p 192.168.1.1:3000:3000 xdrum/ntopng
```

An instance with web interface available on port 8080 connecting to an endpoint (tcp://1.2.3.4:5555):
```bash
$ docker run -ti --rm -p 127.0.0.1:8080:8080 xdrum/ntopng \
  -i tcp://1.2.3.4:5555 \
  -w 8080 \
  -v
```
