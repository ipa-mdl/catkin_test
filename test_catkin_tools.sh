#!/bin/bash
set -x

sudo apt-get install python-catkin-tools
cd $CATKIN_WS
catkin init   
cd $CATKIN_WS
catkin build
catkin run_tests
