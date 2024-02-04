import os

# install ROS 2 Foxy on Mac (x86-84)
os.system ("sh ./dat_setup/ros_dependencies.sh")
os.system("sh ./dat_setup/ros_install.sh")

# install Boost on Mac (x86-84)
os.system("sh ./dat_setup/boost_install.sh")
