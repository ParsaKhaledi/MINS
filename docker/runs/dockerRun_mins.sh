#!/bin/bash
xhost + 
docker run -it --rm  --privileged \
	--network host \
    -v /home/user/ws_docker/ws_mins/:/ws_mins/ \
	-v /dev:/dev/ \
	-v /tmp/.X11-unix/:/tmp/.X11-unix/ \
	--env="XAUTHORITY=$XAUTH" -e DISPLAY=$DISPLAY \
    --name mins mins:v3 bash #\
	# /bin/bash -c "cd /ws_mins/ && catkin build && source /ws_mins/devel/setup.bash && \
 	# roslaunch mins subscribe.launch config:=oak-d"
