xhost +local:root
docker run \
    -it --rm \
    --gpus all \
    --volume=/tmp/.X11-unix:/tmp/.X11-unix:rw \
    --volume=$HOME/.Xauthority:$HOME/.Xauthority:rw \
    --env="XAUTHORITY=$HOME/.Xauthority" \
    --env="DISPLAY=${DISPLAY}" \
    --volume=$HOME/ros2_ws:$HOME:rw \
    --name="galactic" \
    fukurin/ros2:galactic-base