
##ssh American Auto Parts##
alias aap='ssh aap'

##Alias##
alias cls='clear'
alias ls='ls --color=auto'
alias ll='ls -la'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias vi='vim'
alias svi='sudo vi'
alias svim='sudo vi'
alias ping='ping -c 5'
alias apt-get="sudo apt-get"
alias updatey="sudo apt-get --yes"
alias mkdir="mkdir -pv"
alias t='./todo.sh'
alias t='./todo.sh'
alias g='git'


##Functions##
mkcd () {
    mkdir -p $1
    cd $1
}