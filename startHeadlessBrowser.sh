#!/bin/bash
echo "installing xorg dummy driver"
sudo apt-get install -y xserver-xorg-video-dummy
echo "Starting Xorg server"
cmd="/usr/bin/Xorg -noreset +extension GLX +extension RANDR +extension RENDER -logfile tmp/xorg.log  -config xorg.conf -novtswitch  $1"
echo "command: $cmd"
$cmd
