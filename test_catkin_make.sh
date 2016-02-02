#!/bin/bash
set -x

cd $CATKIN_WS_SRC
catkin_init_workspace
cd $CATKIN_WS
catkin_make
catkin_make tests
catkin_make run_tests
