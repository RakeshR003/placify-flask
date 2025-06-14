#!/bin/bash
set -e  # Exit immediately if any command fails

# Install system dependencies
echo "Installing system dependencies..."
sudo apt-get update -qq && sudo apt-get install -y \
    python3-dev \
    build-essential \
    gfortran  # Needed for SciPy/NumPy

# Upgrade pip and setuptools
echo "Upgrading pip and setuptools..."
pip install --upgrade pip setuptools wheel

# Install Python dependencies with preference for binary wheels
echo "Installing Python dependencies..."
pip install \
    --no-cache-dir \
    --prefer-binary \
    -r requirements.txt

# Optional: Verify installations
echo "Verifying critical packages..."
python -c "import blis; print('BLIS successfully imported')" || echo "BLIS import failed"
python -c "import spacy; print('SpaCy successfully imported')" || echo "SpaCy import failed"

echo "Build completed successfully!"
