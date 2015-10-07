# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

if [[ -s "/usr/local/etc/profile.d/z.sh" ]]; then
  source "/usr/local/etc/profile.d/z.sh"
fi

export EDITOR=vim
export SUDO_EDITOR=vim

# Keep this last in case we want to override anything
if [[ -s "$HOME/.zshrc.local" ]]; then
  source "$HOME/.zshrc.local"
fi

# Aliases
alias sshconf="$EDITOR $HOME/.ssh/config"
