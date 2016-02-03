#!/bin/bash
set -x

cd
git clone https://github.com/catkin/catkin_tools.git -b pre-0.4.0-linked-devel
cd catkin_tools
python setup.py build
sudo python setup.py install
cd $CATKIN_WS
catkin init   
cd $CATKIN_WS
catkin build
catkin run_tests
