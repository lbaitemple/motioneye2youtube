#!/bin/bash

ip=$1
key=$2
ffmpeg -re -f mjpeg -i "$ip" -f lavfi -i anullsrc -c:v libx264 -g 60 -c:a aac -ar 44100 -ac 2 -f flv  "rtmp://a.rtmp.youtube.com/live2/$key"
