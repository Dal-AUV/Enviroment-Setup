# Define the GitHub release URL and the release tag
RELEASE_URL="https://github.com/ros2/ros2/releases/download/release-foxy-20230620"
RELEASE_TAG="release-foxy-20230620"

# Define the installation directory (change this if needed)
INSTALL_DIR="/opt/ros2/foxy"

# Create the installation directory if it doesn't exist
sudo mkdir -p $INSTALL_DIR

# Download the release 
echo "Downloading ROS 2 Foxy for x86_84..."
curl -L -o /tmp/ros2-foxy-20230620-linux-centos-amd64.tar.bz2  "$RELEASE_URL/ros2-foxy-20230620-linux-centos-amd64.tar.bz2"

# Extract the release 
echo "Extracting ROS 2 Foxy for x86_84..."
sudo tar -xvf /tmp/ros2-foxy-20230620-linux-centos-amd64.tar.bz2 -C $INSTALL_DIR

echo "ROS 2 Foxy was successfully installed!"
