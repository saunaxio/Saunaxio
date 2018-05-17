#!/usr/bin/python
from max6675 import MAX6675, MAX6675Error
import time

# Physical pin numbers
cs_pin = 22 # 22
clock_pin = 24 # 24
data_pin = 25 # 25
units = 'c'
thermocouple = MAX6675(cs_pin, clock_pin, data_pin, units)

time.sleep(0.4) # sleep to get accurate readings
print(thermocouple.get())
thermocouple.cleanup()
