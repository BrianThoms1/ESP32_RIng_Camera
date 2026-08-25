**ESP32 Ring Camera Embedded System**

A smart security camera prototype built around with a ESP32-CAM, combining embedded hardware, motion detection, WIFI( camera and an IOS application. 
The project integrates an OV2640 camera, PIR motion sensor, GPIO- controlled indicators, am ESP32-hosted HTTP server, and a Swift/SwiftUI mobile interface. 

The goal of this project was to explore embedded systems, hardware-software integration, networking, and mobile application development by developing a functional security-camera system inspired by modern smart doorbell cameras.


**Features**

📹 Real-time ESP32-CAM video streaming over Wi-Fi
🚶 PIR-based motion detection
📸 Camera snapshot/capture functionality
💡 GPIO-controlled external motion indicator LED
🔦 ESP32-CAM onboard flash LED control
🌐 ESP32-hosted HTTP camera server
📱 Swift/SwiftUI iOS application
📡 Communication between the ESP32-CAM and mobile application over the local network
🛠️ Integrated embedded hardware and software architecture


**Hardware**

Component                                                   Purpose

ESP32- CAM AI Thinker                             Main microcontroller and WIFI interface

OV2640 Camera                                     Image capture and live video

HC-SR501 PIR Sensor                               Motion Detection 

ESP32-CAM-MB                                      USB Programming Interface

External LED                                      Motion/Status Indication

Resistor                                          LED Current Limiting

Breadboard                                        Prototype hardware integration

Jumper Wires                                      Electrical connection


**GPIO Configuration**

Device                                               ESP32-CAM-Pin

PIR Motion Sensor                                       GPIO 13

External Status LED                                     GPIO 14

Onboard Flash LED                                       GPIO 4

External Buzzer                                         GPIO 14



**Software**

Embedded Firmware 

The ESP32-CAM firmware handles:

Camera initialization
Wi-Fi connectivity
HTTP server operation
Live camera streaming
Image capture
PIR sensor monitoring
GPIO output control
Flash/status LED behavior

The embedded portion is implemented primarily using C/C++ with the Arduino ESP32 framework.


**iOS Application**

A companion iOS application was developed using Swift and SwiftUI.

The application provides a mobile interface for interacting with the ESP32-CAM over the local network, including viewing camera output and integrating camera functionality into a dedicated mobile interface.



Project Structure
ESP32_Ring_Camera/
│
├── firmware/
│   ├── CameraWebServer.ino
│   ├── app_httpd.cpp
│   ├── board_config.h
│   ├── camera_pins.h
│   └── ...
│
├── ios-app/
│   └── Ring_Camera/
│       ├── Ring_Camera.xcodeproj
│       ├── ContentView.swift
│       ├── Ring_CameraApp.swift
│       └── ...
│
├── Images/
├── Development_log/
└── README.md



































