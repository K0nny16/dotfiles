#!/bin/bash

#Removing premade folders.
rm -rf ~/.config/i3

#Setting up symlinks
ln -s ~/dotfiles/.config/alacritty /home/kowal/.config/alacritty
ln -s ~/dotfiles/.zshrc /home/kowal/.zshrc
ln -s ~/dotfiles/.config/i3 /home/kowal/.config/i3
ln -s ~/dotfiles/.config/polybar /home/kowal/.config/polybar
ln -s ~/dotfiles/.config/starship.toml /home/kowal/.config/starship.toml
ln -s ~/dotfiles/.config/picom.conf /home/kowal/.config/picom.conf
ln -s ~/dotifles/.config/neofetch /home/kowal/.config/neofetch
ln -s ~/dotfiles/.config/nvim /home/kowal/.config/nvim

echo "Dotfiles symlinked successfully!"

#Cloning shell tools
mkdir -p ~/.config/.zshplugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/kowal/.config/.zshplugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions /home/kowal/.config/.zshplugins/zsh-autosuggestions

echo "Shell pluggins added successfully!"
