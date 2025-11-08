#!/usr/bin/env bash

# Default port if not provided
PORT=${1:-8080}

# MJPEG stream server using rpicam-vid
# The stream will be available at http://localhost:${PORT}/stream.mjpg
rpicam-vid \
    --metering average --ev 0.6 --bitrate 3145728 --nopreview -t 0 \
    --width 1920 --height 1080 --framerate 30 \
    --codec mjpeg \
    --inline \
    --listen 127.0.0.1 \
    --port ${PORT} \
    --timeout 0