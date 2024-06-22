# My Dotfiles X11

This repository contains my configuration files (dotfiles) for various tools and applications that I use in my development environment.

## Dependencies

To use these dotfiles, you need to have the following dependencies installed:

- [Alacritty](https://github.com/alacritty/alacritty) - A cross-platform, GPU-accelerated terminal emulator.
- [i3](https://i3wm.org/) - A tiling window manager for X11.
- [picom](https://github.com/yshui/picom) - A lightweight compositor for X11.
- [Neovim (nvim)](https://neovim.io/) - A hyperextensible Vim-based text editor.
- [Starship](https://starship.rs/) - The minimal, blazing-fast, and infinitely customizable prompt for any shell.
- [Zsh](https://www.zsh.org/) - A powerful shell with scripting capabilities.
- `xorg` - Base package for the X Window System.
- `xorg-xinit` - To open window managers and DE (exec i3)
- Nerdfonts - For fonts and icons. (ttf-jetbrains-mono-nerd)

## Installation

1. Clone this repository to your home directory:

    ```sh
    git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
    ```
2. Navigate to the dotfiles folder:

   ```sh
    cd dotfiles
    ```
3. Make the install script executable:
  
    ```sh
    chmod +x setup_symlinks.sh
    ```

4. Run it and check for successes message:

    ```sh
    ./setup_symlinks.sh
    ```

## Don't Forget

Make sure you also install the following tools and utilities:

- [zsh-autocompletion](https://github.com/zsh-users/zsh-completions) - Additional completion definitions for Zsh (included in script).
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) - Fish shell-like syntax highlighting for Zsh (included in script).
- `unzip` - Utility for extracting compressed files.
- [npm](https://www.npmjs.com/) - Package manager for JavaScript.
- [bat](https://github.com/sharkdp/bat) - A cat clone with syntax highlighting and Git integration.
- [xh](https://github.com/ducaale/xh) - Friendly and fast tool for sending HTTP requests.
- [jless](https://github.com/PaulJuliusMartinez/jless) - A command-line JSON viewer.
- [neofetch](https://github.com/dylanaraps/neofetch) - System information tool.
- [fzf](https://github.com/junegunn/fzf) - A command-line fuzzy finder.
- [zoxide](https://github.com/ajeetdsouza/zoxide) - A smarter cd command, inspired by z and autojump.
- [lsd](https://github.com/Peltoche/lsd) - A modern replacement for `ls` with additional features.
