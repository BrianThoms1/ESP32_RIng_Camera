#include <Arduino.h>
#include "esp_camera.h"
#include <WiFi.h>
#define BOARD_ESP32CAM_AITHINKER
#include "camera_pinout.h"

const int PIR_PIN = 13;
const int FLASH_LED = 4; 

void setupMotion(){
  Serial.println();

  pinMode(PIR_PIN, INPUT);
  pinMode(FLASH_LED, OUTPUT);

  digitalWrite(FLASH_LED, LOW);

  Serial.println("PIR Motion Detector Ready");
}

void handlemotion() {

  static bool motionTriggered = false;

  int motion = digitalRead(PIR_PIN);

  if (motion == HIGH && !motionTriggered) {

    motionTriggered = true;

    Serial.println("Motion Detected!");

    // Flash LED
    digitalWrite(FLASH_LED, HIGH);
    delay(200);
    digitalWrite(FLASH_LED, LOW);

    // Capture image
    camera_fb_t *fb = esp_camera_fb_get();

    if (!fb) {
      Serial.println("Camera capture failed!");
    } else {

      Serial.printf("Image Captured! Size: %d bytes\n", fb->len);

      // Release image buffer
      esp_camera_fb_return(fb);
    }
  }

  // Reset when motion stops
  if (motion == LOW) {
    motionTriggered = false;
  }

  delay(50);
}