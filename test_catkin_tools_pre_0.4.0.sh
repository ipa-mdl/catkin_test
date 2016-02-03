#!/bin/bash
set -x

sudo apt-get -y install python-pip 
cd
git clone https://github.com/catkin/catkin_tools.git -b pre-0.4.0-linked-devel
cd catkin_tools
sudo pip install -r requirements.txt
python setup.py build
sudo python setup.py install
cd $CATKIN_WS
catkin init   
cd $CATKIN_WS
catkin build
catkin run_tests
