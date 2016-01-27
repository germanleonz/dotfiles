#
#   zsh configuration file
#

# Load antigen
source /home/germanleonz/.dotfiles/antigen/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# robbyrussell's bundles
antigen bundle git
antigen bundle jira
antigen bundle z
antigen bundle sudo
antigen bundle pip
antigen bundle web-search
antigen bundle docker
antigen bundle jsontools
antigen bundle extract
antigen bundle python

# Syntax highlighting bundle
antigen bundle zsh-users/zsh-syntax-highlighting

# Theme
antigen theme agnoster

antigen apply

# Vim bindings
#bindkey -v

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Aliases
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"

# Default user
export DEFAULT_USER="germanleonz"

# Golang configuration
export GOPATH=$HOME/programacion/go

# Path
PATH=/usr/local/sbin
PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/sbin
PATH=$PATH:/usr/bin
PATH=$PATH:/sbin
PATH=$PATH:/bin
PATH=$PATH:/usr/games
PATH=$PATH:/usr/local/games
PATH=$PATH:$HOME/.rvm/gems/ruby-2.2.1/bin
PATH=$PATH:$HOME/.rvm/gems/ruby-2.2.1@global/bin
PATH=$PATH:$HOME/.rvm/rubies/ruby-2.2.1/bin
PATH=$PATH:$HOME/.rbenv/plugins/ruby-build/bin
PATH=$PATH:$HOME/.rbenv/shims
PATH=$PATH:$HOME/.rbenv/bin
PATH=$PATH:$HOME/.npm-global/bin
PATH=$PATH:$HOME/.rvm/bin
PATH=$PATH:$HOME/.rvm/bin
PATH=$PATH:$HOME/.local/bin
PATH=$PATH:/usr/local/go/bin                          # Golang
PATH=$PATH:$GOPATH/bin                                # Golang
PATH=$PATH:/usr/local/heroku/bin                      # Heroku Toolbelt
PATH=$PATH:$HOME/.apps/idea-IU-141.1532.4/bin         # IntelliJ Idea 14
PATH=$PATH:$HOME/programacion/sift_0.7.1_linux_amd64/ # Sift Tool
export PATH

# Color for CSApprox
export TERM=xterm-256color

# Powerline
if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi

# GitHub's hub
eval "$(hub alias -s)"

# Jira plugin configuration
export JIRA_URL="http://jira.channel-corp.com:8080"
export JIRA_NAME="gleon"
export JIRA_PREFIX="RE-"
export JIRA_DEFAULT_ACTION="dashboard"

# Retail Enterprise - Environment Variables
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PYTHONPATH=/home/germanleonz/dev/RetailEnterprise/retail_api
. ~/.retail_vars.sh
