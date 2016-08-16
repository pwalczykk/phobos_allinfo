#!/bin/bash
cd ~/Rover/phobos_rover
catkin_make
cd ~/Rover/phobos_control
catkin_make
cd ~/Rover/phobos_simulation
catkin_make
