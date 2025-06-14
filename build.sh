#!/bin/bash
# Exit on error
set -e
# Install Python dependencies with Poetry
poetry install --no-interaction --no-ansi --no-root
pip install --prefer-binary scipy numpy  # Force pre-compiled wheels
sudo apt-get update && sudo apt-get install -y gfortran
pip install -r requirements.txt
pip install --prefer-binary numpy
pip install --prefer-binary scipy
pip install --upgrade poetry
