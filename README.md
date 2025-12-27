# Zsh Knowledge Engine (ZKE)

Turn your terminal into a **personal knowledge engine**.

Every `.zsh` file inside `.kb/` becomes a real command you can run instantly.

---

## Features

- Fully offline, zero dependencies
- Unlimited folder nesting
- Auto-loads all `.zsh` files
- Escape-safe multiline templates
- Auto-copy to clipboard
- No file-scanning for metadata
- Supports upstream + inhouse repos

---

## Setup (2-Repo)

### `~/.zshrc`

```zsh
[[ -f "$HOME/Zsh-Knowledge-Engine/load.zsh" ]] && source "$HOME/Zsh-Knowledge-Engine/load.zsh"
[[ -f "$HOME/inhouse_zke/load.zsh" ]] && source "$HOME/inhouse_zke/load.zsh"
```

# Folder Laoyut

```zsh
.kb/
  zke/
    zke_registry/
      zke_registry.zsh
      zke_last.zsh
  php/
  devops/
  local/        # private (gitignored)
```

# Create a kb command
```zsh
kb_php_echo() {
  cat << 'SNIP' | zke_capture
<?php echo "insert text here"; ?>
SNIP
}

# to register command name and description when running zke_list
zke_desc kb_php_echo "prints out sample php echo snippet"
```

# Run created kb command
```zsh
kb_php_echo 
```

# List commands
```zsh
zke_list
```

# Copy Last Output Again
```zsh
zke_copy
```

Your terminal is no longer a tool — it’s your knowledge engine. :)


