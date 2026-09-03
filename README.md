

https://github.com/user-attachments/assets/83374464-0aac-466d-bc3e-6327fb7697a5

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



Development Progress

Configure ESP32-CAM and OV2640 camera

Establish Wi-Fi connection

Implement live camera streaming

Implement snapshot capture endpoint

Integrate HC-SR501 PIR motion sensor

Implement motion detection

Integrate external GPIO status LED

Control ESP32-CAM onboard flash LED

Run camera streaming and motion detection simultaneously

Develop initial Swift/SwiftUI iOS interface

Connect iOS application to ESP32-CAM over the network

Expand motion-event history. (work in Progress) 

Improve mobile application UI. (work in Progress) 

Develop a permanent enclosure. (work in Progress) 

**Engineering Challenges**

Several hardware and software issues were encountered during development, including:

Debugging PIR sensor signals that remained continuously HIGH
Managing ESP32-CAM GPIO availability alongside camera peripherals
Integrating motion detection without interrupting camera streaming
Debugging onboard flash LED behavior
Configuring ESP32-CAM programming and serial communication
Implementing HTTP camera endpoints
Connecting the Swift application to the ESP32-CAM network interface
Debugging live-stream behavior across the embedded web interface and mobile application

These issues were resolved through component-level testing, GPIO debugging, serial monitoring, incremental firmware integration, and hardware/software isolation testing.

**Attribution**

This project builds upon the Espressif ESP32 CameraWebServer example and ESP32 camera libraries.

The underlying camera initialization, HTTP streaming infrastructure, and portions of the web-server implementation originate from Espressif's example software and retain their respective copyright and license notices.

The project extends and integrates this foundation with custom functionality including motion sensing, GPIO-based hardware control, camera capture behavior, system integration, custom interface functionality, and a Swift/SwiftUI iOS application.

**Technologies**

Embedded: ESP32-CAM, ESP32, OV2640, GPIO, PIR sensors
Languages: C/C++, Swift
Mobile: SwiftUI, Xcode
Networking: Wi-Fi, HTTP
Tools: Arduino IDE, Visual Studio Code, Git, GitHub
Hardware: Breadboarding, sensor integration, embedded debugging

**Future Improvements**

Future development may include:

Motion-event history within the iOS application
Automatic storage of motion-triggered images
Improved camera dashboard
Push-style motion notifications
Improved enclosure and hardware packaging
Additional security and authentication for network communication


































