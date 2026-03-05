typeset -U path PATH
path=(
  "$HOME/.local/bin"
  "$HOME/bin"
  /usr/local/bin
  /usr/bin
  /bin
  $path
)

# Go (optional)
[[ -d /usr/local/go/bin ]] && path+=(/usr/local/go/bin)
[[ -d "$HOME/go/bin" ]] && path+=("$HOME/go/bin")

# pnpm (portable)
export PNPM_HOME="${PNPM_HOME:-$HOME/.local/share/pnpm}"
[[ -d "$PNPM_HOME" ]] && path+=("$PNPM_HOME")

export PATH
