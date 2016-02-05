#!/bin/bash
set -x

sudo apt-get -y install python-pip
pip install setuptools argparse catkin-pkg distribute PyYAML psutil trollius
pip install git+https://github.com/osrf/osrf_pycommon.gitcd
git clone https://github.com/catkin/catkin_tools.git -b pre-0.4.0-linked-devel
cd catkin_tools
python setup.py build
sudo python setup.py install
cd $CATKIN_WS
catkin init   
cd $CATKIN_WS
catkin build
catkin run_tests
