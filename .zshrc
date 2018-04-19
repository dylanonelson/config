export ZSH=~/.oh-my-zsh

ZSH_THEME="robbyrussell"
DISABLE_AUTO_TITLE="true"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
. `brew --prefix`/etc/profile.d/z.sh

# ALIASES

# utilities
alias k='clear'
alias x='exit'
alias s='scoop'
alias f='find . -name'
alias g='git'
alias v='vim'
alias t='tmux -2'
alias m='npm'
alias mm='npm run'
alias mrm='echo "Here we go..." && rm -rf node_modules && npm i'
alias mi='npm i'
alias ms='npm start'

# tmux
alias ta='tmux attach -t'
alias tl='tmux ls'
alias tn='tmux new -s'

# git
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

# maven
alias mcc='mvn clean compile'
alias mci='mvn clean install'

# ruby
alias irb='pry'
alias be='bundle exec'
alias ber='bundle exec rake'
alias bes='bundle exec rspec'
alias brds='bundle exec rake db:setup'
alias brdm='bundle exec rake db:migrate'
alias rr='bundle exec rake routes'

# rails
alias rc='rails console'
alias rdc='rails dbconsole'
alias rs='rails server'
alias rgmig='rails generate migration'
alias rgmod='rails generate model'
alias rgcon='rails generate controller'

# rbenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# PATH
# npm
export PATH=$PATH:~/.npm-packages/bin

# postgres
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

# mongodb
export MONGO_PATH=/usr/local/mongodb
export PATH=$PATH:$MONGO_PATH/bin

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Set local vim as default editor
export EDITOR="/usr/local/bin/vim"

# python
alias pyserv='python -m SimpleHTTPServer 8888 &'
export PYTHONUSERBASE=~/.pip-packages
export PATH=$PATH:$PYTHONUSERBASE/bin

# rust
export PATH=$PATH:$HOME/.cargo/bin
