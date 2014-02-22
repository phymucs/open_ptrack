#!/bin/sh
source /opt/ros/hydro/setup.bash
mkdir -p ~/workspace/ros/catkin/src
cd ~/workspace/ros/catkin
catkin_make --force-cmake
mkdir -p ~/workspace/ros/rosbuild
rosws init ~/workspace/ros/rosbuild ~/workspace/ros/catkin/devel
echo "source ~/workspace/ros/rosbuild/setup.bash" >> ~/.bashrc
echo "export KINECT_DRIVER=\"openni\"" >> ~/.bashrc
. ~/.bashrc
# Update libfreenect driver for Kinect:
cd ~/workspace/ros/catkin/src/open_ptrack/scripts
chmod +x update_libfreenect.sh
./update_libfreenect.sh