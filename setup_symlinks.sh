#!/bin/bash

chsh -s /bin/zsh

#Removing premade folders and creating .config.
rm -rf ~/.config/i3
mkdir -p ~/.config

neofetch
rm ~/.config/neofetch/config.conf

#Setting up symlinks
ln -s ~/dotfiles/.config/alacritty /home/$USER/.config/alacritty
ln -s ~/dotfiles/.zshrc /home/$USER/.zshrc
ln -s ~/dotfiles/.config/i3 /home/$USER/.config/i3
ln -s ~/dotfiles/.config/polybar /home/$USER/.config/polybar
ln -s ~/dotfiles/.config/starship.toml /home/$USER/.config/starship.toml
ln -s ~/dotfiles/.config/picom.conf /home/$USER/.config/picom.conf
ln -s ~/dotfiles/.config/neofetch/config.conf /home/$USER/.config/neofetch/config.conf
ln -s ~/dotfiles/.config/nvim /home/$USER/.config/nvim

echo "Dotfiles symlinked successfully!"

#Cloning shell tools
mkdir -p ~/.config/.zshplugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/$USER/.config/.zshplugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions /home/$USER/.config/.zshplugins/zsh-autosuggestions

echo "Shell pluggins added successfully!"
