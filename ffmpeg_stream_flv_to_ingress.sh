# rtmp only supports flv video format
stream_key=$1
video_path=$2

ffmpeg -re -i ${video_path} -f flv rtmp://localhost:1935/live/${stream_key}
# ffmpeg -re -i <input> -f flv -rtmp_playpath some/long/path -rtmp_app long/app/name rtmp://username:password@myserver/
