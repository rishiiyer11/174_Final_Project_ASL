#!/bin/bash
set -e

echo "=== Creating virtual environment ==="
python3 -m venv venv

echo "=== Activating virtual environment ==="
source venv/bin/activate

echo "=== Upgrading pip ==="
pip install --upgrade pip

echo "=== Installing project requirements ==="
pip install -r requirements.txt

echo "=== Installing Jupyter and nbconvert ==="
pip install jupyter nbconvert

echo "=== Environment setup complete ==="
echo "To activate later:"
echo "    source venv/bin/activate"