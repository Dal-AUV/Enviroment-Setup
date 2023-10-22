# ensure homebrew is installed
brew doctor

brew install python@3.8
# Unlink in case you have python@3.7 installed already
brew unlink python
# Make the python command be Python 3.8
brew link --force python@3.8

# install asio and tinyxml2 for Fast-RTPS
brew install asio tinyxml2

# install dependencies for robot state publisher
brew install tinyxml eigen pcre poco

# OpenCV isn't a dependency of ROS 2, but it is used by some demos.
brew install opencv

# install OpenSSL for DDS-Security
brew install openssl
# if you are using ZSH, then replace '.bashrc' with '.zshrc'
echo "export OPENSSL_ROOT_DIR=$(brew --prefix openssl)" >> ~/.bashrc

# install Qt for RViz
brew install qt freetype assimp

# install console_bridge for rosbag2
brew install console_bridge

# install dependencies for rcl_logging_log4cxx
brew install log4cxx spdlog

# install CUnit for Cyclone DDS
brew install cunit

python3 -m pip install rosdistro
brew install sip pyqt5
ln -s /usr/local/share/sip/Qt5 /usr/local/share/sip/PyQt5
brew install graphviz
python3 -m pip install pygraphviz pydot
python3 -m pip install lxml
python3 -m pip install catkin_pkg empy ifcfg lark-parser lxml netifaces numpy pyparsing pyyaml setuptools argcomplete

echo "Dependency installation complete."