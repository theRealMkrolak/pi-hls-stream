#!/usr/bin/env bash
libcamera-vid \
    --metering average --ev 0.6 --bitrate 3145728 --profile high --level 4.2 --nopreview -t 0 \
    --width 1920 --height 1080 --framerate 30 \
    --codec libav --libav-format flv -o "rtmp://mystreamer.com:3334/live/stream"