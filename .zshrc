#
#   zsh configuration file
#

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
export GOPATH=$HOME/work

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
export PATH

export LDFLAGS="-L/usr/local/opt/zlib/lib"
 # For pkg-config to find zlib you may need to set: export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"
export CPPFLAGS="-I/usr/local/opt/zlib/include"

# Ruby
eval "$(rbenv init -)"

# Java
eval "$(jenv init -)"

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
eval "$(hub alias -s)"

# wolfman
alias wolfman=$HOME/ws/wolfman/bin/wolfman
# trebuchet-cli
alias trebuchet=$HOME/ws/trebuchet-cli/bin/trebuchet

# Python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"
eval "$(pyenv init -)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(direnv hook zsh)"

