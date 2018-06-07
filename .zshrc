# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

if [[ -s "/usr/local/etc/profile.d/z.sh" ]]; then
  source "/usr/local/etc/profile.d/z.sh"
fi

$HOME/.dotfiles/check-status.sh

export EDITOR=vim
export SUDO_EDITOR=vim


if [[ -s "$HOME/.zshrc.golang" ]]; then
  source "$HOME/.zshrc.golang"
fi

# Keep this last in case we want to override anything
if [[ -s "$HOME/.zshrc.local" ]]; then
  source "$HOME/.zshrc.local"
fi

# Aliases
alias sshconf="$EDITOR $HOME/.ssh/config"
alias gitconf="$EDITOR $HOME/.gitconfig"
alias vimconf="$EDITOR $HOME/.vimrc"
alias nvimconf="$EDITOR $HOME/.config/nvim/init.vim"
alias zshconf="$EDITOR $HOME/.zshrc"
