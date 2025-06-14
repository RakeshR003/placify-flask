#!/bin/bash
set -e  # Exit on error

# Install Python dependencies using pip
pip install --upgrade pip
pip install -r requirements.txt --no-cache-dir
