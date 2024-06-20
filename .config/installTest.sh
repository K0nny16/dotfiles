#!/bin/bash

# Define the dotfiles directory
DOTFILES_DIR="$HOME/dotfiles"

# Function to create a symlink and remove existing files/directories
create_symlink() {
  source=$1
  target=$2

  # Check if the target file/directory or symlink already exists
  if [ -e "$target" ] || [ -L "$target" ]; then
    echo "Removing existing file/directory: $target"
    rm -rf "$target"  # Remove the existing file/directory or symlink
  fi

  # Create the symlink
  echo "Creating symlink: $target -> $source"
  ln -s "$source" "$target"
}

# Symlink .zshrc
create_symlink "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"

# Symlink .config directories and files
CONFIG_DIR="$DOTFILES_DIR/.config"

# Create the .config directory in the home directory if it doesn't exist
mkdir -p "$HOME/.config"

# List of directories and files to symlink within the .config directory
CONFIG_ITEMS=("alacritty" "i3" "neofetch" "nvim" "polybar" "picom.conf" "starship.toml")

# Iterate over the CONFIG_ITEMS array and create symlinks for each item
for item in "${CONFIG_ITEMS[@]}"; do
  create_symlink "$CONFIG_DIR/$item" "$HOME/.config/$item"
done

echo "Dotfiles have been successfully symlinked."
