#!/bin/bash
set -x

sudo apt-get -y install python-pip
sudo pip install setuptools argparse catkin-pkg distribute PyYAML psutil trollius
sudo pip install git+https://github.com/osrf/osrf_pycommon.git
cd
git clone https://github.com/catkin/catkin_tools.git
cd catkin_tools
python setup.py build
sudo python setup.py install
cd $CATKIN_WS
catkin init   
cd $CATKIN_WS
catkin build
catkin run_tests
