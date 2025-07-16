# betaflight

Build vehicle gateway 

Clone https://github.com/osrf/vehicle_gateway/tree/main and replace Dockerfile in Docker/dev/Dockerfile

#### Build docker image

docker build -f Docker/dev/Dockerfile -t vehicle-gateway-sim .

### remove

docker rm betaflight_px4_sim

#### Start container

docker run --gpus all   --network host   --privileged   --runtime=nvidia   -v /home/daryna/betaflight:/home/ros_ws  -v /tmp/.X11-unix:/tmp/.X11-unix:rw   -e DISPLAY=$DISPLAY   --name betaflight_px4_sim -it vehicle-gateway-sim bash

### inside container

```sh
. /opt/ros/humble/setup.sh
```

```sh
colcon build --packages-select betaflight_sim betaflight_configurator betaflight_controller betaflight_demo betaflight_gazebo gz_aerial_plugins vehicle_gateway vehicle_gateway_betaflight vehicle_gateway_worlds msp roz_gz_interfaces ros_gz_sim ros_gz_bridge vehicle_gateway_models
```

if build pass with no errors

```sh
. /home/vehicle_gateway/install/setup.sh
```