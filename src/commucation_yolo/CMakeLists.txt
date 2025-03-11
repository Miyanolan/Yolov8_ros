cmake_minimum_required(VERSION 3.0.2)
project(commucation_yolo)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
  sensor_msgs
)

add_message_files(
  FILES
  BoundingBox.msg
  BoundingBoxes.msg
  mask.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
  sensor_msgs
)

catkin_package(
  CATKIN_DEPENDS roscpp rospy std_msgs message_runtime
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

# 如果需要链接其他依赖，可以在此添加
# add_executable(your_node src/your_node.cpp)
# target_link_libraries(your_node ${catkin_LIBRARIES})
