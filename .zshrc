# PATH
## brew
export PATH=/opt/homebrew/bin:$PATH

## npm
export PATH=~/.npm-packages/bin:$PATH

## nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## Set local vim as default editor
export EDITOR="/usr/bin/vim"

## rust
export PATH=$PATH:$HOME/.cargo/bin

# ZSH

export ZSH=~/.oh-my-zsh

ZSH_THEME="garyblessington"
DISABLE_AUTO_TITLE="true"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
. `brew --prefix`/etc/profile.d/z.sh

# ALIASES

## utilities
alias k='clear'
alias x='exit'
alias g='git'
alias v='vim'
alias t='tmux -2'
alias m='npm'
alias mm='npm run'
alias mi='npm i'
alias ms='npm start'
alias mi='npm install'
alias mt='npm test'

## tmux
alias ta='tmux attach -t'
alias tl='tmux ls'
alias tn='tmux new -s'

## git
alias ga='git add'
alias gaa='git add -A'
alias gam='git commit -am'
alias gap='git add -p'
alias gcb='git checkout -b'
alias gcm='git commit -m'
alias gco='git checkout'
alias gd='git diff'
alias gdc='git diff --cached'
alias gds='git diff --stat'
alias gpt='git push --follow-tags'
alias gs='git status'
alias pretty='git log --oneline --graph --decorate'
alias stashpull='git stash && git pull && git stash pop'
