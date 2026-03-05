# Completion system (cached)
autoload -Uz compinit
COMPDUMP="${ZSH_CACHE_DIR:-$HOME/.cache/zsh}/zcompdump"

# Ensure zsh-completions is used
if [[ -d "${XDG_DATA_HOME:-$HOME/.local/share}/zinit/plugins/zsh-users---zsh-completions/src" ]]; then
  fpath=("${XDG_DATA_HOME:-$HOME/.local/share}/zinit/plugins/zsh-users---zsh-completions/src" $fpath)
fi

compinit -d "$COMPDUMP" -C

# Completion UX
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "${ZSH_CACHE_DIR:-$HOME/.cache/zsh}"
