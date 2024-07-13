#!/bin/bash

docker run -it --rm  --privileged --network host -v /dev/:/dev/ -v /tmp/.X11-unix/:/tmp/.X11-unix/ --env="XAUTHORITY=$XAUTH" -e DISPLAY=$DISPLAY --name oak luxonis/depthai-ros:noetic-latest /bin/bash -c "source /ws/devel/setup.bash && roslaunch depthai_examples stereo_inertial_node.launch enableRviz:=false stereo_fps:=30 enableSpatialDetection:=false depth_aligned:=false"
