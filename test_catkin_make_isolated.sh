#!/bin/bash
set -x

cd $CATKIN_WS_SRC
catkin_init_workspace
cd $CATKIN_WS
catkin_make_isolated
catkin_make_isolated --catkin-make-args tests
catkin_make_isolated --catkin-make-args run_tests

