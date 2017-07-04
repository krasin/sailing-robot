#!/bin/bash
set -e

echo "Pushing to the pi at ${SAIL_PI_IP:=192.168.42.1}..."
git push pi@$SAIL_PI_IP:sailing-robot-bare


echo "Pulling from the pi..."
ssh pi@$SAIL_PI_IP 'cd ~/sailing-robot; git pull bareclone master'