#!/bin/bash

source /opt/ros/kinetic/setup.bash
source /home/agh/Rover/phobos_nanopi/devel/setup.bash

export ROS_MASTER_URI="http://10.42.0.1:11311"

until rostopic list; do sleep .1; done

export ROS_IP="$(hostname -I | grep 10.42)"
export ROS_NANOPI_ID="$(hostname -I | grep 10.42 | cut -d . -f 4)"
export ROS_NANOPI_NO=5

roslaunch phobos_nanopi usb_cam_driver.launch &
