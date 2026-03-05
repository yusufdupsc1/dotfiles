# zinit plugin manager (fast)
ZINIT_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/zinit/zinit.git"
if [[ ! -f "$ZINIT_HOME/zinit.zsh" ]]; then
  mkdir -p "$(dirname "$ZINIT_HOME")"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
source "$ZINIT_HOME/zinit.zsh"

# Plugins (order matters)
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions

# Syntax highlighting must load last
zinit light zsh-users/zsh-syntax-highlighting

# Autosuggest style
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#5f5f5f"
