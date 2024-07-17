#!/bin/bash
xhost +
docker run -it --rm  --privileged \
	--network host \
       	-v /home/user/ws_docker/ws_mins/:/ws_mins/ \
	-v /tmp/.X11-unix/:/tmp/.X11-unix/ \
	--env="XAUTHORITY=$XAUTH" -e DISPLAY=$DISPLAY \
       	--name rviz mins:v3 \
	/bin/bash -c "source /opt/ros/noetic/setup.bash && \
	rviz -d /ws_mins/src/MINS/mins/launch/display.rviz "