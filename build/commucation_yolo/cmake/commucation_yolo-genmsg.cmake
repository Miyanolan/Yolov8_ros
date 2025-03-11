# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "commucation_yolo: 3 messages, 0 services")

set(MSG_I_FLAGS "-Icommucation_yolo:/home/robot/yolov8_ros/src/commucation_yolo/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(commucation_yolo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBox.msg" NAME_WE)
add_custom_target(_commucation_yolo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "commucation_yolo" "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBox.msg" "std_msgs/Header:sensor_msgs/Image"
)

get_filename_component(_filename "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBoxes.msg" NAME_WE)
add_custom_target(_commucation_yolo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "commucation_yolo" "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBoxes.msg" "std_msgs/Header:commucation_yolo/BoundingBox:sensor_msgs/Image"
)

get_filename_component(_filename "/home/robot/yolov8_ros/src/commucation_yolo/msg/mask.msg" NAME_WE)
add_custom_target(_commucation_yolo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "commucation_yolo" "/home/robot/yolov8_ros/src/commucation_yolo/msg/mask.msg" "std_msgs/Header:commucation_yolo/BoundingBox:sensor_msgs/Image"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(commucation_yolo
  "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/commucation_yolo
)
_generate_msg_cpp(commucation_yolo
  "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBox.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/commucation_yolo
)
_generate_msg_cpp(commucation_yolo
  "/home/robot/yolov8_ros/src/commucation_yolo/msg/mask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBox.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/commucation_yolo
)

### Generating Services

### Generating Module File
_generate_module_cpp(commucation_yolo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/commucation_yolo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(commucation_yolo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(commucation_yolo_generate_messages commucation_yolo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBox.msg" NAME_WE)
add_dependencies(commucation_yolo_generate_messages_cpp _commucation_yolo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(commucation_yolo_generate_messages_cpp _commucation_yolo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/yolov8_ros/src/commucation_yolo/msg/mask.msg" NAME_WE)
add_dependencies(commucation_yolo_generate_messages_cpp _commucation_yolo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(commucation_yolo_gencpp)
add_dependencies(commucation_yolo_gencpp commucation_yolo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS commucation_yolo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(commucation_yolo
  "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/commucation_yolo
)
_generate_msg_eus(commucation_yolo
  "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBox.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/commucation_yolo
)
_generate_msg_eus(commucation_yolo
  "/home/robot/yolov8_ros/src/commucation_yolo/msg/mask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBox.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/commucation_yolo
)

### Generating Services

### Generating Module File
_generate_module_eus(commucation_yolo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/commucation_yolo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(commucation_yolo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(commucation_yolo_generate_messages commucation_yolo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBox.msg" NAME_WE)
add_dependencies(commucation_yolo_generate_messages_eus _commucation_yolo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(commucation_yolo_generate_messages_eus _commucation_yolo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/yolov8_ros/src/commucation_yolo/msg/mask.msg" NAME_WE)
add_dependencies(commucation_yolo_generate_messages_eus _commucation_yolo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(commucation_yolo_geneus)
add_dependencies(commucation_yolo_geneus commucation_yolo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS commucation_yolo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(commucation_yolo
  "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/commucation_yolo
)
_generate_msg_lisp(commucation_yolo
  "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBox.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/commucation_yolo
)
_generate_msg_lisp(commucation_yolo
  "/home/robot/yolov8_ros/src/commucation_yolo/msg/mask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBox.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/commucation_yolo
)

### Generating Services

### Generating Module File
_generate_module_lisp(commucation_yolo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/commucation_yolo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(commucation_yolo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(commucation_yolo_generate_messages commucation_yolo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBox.msg" NAME_WE)
add_dependencies(commucation_yolo_generate_messages_lisp _commucation_yolo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(commucation_yolo_generate_messages_lisp _commucation_yolo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/yolov8_ros/src/commucation_yolo/msg/mask.msg" NAME_WE)
add_dependencies(commucation_yolo_generate_messages_lisp _commucation_yolo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(commucation_yolo_genlisp)
add_dependencies(commucation_yolo_genlisp commucation_yolo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS commucation_yolo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(commucation_yolo
  "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/commucation_yolo
)
_generate_msg_nodejs(commucation_yolo
  "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBox.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/commucation_yolo
)
_generate_msg_nodejs(commucation_yolo
  "/home/robot/yolov8_ros/src/commucation_yolo/msg/mask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBox.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/commucation_yolo
)

### Generating Services

### Generating Module File
_generate_module_nodejs(commucation_yolo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/commucation_yolo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(commucation_yolo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(commucation_yolo_generate_messages commucation_yolo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBox.msg" NAME_WE)
add_dependencies(commucation_yolo_generate_messages_nodejs _commucation_yolo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(commucation_yolo_generate_messages_nodejs _commucation_yolo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/yolov8_ros/src/commucation_yolo/msg/mask.msg" NAME_WE)
add_dependencies(commucation_yolo_generate_messages_nodejs _commucation_yolo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(commucation_yolo_gennodejs)
add_dependencies(commucation_yolo_gennodejs commucation_yolo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS commucation_yolo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(commucation_yolo
  "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/commucation_yolo
)
_generate_msg_py(commucation_yolo
  "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBox.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/commucation_yolo
)
_generate_msg_py(commucation_yolo
  "/home/robot/yolov8_ros/src/commucation_yolo/msg/mask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBox.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/commucation_yolo
)

### Generating Services

### Generating Module File
_generate_module_py(commucation_yolo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/commucation_yolo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(commucation_yolo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(commucation_yolo_generate_messages commucation_yolo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBox.msg" NAME_WE)
add_dependencies(commucation_yolo_generate_messages_py _commucation_yolo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/yolov8_ros/src/commucation_yolo/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(commucation_yolo_generate_messages_py _commucation_yolo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/yolov8_ros/src/commucation_yolo/msg/mask.msg" NAME_WE)
add_dependencies(commucation_yolo_generate_messages_py _commucation_yolo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(commucation_yolo_genpy)
add_dependencies(commucation_yolo_genpy commucation_yolo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS commucation_yolo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/commucation_yolo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/commucation_yolo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(commucation_yolo_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(commucation_yolo_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/commucation_yolo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/commucation_yolo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(commucation_yolo_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(commucation_yolo_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/commucation_yolo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/commucation_yolo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(commucation_yolo_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(commucation_yolo_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/commucation_yolo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/commucation_yolo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(commucation_yolo_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(commucation_yolo_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/commucation_yolo)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/commucation_yolo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/commucation_yolo
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(commucation_yolo_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(commucation_yolo_generate_messages_py sensor_msgs_generate_messages_py)
endif()
