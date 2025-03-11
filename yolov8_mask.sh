#!/bin/bash
cd ~/usb_cam_bringup

sleep 1s 
source ./devel/setup.bash
sleep 1s
{
gnome-terminal -t "Launch camera" -x bash -c "roslaunch cam_launch cam_bringup.launch;exec bash"
}&

sleep 1s 

cd ~/yolov8_ros

sleep 1s
conda activate YoloV8
sleep 1s
source ./devel/setup.bash
sleep 1s
# Launch the first ROS launch file
{
gnome-terminal -t "Launch Yolo_mask_pub" -x bash -c "roslaunch commucation_yolo yolov8_mask.launch;exec bash"
}&

