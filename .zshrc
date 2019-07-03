# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/flo/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source $HOME/.profile

# Add color to shell prompt
autoload -U colors && colors
PS1="%{$fg[green]%}[%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%{$fg[green]%}]%{$reset_color%}$ "

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    alias ls='ls --color'
fi
