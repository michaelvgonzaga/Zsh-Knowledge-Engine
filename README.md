🔥 ### Zsh Knowledge Engine (ZKE)

A lightweight, fully offline, zero-dependency system for organizing reusable code, snippets, templates, debugging steps, workflows, and automation directly inside your Zsh environment.

Every .zsh file inside the knowledge base becomes an executable function loaded automatically by Zsh.

📌  ### Overview

Instead of scattering notes across apps and documents, the Zsh Knowledge Engine lets you store knowledge as functions you can execute instantly from your terminal.

Perfect for:

command snippets

templates

code scaffolds

debugging steps

DevOps helpers

Pantheon workflows

chat replies

automation

mental models

personal knowledge

ZKE turns your terminal into a knowledge superpower.

✨  ### Features

Fully offline and private

Zero dependencies (pure Zsh)

Auto-loads all .zsh files at startup

Unlimited folder nesting

Escape-safe templates using cat << 'EOF'

Modular and extensible

Works across multiple repositories

Fast, lightweight, and portable

📁 Folder Structure

A ZKE expects at least one .kb folder.

Inside it, create any structure you want:

.kb/
  devops/
  chat/
  creative/
  web/
    backend/
    frontend/
  pantheon/
  misc/


There is no limit.
Any .zsh file at any depth will be discovered and sourced automatically.

🚀  ### Installation

You can place your knowledge base anywhere:

In your home directory

Inside a project repo (recommended)

In multiple repos for different contexts (personal, work, etc.)

Below are the supported patterns.

Option 1: Install KB at ~/.kb (default)

Clone:

git clone https://github.com/yourname/yourrepo ~/.kb


Add this to your ~/.zshrc:

[[ -f "$HOME/.kb/load.zsh" ]] && source "$HOME/.kb/load.zsh"


Reload:

source ~/.zshrc

Option 2: KB Inside a Repo (recommended)

If your .kb folder lives inside a repo like:

~/your_folder_name/.kb


add this to your ~/.zshrc:

# Load Knowledge Base inside this repo
[[ -f "$HOME/your_folder_name/load.zsh" ]] && source "$HOME/your_folder_name/load.zsh"


This way, your knowledge base travels with the repo.

Option 3: Multiple Knowledge Bases

You can load several KBs:

# Personal KB
[[ -f "$HOME/your_folder_name/load.zsh" ]] && source "$HOME/your_folder_name/load.zsh"

# Work / Pantheon KB
[[ -f "$HOME/another_folder_name/load.zsh" ]] && source "$HOME/another_folder_name/load.zsh"


Zsh will merge all .kb/** contents into your environment.

🔧  ### Loader (load.zsh)

A universal loader that recursively sources all .zsh files:

#!/bin/zsh

# Path to this repo’s .kb folder
KB_DIR="$HOME/your_folder_name/.kb"

setopt extendedglob null_glob

# Load all .zsh files at any depth
for file in "$KB_DIR"/**/*.zsh(.N); do
  source "$file"
done


If you use multiple KB repos, each repo should have its own load.zsh.

✍️  ### Creating a Snippet Function

Create a file, e.g.:

.kb/misc/example.zsh


Add:

kb_example() {
  cat << 'EOF'
This is a multiline, escape-safe snippet.
Quotes: "hello" 'world'
Backslashes: \n \t \\
Dollar signs: $PATH $HOME
EOF
}


Use it:

kb_example

🔎  ### Listing Available KB Functions

List all loaded ZKE functions:

typeset -f | grep "^kb_"


List all .zsh files in the KB:

find ~/.kb -type f -name "*.zsh"


Or, if your KB is inside a repo:

find ~/your_folder_name/.kb -type f -name "*.zsh"

🤔 Why This Exists

Most knowledge systems store information in passive notes.

ZKE stores executable knowledge:

ready-to-run functions

repeatable workflows

reusable templates

automation-on-demand

It grows with your workflow and becomes a powerful tool for development, operations, learning, and everyday life.

📜 License

MIT License
Fork, enhance, reuse, and adapt freely.
