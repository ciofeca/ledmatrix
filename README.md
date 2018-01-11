# Description

Ticker using an 8x8 LED matrix (8+8 pins for rows and columns) and an Arduino Diecimila.

Will show scrolling the most recent string sent to the serial port (speed 9600, terminated by linefeed).

![pic](https://1.bp.blogspot.com/-cbtCdta_tsQ/WldlSPNeF6I/AAAAAAAAPeg/nlkeo47q-7cpiLkphRMdR9YrN4gpBaY2gCLcBGAs/s400/ArduinoTicker.jpg)

# Hardware

* Arduino Diecimila
* LED matrix LTP14088A-03
* 8 resistors 

# Special characters

The string may contain ASCII characters, or:

* Italian accented vowels: à è é ì ò ù
* Euro symbol (€): use the character ø
* Scrolling direction: use ö for normal and ë for reverse
* Reboot command: use the character ç

