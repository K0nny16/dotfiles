#Run startx on login in tty1 
if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
    startx
fi


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kowal/.zshrc'

autoload -Uz compinit
compinit
eval "$(starship init zsh)"
neofetch

#Plugins
source ~/.config/.zshplugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/.zshplugins/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(zoxide init --cmd cd zsh)"

#Alias
alias ls="lsd"
alias lla="ls -la"
alias lt="ls --tree"
alias code="vscodium"
alias vim="nvim"

#Binds
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

