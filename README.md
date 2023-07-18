# BOREALIS_Cam

This repository contains the files necessary for installing, configuring, and running the Raspberry Pi live video payload for Maine's NEBP team.

To install, format a micro SD card with the latest version of Raspberry Pi OS (64 Bit) using the Raspberry Pi Imager.

Connect a keyboard, mouse, and monitor to your Pi. Turn on your Pi and run through the initial setup steps until you reach the Desktop. Connect to the Pi to the internet.

Open a terminal instance using the black box at the top left of your screen and type in the following command:

sudo curl -SL https://shorturl.at/jtyIM | bash

This will automatically download and configure LibCamera for the Arducam 12MP MINI IMX477 Synchronized Stereo Camera Bundle Kit for Raspberry Pi. 

Next, it will configure the static IP address of the eth0 network interface.

The .service file is placed into the correct directory and enabled to start at boot.

The Pi will reboot once everything is downloaded and configured. Now there should be a video stream at udp://192.168.1.23:8554.

The video is recommended to be viewed using FFMPEG on an installation of Linux. 
In a terminal use the following command:

ffplay -fflags nobugger udp://192.168.1.23:8554
