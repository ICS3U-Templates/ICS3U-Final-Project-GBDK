#!/bin/bash

# Created by: Mr Coxall
# Created on: Jun 2022
# Created for: To automate the generation of gameboy files

# remove old gameboy file from the simulator directory
rm ~/GBDK/simulator/rom/*.gb

# compile to game
/opt/gbdk/bin/lcc -Wa-l -Wl-m -Wl-j -o $1.gb $1.c

# move it to the simulator directory
cp ./$1.gb ~/GBDK/simulator/rom/$1.gb