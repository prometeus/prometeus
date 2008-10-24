#-----.zshrc----#

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _approximate
zstyle :compinstall filename '/home/prometeus/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
#### Promopt #################
export PROMPT="%n@%m %c %# "
##############################

####Aliases###################
alias ls='ls --color=auto'
alias cd='cd $1; ls $1'
alias poweroff='sudo poweroff'
##############################
