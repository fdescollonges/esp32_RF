# esp32_RF

How to control RF 433Hz Outlet switches with Harmony Hub

## 1 - Create HTTP URLs -> RF bridge with ESP32
 
 ESP32 create a webserver with 2 URLs per plug to control: 
 - http://<ip_address>/on1 to turn on plug #1
 - http://<ip_address>/off1 to turn of plug #1

It can be extended to control more plug 
Leds are only used to display power status (RED : Off, GREEN : On, BLUE : Listening, YELLOW : Setting up)

RF433 Library: 
- https://github.com/sui77/rc-switch for library

Docs for Outlets
- https://github.com/sui77/rc-switch/wiki/HowTo_OperateLowCostOutlets
- https://arduinodiy.wordpress.com/tag/433-mhz/

Docs to 433MHz : 
- http://randomnerdtutorials.com/decode-and-send-433-mhz-rf-signals-with-arduino/

## 2 - Configure HA_Bridge to send HTTP request from Harmony by emulating HUE hub
Configure the calls to the HTTP URLs
![Alt text](inamges/img.jpg?raw=true "Title")

Test with HA_Bridge
![Alt text](inamges/img.jpg?raw=true "Title")

## 3 - Add device with Harmony mobile application application 
Use Harmony mobile application to add hue devices to your hub
- https://support.myharmony.com/en-us/harmony-experience-with-philips-hue
![Alt text](inamges/img.jpg?raw=true "Title")



