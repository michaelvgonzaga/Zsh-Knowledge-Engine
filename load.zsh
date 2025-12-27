#!/bin/zsh

# Prevent re-loading loops
[[ -n "${ZKE_INHOUSE_LOADED:-}" ]] && return
export ZKE_INHOUSE_LOADED=1

KB_DIR="$HOME/inhouse_zke/.kb"

# Silence noisy modes
unsetopt xtrace verbose 2>/dev/null
set +x 2>/dev/null

# 1) Always load registry first (so zke_desc exists)
REGISTRY="$KB_DIR/zke/zke_registry/zke_registry.zsh"
[[ -f "$REGISTRY" ]] && source "$REGISTRY"

# 2) Load all other .zsh files (sorted)
setopt null_glob

for file in ${(f)"$(find "$KB_DIR" -type f -name "*.zsh" -print | sort)"}; do
  [[ "$file" == "$REGISTRY" ]] && continue
  case "$file" in
    */load.zsh) continue ;;
  esac
  source "$file"
done
