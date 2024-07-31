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

### Create tokens for livekit clients

```bash
./create_token_by_lkcli.sh
```

### Create a room

```bash
./create_room_by_lkcli.sh
```

### List rooms

```bash
./list_rooms_by_lkcli.sh
```

### Delete a room

```bash
./delete_room_by_lkcli.sh
```


### Join a room and publish default demo

```bash
./join_room_and_publish_demo_by_lkcli.sh
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