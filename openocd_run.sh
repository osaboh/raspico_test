#!/bin/sh

# Open On-Chip Debugger 0.10.0+dev-g14c0d0d-dirty (2021-02-07-21:02)
# Licensed under GNU GPL v2
# For bug reports, read
#         http://openocd.org/doc/doxygen/bugs.html

cd ~/Dev/PiPico/Tools/openocd
sudo openocd -f interface/picoprobe.cfg -f target/rp2040.cfg -s tcl
