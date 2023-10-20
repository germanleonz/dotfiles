#
#   zsh configuration file
#
zmodload zsh/zprof

# Load antigen
source $HOME/.dotfiles/antigen/antigen.zsh
antigen init $HOME/.dotfiles/.antigenrc

# Vim bindings
#bindkey -v

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# Default user
export DEFAULT_USER="germanleonz"

# Golang configuration
export GOBIN=$HOME/prog/go/
export GOPATH=$HOME/prog/go/src

# OhMyZsh custom folder
export ZSH_CUSTOM=$HOME/.oh-my-zsh/custom

export CONFLUENT_HOME=$HOME/prog/confluent-6.2.0

# Path
PATH=$PATH:$HOME/.local/bin
PATH=$PATH:$HOME/.npm-global/bin
PATH=$PATH:/usr/local/sbin
PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/sbin
PATH=$PATH:/usr/bin
PATH=$PATH:/sbin:/bin
PATH=$PATH:/usr/games
PATH=$PATH:/usr/local/games
PATH=$PATH:/usr/local/go/bin
PATH=$PATH:$GOPATH/bin
PATH=$PATH:$HOME/bin/sift_0.7.1_linux_amd64/          # Sift
PATH=$PATH:/usr/local/opt/postgresql@11/bin
PATH=$PATH:$CONFLUENT_HOME/bin
PATH=$PATH:$HOME/prog/git-chain/bin
export PATH


#export LDFLAGS="-L/usr/local/opt/zlib/lib"
export LDFLAGS="-L/usr/local/opt/bzip2/lib -L/usr/local/opt/zlib/lib"
 # For pkg-config to find zlib you may need to set: export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"
#export CPPFLAGS="-I/usr/local/opt/zlib/include"
export CPPFLAGS="-I/usr/local/opt/bzip2/include -I/usr/local/opt/zlib/include"

# Ruby
export PATH="$PATH:$HOME/.rbenv/bin"
_evalcache rbenv init -

# Java
_evalcache jenv init -

# Color for CSApprox
export TERM=xterm-256color

# Powerline
#if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
#    source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
#fi

# Powerlevel10k
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# GitHub's hub
_evalcache hub alias -s

# wolfman
alias wolfman=$HOME/ws/wolfman/bin/wolfman
# trebuchet-cli
alias trebuchet=$HOME/ws/trebuchet-cli/bin/trebuchet

# Python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"
_evalcache pyenv init -

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Direnv
_evalcache direnv hook zsh

# WS Germinate 
#alias germinate=$HOME/ws/germinate/bin/germinate
#source /Users/gzapata/.config/wealthsimple/rbenv/config.zsh
#source /Users/gzapata/.config/wealthsimple/nvm/config.zsh

# Android Home
export ANDROID_HOME=/Users/gzapata/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/emulator

# Android SDK
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk

# Wealthsimple CLI
eval "$(ws hook zsh)"

# Issues with ruby and forks
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export PATH="/Users/gzapata/ws/ares/node_modules/@wealthsimple/transinator:$PATH"
