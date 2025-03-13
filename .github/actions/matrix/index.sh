#!/bin/bash

path=${{ inputs.path }} 
runners=$(find "$path" -type f -name "*.ts" | wc -l | xargs)

matrix=()

for i in $(seq 1 $runners)
do
    matrix+=($i)
done

# Join the array elements with commas to form a JSON array
matrix=$(IFS=, ; echo "[${matrix[*]}]")

echo "matrix=${matrix[@]}" >> "$GITHUB_OUTPUT"
echo "runners=$runners" >> "$GITHUB_OUTPUT"
