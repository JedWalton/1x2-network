#!/bin/bash

## Install OPENJDK 17
# Check if OpenJDK 17 is already installed
if java -version 2>&1 | grep -q "openjdk 17"; then
    echo "OpenJDK 17 is already installed. Skipping Java installation."
else
    sudo apt update
    # Install OpenJDK 17
    sudo apt install -y openjdk-17-jdk
fi

# GRADLE
# Check if Gradle is already installed and matches the required version
if gradle -v 2>&1 | grep -q "Gradle 8.5"; then
    echo "Gradle 8.5 is already installed. Exiting."
    exit 0
fi

# Define the URL and checksum
GRADLE_URL="https://services.gradle.org/distributions/gradle-8.5-bin.zip"
GRADLE_ZIP="gradle-8.5-bin.zip"
EXPECTED_CHECKSUM="9d926787066a081739e8200858338b4a69e837c3a821a33aca9db09dd4a41026"

# Download Gradle
wget "$GRADLE_URL"

# Verify the checksum
echo "Verifying checksum..."
echo "$EXPECTED_CHECKSUM  $GRADLE_ZIP" | sha256sum -c -

# Check if the checksum verification was successful
if [ $? -ne 0 ]; then
    echo "Checksum verification failed. Exiting."
    exit 1
fi

sudo mkdir /opt/gradle
sudo unzip -d /opt/gradle gradle-8.5-bin.zip

echo "Checksum verified successfully."

# Cleanup: Remove the downloaded zip file
rm -f "$GRADLE_ZIP"

# Continue with the rest of the script
# (Unzipping, setting environment variables, etc.)
# Print the instructions
echo "Set Up the Environment Variable:"
echo "1. Add Gradle to your PATH. Edit your .bashrc or .profile file:"
echo "   Run: $ vim ~/.bashrc"
echo ""
echo "2. Add these lines to the file:"
echo "   export GRADLE_HOME=/opt/gradle/gradle-8.5"
echo "   export PATH=\$PATH:\$GRADLE_HOME/bin"
echo ""
echo "3. Run: $ source ~/.bashrc"
echo ""
echo "4. Verify the installation:"
echo "  Run: $ gradle -v"
