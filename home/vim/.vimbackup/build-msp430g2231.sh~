#!/bin/bash

MCU=msp430g2231
msp430-gcc -Os -Wall -g -mmcu=$MCU -o breathing-led-$MCU.elf breathing-led.c
sudo mspdebug rf2500 "prog breathing-led-$MCU.elf"
