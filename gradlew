#!/bin/bash
# Gradle wrapper for Unix/Linux systems
# This script is for Jenkins which runs on Linux

# Set working directory
BASEDIR=$(dirname "$0")
cd "$BASEDIR"

# Check if we have gradle installed
if command -v gradle &> /dev/null; then
    echo "Using system Gradle"
    gradle "$@"
else
    echo "ERROR: Gradle not found on Jenkins server!"
    echo "Please install Gradle or check configuration"
    exit 1
fi
