# My Dotfiles

This repository contains my configuration files (dotfiles) for various tools and applications that I use in my development environment.

## Dependencies

To use these dotfiles, you need to have the following dependencies installed:

- [Alacritty](https://github.com/alacritty/alacritty) - A cross-platform, GPU-accelerated terminal emulator.
- [i3](https://i3wm.org/) - A tiling window manager for X11.
- [picom](https://github.com/yshui/picom) - A lightweight compositor for X11.
- [Neovim (nvim)](https://neovim.io/) - A hyperextensible Vim-based text editor.
- [Starship](https://starship.rs/) - The minimal, blazing-fast, and infinitely customizable prompt for any shell.
- [Zsh](https://www.zsh.org/) - A powerful shell with scripting capabilities. You'll also need [Oh My Zsh](https://ohmyz.sh/) or a similar Zsh framework.
- [GNU Stow](https://www.gnu.org/software/stow/) - A symlink manager to manage your dotfiles.

## Installation

1. Clone this repository to your home directory:

    ```sh
    git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
    ```

2. Install the necessary dependencies for your system. Here are the commands for installing them on a Debian-based system (like Ubuntu):

    ```sh
    sudo apt update
    sudo apt install alacritty i3 picom neovim zsh stow
    ```

    Additionally, install Starship:

    ```sh
    curl -fsSL https://starship.rs/install.sh | bash
    ```

    And install Oh My Zsh:

    ```sh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```

3. Use `stow` to manage your dotfiles. Navigate to the dotfiles directory and stow the packages:

    ```sh
    cd ~/dotfiles
    stow alacritty
    stow i3
    stow picom
    stow nvim
    stow zsh
    ```

## Configuration

### Alacritty

Copy the `alacritty.yml` file to your configuration directory:

```sh
cp ~/dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
