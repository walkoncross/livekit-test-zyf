# livekit-test-zyf
livekit test scripts by ZYF

## Start local livekit server

```bash
./run_livekit_server.sh
```

## Using LiveKit CLI

### Install LiveKit CLI

Refer to: https://github.com/livekit/cli

On macOS, you can install livekit-cli via homebrew:
```bash
brew install livekit-cli
```

### Token operations

#### Create tokens for livekit clients

```bash
./create_token_by_lkcli.sh
```

### Room operations

#### Create a room

```bash
./create_room_by_lkcli.sh
```

#### List rooms

```bash
./list_rooms_by_lkcli.sh
```

#### Delete a room

```bash
./delete_room_by_lkcli.sh
```


#### Join a room and publish default demo

```bash
./join_room_and_publish_demo_by_lkcli.sh
```

### Ingress operations

#### Pre-requisites

1. Install redis and start redis-server:
    1. ```brew intall redis```
    2. ```bash redis-server ```
2. Start livekit-server with support of redis and ingress, refer to: [server-config.yaml](./server-config.yaml) and run ```bash run_livekit_server.sh```
3. Install and run livekit-ingress:
    1. Install livekit-ingress, refer to: https://github.com/livekit/ingress
    2. Start ingress service: ```bash ./run_ingress_service.sh``` 

#### Create an ingress

##### 1. RTMP Ingress

edit ingress-create-rtmp.json and then run:

```bash
./create_ingress_rtmp_by_lkcli.sh
```

#####  2. WHIP Ingress
edit ingress-create-whip.json and then run:

```bash
./create_ingress_whip_by_lkcli.sh
```

#### List ingresses

```bash
./list_ingress_by_lkcli.sh
```

results like:
```
+-----------------+-------------+---------+--------------+-----------------------------+-------------------+-------+
|    INGRESSID    |    NAME     |  ROOM   |  STREAMKEY   |             URL             |      STATUS       | ERROR |
+-----------------+-------------+---------+--------------+-----------------------------+-------------------+-------+
| IN_sHrVgLb57vk8 | my-ingress2 | my-room | w43uem8YewYJ | https://localhost:8080/whip | ENDPOINT_INACTIVE |       |
| IN_3HoKaTLkPqVY | my-ingress  | my-room | Ypf9Y7BZVGUK | rtmps://localhost:1935/live | ENDPOINT_INACTIVE |       |
+-----------------+-------------+---------+--------------+-----------------------------+-------------------+-------+
```

#### Delete an ingress

```bash
./delete_ingress_by_lkcli.sh <INGRESSID>
```

#### Stream to an ingress

##### Using ffmpeg to stream RTMP to an ingress

With .flv format:

```bash
./ffmpeg_stream_flv_to_ingress.sh <STREAMKEY> <video_path>
```

## Using python sdk

### Install python sdk
```bash
pip install livekit-api livekit
```

### get livekit python-sdks

```bash
git clone https://github.com/livekit/python-sdks livekit-python-sdks
```

### Run sdk examples

```bash
./run_python_examples.sh livekit-python-sdks/examples/<xxx>.py
```