#!/usr/bin/env python
# -*- coding: utf-8 -*-

import cv2
import torch
import rospy
import numpy as np
from ultralytics import YOLO
from time import time

from std_msgs.msg import Header
from sensor_msgs.msg import Image
from commucation_yolo.msg import BoundingBox,BoundingBoxes
from cv_bridge import CvBridge


class Yolo_Dect:
    def __init__(self):

        weight_path = rospy.get_param('~weight_path', '')
        image_topic = rospy.get_param(
            '~image_topic', '/usb_cam/image_raw')
        bounding_boxes_topic = rospy.get_param('~bounding_boxes_topic', '/yolov8/BoundingBoxes')
        mask_topic = rospy.get_param('~mask_topic', 'yolov8/mask')
        self.camera_frame = rospy.get_param('~camera_frame', '')
        conf = rospy.get_param('~conf', '0.5')
        self.visualize = rospy.get_param('~visualize', 'True')

        if (rospy.get_param('/use_cpu', 'false')):
            self.device = 'cpu'
        else:
            self.device = 'cuda'

        self.model = YOLO(weight_path)
        self.model.fuse()
        self.model.conf = conf

        self.color_image = Image()
        self.getImageStatus = False

        self.classes_colors = {}

        self.color_sub = rospy.Subscriber(image_topic, Image, self.image_callback,
                                          queue_size=1, buff_size=52428800)

        self.position_pub = rospy.Publisher(
            bounding_boxes_topic, BoundingBoxes, queue_size=1)

        self.image_pub = rospy.Publisher(
            '/yolov8/detection_image',  Image, queue_size=1)

        self.bridge = CvBridge() 
        self.mask_pub = rospy.Publisher(mask_topic, Image, queue_size=1)
        
        while (not self.getImageStatus):
            rospy.loginfo("waiting for image.")
            rospy.sleep(2)

    def image_callback(self, image):

        self.boundingBoxes = BoundingBoxes()
        self.boundingBoxes.header = image.header
        self.boundingBoxes.image_header = image.header
        self.getImageStatus = True
        self.color_image = np.frombuffer(image.data, dtype=np.uint8).reshape(
            image.height, image.width, -1)

        self.color_image = cv2.cvtColor(self.color_image, cv2.COLOR_BGR2RGB)

        results = self.model(self.color_image, show=False, conf=0.5)

        self.dectshow(results, image.height, image.width)

        cv2.waitKey(3)

    def dectshow(self, results, height, width):

        self.frame = results[0].plot()
        print(str(results[0].speed['inference']))
        fps = 1000.0/ results[0].speed['inference']
        cv2.putText(self.frame, f'FPS: {int(fps)}', (20,50), cv2.FONT_HERSHEY_SIMPLEX, 0.6, (0, 255, 0), 2, cv2.LINE_AA)

        mask = np.zeros((height, width), dtype = np.uint8)

        if hasattr(results[0], 'masks') and results[0].masks is not None:
            for i, yolo_mask in enumerate(results[0].masks.data):
                yolo_mask = yolo_mask.cpu().numpy()
                yolo_mask_resized = cv2.resize(yolo_mask, (width, height))
                yolo_mask_unit8 = (yolo_mask_resized * 255).astype(np.uint8)
                mask = np.maximum(mask, yolo_mask_unit8)

        for result in results[0].boxes:
            boundingBox = BoundingBox()
            boundingBox.xmin = np.int64(result.xyxy[0][0].item())
            boundingBox.ymin = np.int64(result.xyxy[0][1].item())
            boundingBox.xmax = np.int64(result.xyxy[0][2].item())
            boundingBox.ymax = np.int64(result.xyxy[0][3].item())
            boundingBox.Class = results[0].names[result.cls.item()]
            boundingBox.probability = result.conf.item()
            self.boundingBoxes.bounding_boxes.append(boundingBox)

            # if boundingBox.Class == "person":
            #     cv2.rectangle(mask,
            #     (boundingBox.xmin, boundingBox.ymin),
            #     (boundingBox.xmax, boundingBox.ymax),
            #     255, -1)

        rospy.loginfo(f"Published BoundingBoxes: {self.boundingBoxes}")

        self.position_pub.publish(self.boundingBoxes)
        self.publish_mask(mask)
        self.publish_image(self.frame, height, width)

        if self.visualize :
            cv2.imshow('YOLOv8', self.frame)
            cv2.imshow('mask', mask)  
        if cv2.waitKey(1) & 0xFF == ord('q'):
            rospy.signal_shutdown("Finished the visualization")

    def publish_mask(self, mask):
        try:
            mask_msg = self.bridge.cv2_to_imgmsg(mask, encoding = "mono8")
            mask_msg.header.stamp = rospy.Time.now()
            mask_msg.header.frame_id = self.camera_frame
            self.mask_pub.publish(mask_msg)
        except Exception as e:
            rospy.logerr(f"failed to publish mask: {e}")

    def publish_image(self, imgdata, height, width):
        image_temp = Image()
        header = Header(stamp=rospy.Time.now())
        header.frame_id = self.camera_frame
        image_temp.height = height
        image_temp.width = width
        image_temp.encoding = 'bgr8'
        image_temp.data = np.array(imgdata).tobytes()
        image_temp.header = header
        image_temp.step = width * 3
        self.image_pub.publish(image_temp)



def main():
    rospy.init_node('commucation_yolo', anonymous=True)
    yolo_dect = Yolo_Dect()
    rospy.spin()


if __name__ == "__main__":

    main()