#!/bin/sh

# docker run --network host --privileged -v /home/pitsoed/job/betaflight:/home/ros_ws -e DISPLAY=$DISPLAY --name betaflight_px4_sim -it vehicle-gateway-sim bash
# docker run --gpus all --network host --privileged -v /home/pitsoed/job/betaflight:/home/ros_ws -v /tmp/.X11-unix:/tmp/.X11-unix:rw -e DISPLAY=$DISPLAY --name betaflight_px4_sim -it vehicle-gateway-sim bash



docker run --gpus all --network host --privileged --runtime=nvidia -v /home/pitsoed/job/betaflight:/home/ros_ws -v /tmp/.X11-unix:/tmp/.X11-unix:rw -e DISPLAY=$DISPLAY --name betaflight_px4_sim -it vehicle-gateway-sim bash