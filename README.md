# Zsh Knowledge Engine

The Zsh Knowledge Engine is a lightweight, fully offline, zero-dependency system for organizing snippets, templates, commands, and automation into modular folders. Every `.zsh` file inside the knowledge base becomes an executable function that loads automatically when Zsh starts.

## Overview

This project acts as a personal, executable knowledge base. Instead of storing information across apps, documents, and notes, the Zsh Knowledge Engine keeps everything local and usable directly from the terminal. It is ideal for storing:

- command snippets  
- templates  
- code blocks  
- debugging steps  
- DevOps helpers  
- Pantheon workflows  
- chat replies  
- automation functions  

All content is organized as Zsh functions, making knowledge instantly accessible and actionable.

## Features

- Fully offline and private  
- Zero external dependencies (pure Zsh)  
- Modular folder structure  
- Auto-discovers and loads all `.zsh` files  
- Supports safe multiline and escape-preserving templates  
- Extremely lightweight and fast  
- Unlimited expansion by adding more folders and files  

## Folder Structure

~/.kb/
load.zsh
devops/
chat/
frontend/
backend/
misc/

Every `.zsh` file defines one or more functions that become available globally.

## Installation

Clone this repository into your home directory:

```sh
git clone https://github.com/yourname/yourrepo ~/.kb
```
Add the loader to your .zshrc:
```sh
[[ -f "$HOME/.kb/load.zsh" ]] && source "$HOME/.kb/load.zsh"
```
Reload Zsh:
```sh
source ~/.zshrc
```
Creating a Snippet Function
Create a file in any KB folder, for example:
~/.kb/misc/example.zsh

```sh
kb_example() {
  cat << 'EOF'
This is a multiline, escape-safe snippet.
Quotes: "hello" 'world'
Backslashes: \n \t \\
Dollar signs: $PATH $HOME
EOF
}
```
Use it:
```sh
kb_example
```
Listing Available KB Functions
Show all functions that follow the kb_ naming pattern:
```sh
typeset -f | grep "^kb_"
```
List all module files:
```sh
find ~/.kb -type f -name "*.zsh"
```
Why This Exists
The Zsh Knowledge Engine solves the problem of scattered notes and snippets by turning knowledge into executable functions. It creates a centralized, organized, and offline system that grows as your workflow grows.

License
This project is licensed under the MIT License.
