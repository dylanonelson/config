export ZSH=~/.oh-my-zsh

ZSH_THEME="robbyrussell"
DISABLE_AUTO_TITLE="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. `brew --prefix`/etc/profile.d/z.sh

# KEY BINDINGS

bindkey '˙' backward-word
bindkey '¬' forward-word

# ALIASES

# utilities
alias k='clear'
alias x='exit'
alias s='sublime'
alias f='find . -name'
alias g='git'
alias v='vim'
alias t='tmux'

# git
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gds='git diff --stat'
alias ga='git add'
alias gaa='git add -A'
alias gap='git add -p'
alias gam='git commit -am'
alias gcm='git commit -m'
alias gcb='git checkout -b'
alias gco='git checkout'
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

# postgres
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

# mongodb

export MONGO_PATH=/usr/local/mongodb
export PATH=$PATH:$MONGO_PATH/bin

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Set local vim as default editor
export EDITOR="/usr/local/bin/vim"

# python
alias pyserv='python -m SimpleHTTPServer 8888 &'

# functional testing
alias ndin='node-inspector --web-port=8090; open "http://127.0.0.1:8090/?ws=127.0.0.1:8090&port=5858"'
alias opin='open "http://127.0.0.1:8090/?ws=127.0.0.1:8090&port=5858"'
alias sss='selenium-standalone start'
alias exsh='export SELENIUM_HUB=http://127.0.0.1:4444/wd/hub'
alias exenv='export ENVIRONMENT_UNDER_TEST='
alias ndbg='node --debug-brk $(which grunt)'
