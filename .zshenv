#
# Defines environment variables for all sessions
#

export PATH=$HOME/.local/bin:$PATH

export EDITOR='vim'
export SUDO_EDITOR='vim'
export PAGER='less'

if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

# Source cargo 
if [[ -s "$HOME/.cargo/env" ]]; then
  source "$HOME/.cargo/env"
fi

if [[ -s "$HOME/.zshenv.local" ]]; then
    source "$HOME/.zshenv.local"
fi
