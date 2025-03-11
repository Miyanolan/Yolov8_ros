std_msgs/Header header
std_msgs/Header image_header
sensor_msgs/Image mask         # 动态物体的二值 mask
commucation_yolo/BoundingBox[] bounding_boxes  # 动态物体的 bounding box 信息
