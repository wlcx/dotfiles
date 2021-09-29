# Welcome to samw's zshrc. Enjoy your stay.

# Load homebrew zsh completion stuff if it exists
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

if [[ -s "/usr/local/etc/profile.d/z.sh" ]]; then
  source "/usr/local/etc/profile.d/z.sh"
fi

$HOME/.dotfiles/check-status.sh

if [[ -s "$HOME/.zshrc.golang" ]]; then
  source "$HOME/.zshrc.golang"
fi

# Keep this last in case we want to override anything
if [[ -s "$HOME/.zshrc.local" ]]; then
  source "$HOME/.zshrc.local"
fi

# Aliases
alias g=git

# Conditional aliases
if command -v bat &> /dev/null; then
    alias cat=bat
fi

# Conf aliases
alias sshconf="$EDITOR $HOME/.ssh/config"
alias gitconf="$EDITOR $HOME/.gitconfig"
alias vimconf="$EDITOR $HOME/.vimrc"
alias nvimconf="$EDITOR $HOME/.config/nvim/init.vim"
alias zshconf="$EDITOR $HOME/.zshrc"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh || true
