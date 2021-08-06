xhost +local:root
docker run \
    -it --rm \
    --gpus all \
    --volume=/tmp/.X11-unix:/tmp/.X11-unix:rw \
    --volume=$HOME/.Xauthority:$HOME/.Xauthority:rw \
    --env="XAUTHORITY=$HOME/.Xauthority" \
    --env="DISPLAY=${DISPLAY}" \
    --volume=$HOME/ros2_ws:$HOME:rw \
    --name="ros2-bridge-work" \
    --network=host \
    --env="ROS_MASTER_URI=http://localhost:11311" \
    fukurin/ros2:galactic-bridge 