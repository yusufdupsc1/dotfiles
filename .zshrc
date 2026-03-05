# ~/.zshrc — fast modular loader

[[ -n "$ZSH_VERSION" ]] || return

export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export ZSH_CACHE_DIR="$XDG_CACHE_HOME/zsh"
mkdir -p "$ZSH_CACHE_DIR"

# Load modules in order (plugins before compinit)
for f in \
  "$XDG_CONFIG_HOME/zsh/rc.d/00-env.zsh" \
  "$XDG_CONFIG_HOME/zsh/rc.d/10-options.zsh" \
  "$XDG_CONFIG_HOME/zsh/rc.d/20-path.zsh" \
  "$XDG_CONFIG_HOME/zsh/rc.d/40-plugins.zsh" \
  "$XDG_CONFIG_HOME/zsh/rc.d/30-completion.zsh" \
  "$XDG_CONFIG_HOME/zsh/rc.d/50-tools.zsh" \
  "$XDG_CONFIG_HOME/zsh/rc.d/60-aliases.zsh"
do
  [[ -r "$f" ]] && source "$f"
done
