export PS1="\W$ "
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
export PATH=/usr/local/sbin:$PATH
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
eval "$(rbenv init -)"

# Command aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias go='git checkout '
alias be='bundle exec '
alias fs='foreman start'
alias rspec="bundle exec rspec"
alias rails="bundle exec rails"
alias rake="bundle exec rake"
alias es="ember server"
