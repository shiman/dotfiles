#!/bin/bash

sudo apt-get install libx11-dev libxinerama-dev libxft-dev
make
sudo make clean install
