# Define the GitHub release URL and the release tag
RELEASE_URL="https://github.com/bfgroup/b2/releases/download/4.10.1"
RELEASE_TAG="b2-4.10.1"

# Define the installation directory (change this if needed)
INSTALL_DIR="/opt/b2/4.10.1"

# Create the installation directory if it doesn't exist
sudo mkdir -p $INSTALL_DIR

# Download the release 
echo "Downloading b2..."
curl -L -o /tmp/b2-4.10.1.tar.bz2   "$RELEASE_URL/b2-4.10.1.tar.bz2"

# Extract the release
echo "Extracting b2..."
sudo tar -xvf /tmp/b2-4.10.1.tar.bz2 -C $INSTALL_DIR

echo "b2 was successfully installed!"
