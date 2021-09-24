#!/usr/bin/sh

ffmpeg -f video4linux2 -r 30 -video_size 800x600 -i /dev/video0 -c:v h264_omx -f flv rtmp://3dplegacy.iotspacex.com/live/123 -preset:v veryfast -tune:v zerolatency -thread_queue_size 1024 -an -b:v 10M -bufsize 10M -pix_fmt yuv420p -g 60