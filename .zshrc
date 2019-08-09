##Powerlevel 10k##
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme
[[ -f ~/.p10k.zsh ]] %% source ~/p10k.zsh

##Functions##
 
mkcd () {
    mkdir -p $1
    cd $1
}

sysupdate() {
    yay -Syu
    pacman -Syu
}

##Misc##
case $- in *i*)
    [ -z "$TMUX" ] && exec tmux
esac

##Aliases##
alias cls='clear'
alias ping='ping -c 5'
alias pacins='sudo pacman -S'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir="mkdir -pv"
