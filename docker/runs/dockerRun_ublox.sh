#!/bin/bash
sudo chmod 666 /dev/ttyACM0
sudo chmod 666 /dev/ttyACM1
docker run -it --rm --privileged \
	--network host \
       	-v /home/user/ws_docker/ws_ublox/:/ws_ublox/ \
	-v /dev:/dev/ \
       	--name ublox ublox_ros1:v1 \
	/bin/bash -c "roslaunch ublox_gps ublox_device.launch param_file_name:=m8u_rover node_name:=gps"
