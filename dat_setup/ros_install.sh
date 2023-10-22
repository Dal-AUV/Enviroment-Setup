# Define the GitHub release URL and the release tag
RELEASE_URL="https://github.com/ros2/ros2/releases/download/release-foxy-20230322"
RELEASE_TAG="release-foxy-20230322"

# Define the installation directory (change this if needed)
INSTALL_DIR="/opt/ros2/foxy"

# Create the installation directory if it doesn't exist
sudo mkdir -p $INSTALL_DIR

# Download and extract the release assets
echo "Downloading ROS 2 Foxy release for macOS..."
curl -L -o /tmp/ros2_foxy.tar.bz2 "$RELEASE_URL/ros2-foxy-macos.tar.bz2"

# Extract the release archive
echo "Extracting ROS 2 Foxy release..."
sudo tar -xvf /tmp/ros2_foxy.tar.bz2 -C $INSTALL_DIR

# Set up environment variables for ROS 2
echo "Setting up ROS 2 environment..."
echo "source $INSTALL_DIR/local_setup.bash" >> ~/.bash_profile
source ~/.bash_profile

# Clean up temporary files
rm /tmp/ros2_foxy.tar.bz2

echo "ROS 2 Foxy has been successfully installed!"
