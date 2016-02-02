cmake_minimum_required(VERSION 2.8.3)
project(my_test_node)

find_package(catkin REQUIRED)

catkin_package()

install(PROGRAMS scripts/my_test_node DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})
