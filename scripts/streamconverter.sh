#!/usr/bin/env bash

ffmpeg \
    -v verbose -fflags nobuffer -hwaccel auto \
    -f mjpeg -i http://127.0.0.1:8001/stream.mjpg \
    -framerate 30 -codec:v libx264 -preset ultrafast -profile:v high -level:v 4.2 -crf 22 -maxrate 3M -bufsize 6M -an \
    -f hls -hls_time 2 -hls_list_size 2 -hls_flags independent_segments+delete_segments -hls_segment_type mpegts -master_pl_name master.m3u8 /hls/stream_%v.m3u8