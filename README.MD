


# BUILD Image

```docker
docker build -t varfor/apprtc:v1.0 -f Dockerfile .

```

# Run AppRTC Server

```docker

docker run --rm \
  -p 8080:8080 -p 8089:8089 -p 3478:3478 -p 3478:3478/udp -p 3033:3033 \
  -p 59000-65000:59000-65000/udp \
  -e PUBLIC_IP=<server public IP> \
  -it varfor/apprtc

```