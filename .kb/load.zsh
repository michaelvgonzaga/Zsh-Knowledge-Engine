#!/bin/zsh

KB_DIR="$HOME/.kb"

# Make globs with no matches expand to nothing instead of erroring
setopt local_options null_glob

# Loop through all subdirectories in ~/.kb (chat, devops, etc.)
for folder in "$KB_DIR"/*(N/); do
  # Load all *.zsh files in each folder (if any)
  for file in "$folder"/*.zsh(N); do
    source "$file"
  done
done
