# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="/Users/vafhudr/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

##Alias##
alias q='exit'
alias c='clear'
alias h='history'
alias cs='clear; ls'
alias t='time'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
 
alias ls='ls -lFhG'
alias ll='ls -laFhG'

alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias home='cd ~'
alias root='cd /'

alias vimrc='vim ~/.vimrc'
alias svimrc='source ~/.vimrc'
alias zshrc='vim ~/.zshrc'
alias szshrc='source ~/.zshrc'
alias tmuxrc='vim ~/.tmux.conf'
alias stmuxrc='source ~/.tmux.conf'
alias p10k='vim ~/.p10k.zsh'

alias ping='ping -c 5'
alias mkdir='mkdir -pv'
alias htop='sudo htop'
alias weather='curl http://wttr.in/'

##Functions##
mkcd () {
    mkdir -p $1
    cd $1
   }

extract() {
    if [ -z ${1} ] || [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
        echo "Usage: extract <archive> [directory]"
        echo "Example: extract presentation.zip."
        echo "Valid archive types are:"
        echo "tar.bz2, tar.gz, tar.xz, tar, bz2, gz, tbz2,"
        echo "tbz, tgz, lzo, rar, zip, 7z, xz, txz, lzma and tlz"
    else
        case "$1" in
            *.tar.bz2|*.tbz2|*.tbz)         tar xvjf "$1" ;;
            *.tgz)                          tar zxvf "$1" ;;
            *.tar.gz)                       tar xvzf "$1" ;;
            *.tar.xz)                       tar xvJf "$1" ;;
            *.tar)                          tar xvf "$1" ;;
            *.rar)                          7z x "$1" ;;
            *.zip)                          unzip "$1" ;;
            *.7z)                           7z x "$1" ;;
            *.lzo)                          lzop -d  "$1" ;;
            *.gz)                           gunzip "$1" ;;
            *.bz2)                          bunzip2 "$1" ;;
            *.Z)                            uncompress "$1" ;;
            *.xz|*.txz|*.lzma|*.tlz)        xz -d "$1" ;;
            *) echo "Sorry, '$1' could not be decompressed." ;;
        esac
    fi
}
