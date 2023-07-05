#!/bin/bash
#gst-launch-1.0 -e rtspsrc location=rtsp://localhost:8554/payload ! rtph264depay ! h264parse ! splitmuxsink location=/home/pi/Videos/Payload%02d%05d.mp4 max-size-time=300000000000 max-files=96
/usr/local/bin/libcamera-vid --width 1550 --height 1152 -g 15 -b 1200000 --vflip -t 0 --framerate 30 -n -o - | /usr/bin/ffmpeg -r 30 -f h264 -i - -fflags +genpts -an -vcodec copy -metadata service_name="2024 Eclipse HAB 1" -metadata service_provider=UMHAB -r 30 -f mpegts udp://192.168.1.49:8554?ttl=2/ -vcodec copy -f mpegts /home/pi/`date '+%Y%m%d-%H%m%S.%N'`.mpegts
