# BOREALIS_Cam
### This repository contains the files necessary for installing, configuring, and running the Raspberry Pi live video payload for Maine's NEBP team.

## Support
Currently Supports:
Raspberry Pi 4 8GB

Currently Adding Support For:
Raspberry Pi 5 8GB

## Quick Installation

Install the latest version of Raspberry Pi OS (64 Bit) to a micro SD card using the [Raspberry Pi Imager](https://www.raspberrypi.com/software/). [More Details](https://www.raspberrypi.com/documentation/computers/getting-started.html#install-using-imager)

Connect a USB keyboard, USB mouse, and HDMI monitor to the Pi.

Turn on the Pi and proceed through the initial setup steps until reaching the Desktop. 

Connect the Pi to WiFi. 

Open a terminal instance using the black box at the top left of your screen and run the following command:

bash <(sudo curl -SL https://shorturl.at/jtyIM)

This will automatically configure rpicam for the either the
Arducam 12MP MINI IMX477 Synchronized Stereo Camera Bundle Kit for Raspberry Pi
or
Camera Module 3 Mono or Stereo

The Pi will reboot once everything is downloaded and configured. Now there should be a video stream at udp://192.168.1.23:8554.

The video is recommended to be viewed using FFMPEG on an installation of Linux. 
In a terminal use the following command:

ffplay -fflags nobuffer udp://192.168.2.23:8554
