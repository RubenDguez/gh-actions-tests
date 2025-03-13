#!/bin/bash

matrix=()

for i in {1..5}
do
  # Store the number inside quotes as "*"
  matrix+=("\"$i\"")
done

path=${{ inputs.path }}
runners=$(find "$path" -type f -name "*.ts" | wc -l | xargs)

echo "matrix=${matrix[@]}" >> "$GITHUB_OUTPUT"
echo "runners=$runners" >> "$GITHUB_OUTPUT"
