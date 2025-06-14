#!/bin/bash
set -e

# Install system dependencies
echo "Installing system dependencies..."
apt-get update -qq
apt-get install -y \
    python3-dev \
    build-essential \
    gfortran \
    libopenblas-dev

# Upgrade pip and setuptools
echo "Upgrading pip and setuptools..."
pip install --upgrade pip setuptools wheel

# Install Python dependencies with specific versions and prefer binaries
echo "Installing Python dependencies..."
pip install \
    --no-cache-dir \
    --prefer-binary \
    blis==0.7.9 \
    spacy==3.5.0 \
    -r requirements.txt

echo "Verifying installations..."
python -c "import blis; print('BLIS successfully imported')" || echo "BLIS import failed"
python -c "import spacy; print('SpaCy successfully imported')" || echo "SpaCy import failed"

echo "Build completed successfully!"
