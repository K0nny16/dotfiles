#!/bin/bash

#Removing premade folders.
rm -rf ~/.config/i3
rm -rf ~/.config/neofetch

#Setting up symlinks
ln -s ~/dotfiles/.config/alacritty ~/.config/alacritty
ln -s ~/dotfiles/.zshrc ~/zshrc
ln -s ~/dotfiles/.config/i3 ~/.config/i3
ln -s ~/dotfiles/.config/polybar ~/.config/polybar
ln -s ~/dotfiles/.config/starship.toml ~/.config/starship.toml
ln -s ~/dotfiles/.config/picom.conf ~/.config/picom.conf
ln -s ~/dotifles/.config/neofetch ~/.config/neofetch
ln -s ~/dotfiles/.config/nvim ~/.config/nvim

#Cloning shell tools
mkdir -p ~/.config/.zshplugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/.zshplugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.config/.zshplugins


echo "Dotfiles symlinked successfully!"
