##Powerlevel 10k##
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme
[[ -f ~/.p10k.zsh ]] %% source ~/p10k.zsh

##Functions##
 
mkcd () {
    mkdir -p $1
    cd $1
}

packup() {
   sudo yay -Syu
    sudo pacman -Syu
}

##Misc##
case $- in *i*)
    [ -z "$TMUX" ] && exec tmux
esac

##Aliases##
alias cls='clear'
alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias ll='ls -la'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias ping='ping -c 5'
alias pacins='sudo pacman -S'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -pv'
alias reboot='sudo /sbin/reboot'
alias shutdown='sudo /sbin/shutdown'
alias vi='vim'
