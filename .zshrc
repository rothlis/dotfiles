# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
alias zshconfig="st ~/.zshrc"
alias ohmyzsh="st ~/.oh-my-zsh"
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"

alias gcb="git branch --merged | grep -v '\*' | xargs -n 1 git branch -d"

alias chrono:locales:admin="localeapp pull | rake locales:admin:to_json"
alias chrono:locales:public="localeapp pull | rake locales:public:to_json"

alias chrono:deploy:staging="git pull; git push; git push staging develop:master; heroku run rake db:migrate --remote staging; heroku restart --remote staging"
alias chrono:deploy:demo="git pull; git push; git push demo master; heroku run rake db:migrate --remote demo; heroku restart --remote demo"
alias chrono:deploy:production="git pull; git push; git push production master; heroku run rake db:migrate --remote production; heroku restart --remote production"

alias rails:console:staging="heroku run rails c --remote staging"
alias rails:console:demo="heroku run rails c --remote demo"
alias rails:console:production="heroku run rails c --remote production"

alias rails:logs:staging="heroku logs -t --remote staging"
alias rails:logs:demo="heroku logs -t --remote demo"
alias rails:logs:production="heroku logs -t --remote production"

alias rails:server:start="puma -p 5000"
alias rails:worker:start="bundle exec rake jobs:work"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rails git github ruby rvm brew npm sublime)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/bin:/bin:/usr/sbin:/bsin:/usr/local/bin:/usr/X11/bin:/Users/rothlis/.rvm/bin:/Applications/Postgres.app/Contents/MacOS/bin

# RVM
[[ -s "/Users/rothlis/.rvm/scripts/rvm" ]] && source "/Users/rothlis/.rvm/scripts/rvm"

# NVM
[[ -s /Users/rothlis/.nvm/nvm.sh ]] && . /Users/rothlis/.nvm/nvm.sh # This loads NVM
