#!/bin/bash
pip install --prefer-binary scipy numpy  # Force pre-compiled wheels
sudo apt-get update && sudo apt-get install -y gfortran
pip install -r requirements.txt
pip install --prefer-binary numpy
pip install --prefer-binary scipy
