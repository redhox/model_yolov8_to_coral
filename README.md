# model_yolov8_to_coral

This project aims to provide a Docker container that facilitates the conversion of YOLOv8 models to TensorFlow Lite (TFLite) format. This conversion is crucial for deploying YOLOv8 models on edge devices, such as google-coral ,smartphones, IoT devices, and embedded systems.

## Prerequisites

    Docker installed on your system.
    A trained YOLOv8 model in PyTorch format (.pt).

## Installation

1. Clone this repository to your local machine.
2. Place your tflite model in the `model_yolo` folder at the root of the project.
3. use docker-compose up


## Project Structure
        .
        ├── app.py
        ├── docker-compose.yml
        ├── Dockerfile
        ├── model_yolo
        │   ├── yolov8s_672.pt
        │   └── yolov8s_672_saved_model
        │       ├── assets
        │       ├── fingerprint.pb
        │       ├── metadata.yaml
        │       ├── saved_model.pb
        │       ├── variables
        │       │   ├── variables.data-00000-of-00001
        │       │   └── variables.index
        │       ├── yolov8s_672_float16.tflite
        │       ├── yolov8s_672_float32.tflite
        │       ├── yolov8s_672_full_integer_quant_edgetpu.log
        │       ├── yolov8s_672_full_integer_quant_edgetpu.tflite
        │       ├── yolov8s_672_full_integer_quant.tflite
        │       ├── yolov8s_672_int8.tflite
        │       └── yolov8s_672_integer_quant.tflite
        └── README.md
