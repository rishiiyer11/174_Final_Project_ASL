#!/bin/bash
set -e

echo "=== Activating virtual environment ==="
source venv/bin/activate

NOTEBOOK="train.ipynb"
OUTPUT="train_output.ipynb"

echo "=== Running notebook ==="
jupyter nbconvert \
    --to notebook \
    --execute "$NOTEBOOK" \
    --output "$OUTPUT"

echo "=== Notebook execution complete ==="
echo "Output saved as: $OUTPUT"