#!/bin/bash
set -x

sudo apt-get -y install python-pip
pip install empy sphinx_rtd_theme nose coverage flake8 mock --upgrade
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
