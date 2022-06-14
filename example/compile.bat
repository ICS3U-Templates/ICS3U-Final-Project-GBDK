# this bat file will compile the C program to *.gb

# remove old gameboy file from the simulator directory
rm ~/gbdk/simulator/rom/*.gb

# compile to game
/opt/gbdk/bin/lcc -Wa-l -Wl-m -Wl-j -o hello_world.gb hello_world.c

# move it to the simulator directory
cp ./hello_world.gb ~/gbdk/simulator/rom/hello_world.gb