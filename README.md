# YOLOv8 ROS Integration

This repository integrates **YOLOv8** with **ROS** for object detection. It captures image frames using a camera, runs object detection using YOLOv8, and publishes the results (masks and bounding boxes) as ROS topics.

## Requirements

Before running the system, ensure that you have the following dependencies installed:

- **ROS Noetic** (or compatible version)
- **YOLOv8 model** (pre-trained)
- **Python 3** with the necessary libraries (e.g., `torch`, `cv2`, etc.)
- **CUDA 12.1** (for GPU acceleration)
- **OpenCV 4.2**
- **conda** (for environment management)
- **Torch2.4 in conda** 

## Installation

### 1. Clone this repository

Clone the repository using the following command:

```bash
git clone https://github.com/Miyanolan/yolov8_ros.git
cd yolov8_ros
```

### 2. Set up ROS workspace

Make sure to source your ROS environment:

```bash
source /opt/ros/noetic/setup.bash
```

### 3. Set up Conda environment for YOLOv8

Create and activate a conda environment for YOLOv8:

```bash
conda create --name YoloV8 python=3.8
conda activate YoloV8
```

Install dependencies from the `requirements.txt` file:

```bash
pip install -r requirements.txt
```

Make sure `torch` version is compatible with your CUDA setup (CUDA 12.1). If necessary, you can specify the compatible version of `torch` when installing.

### 4. Build your ROS workspace

In the ROS workspace, build the packages:

```bash
cd ~/yolov8_ros
catkin_make
```

## Running the System

To run the system, execute the following script to launch both the camera and YOLOv8 detection nodes:

### 1. Launch Camera Node

The camera node is responsible for bringing up the USB camera using ROS.

```bash
./yolov8_mask.sh
```

This will start the ROS camera node and the YOLOv8 detection node.

### 2. Launch YOLOv8 Node

This will activate the YOLOv8 environment, source the necessary setup files, and launch the YOLOv8 node for object detection.

The script starts two terminals:

- **Camera launch terminal**: Brings up the USB camera feed.
- **YOLOv8 launch terminal**: Starts the YOLOv8 node for object detection and publishes `mask` and `bbox` topics.

## How It Works

The `yolov8_mask.sh` script performs the following actions:

1. **Start Camera Node**:
    - It sources the ROS environment and launches the USB camera node.

2. **Activate Conda Environment**:
    - It activates the `YoloV8` conda environment that contains the necessary Python dependencies.

3. **Start YOLOv8 Object Detection Node**:
    - It sources the ROS setup and launches the YOLOv8 object detection node with the specified launch file.

4. **Outputs**:
    - The YOLOv8 node publishes two main topics:
        - `mask`: Contains the segmentation masks for detected objects.
        - `bbox`: Contains the bounding boxes for detected objects.

## ROS Topics

- **`/yolov8/mask`**: This topic publishes the segmentation mask of the detected objects.
- **`/yolov8/BoundingBoxes`**: This topic publishes the bounding boxes of the detected objects.

### Example: Subscribing to Topics

To visualize the mask and bounding box topics in ROS, you can use the following commands:

```bash
rostopic echo /yolov8/mask
rostopic echo /yolov8/BoundingBoxes
```

These commands will display the published data in the terminal.

## Troubleshooting

- **Camera Node Issues**: If the camera isn't displaying, check if the camera is connected properly and verify that the USB camera driver is working in ROS.
- **YOLOv8 Issues**: If YOLOv8 isn't detecting objects, verify that the model weights are loaded correctly and ensure that the camera node is publishing images.
- **Topic Debugging**: If the `mask` or `bbox` topics are not publishing, ensure that the YOLOv8 launch file is correctly configured and that the node is running.


Feel free to contribute to this project by forking and submitting pull requests. You can help by adding new features, improving performance, or fixing bugs.
