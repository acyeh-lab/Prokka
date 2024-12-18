#!/bin/bash

# Check if the input parameter is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

# Load the prokka module
module load prokka/1.14.5-gompi-2020b

# Run prokka with the provided input file
prokka "$1" --outdir annotation_output --prefix annotated_genome

