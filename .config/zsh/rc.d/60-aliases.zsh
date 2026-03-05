alias ll='ls -lah'
alias gs='git status'
alias gl='git log --oneline --graph --decorate -n 20'
alias v='nvim'
command -v lazygit >/dev/null 2>&1 && alias lg='lazygit'
# fuzzy code search (ripgrep + fzf + bat)
search() {
  rg --line-number --no-heading "$1" | \
  fzf --delimiter ":" \
      --preview 'batcat --style=numbers --color=always {1} --line-range {2}:'
}

# fuzzy file opener (fd + fzf + nvim)
vf() {
  local file
  file=$(fd . | fzf)
  [ -n "$file" ] && nvim "$file"
}

# quick git UI
alias lg="lazygit"

# quick directory jump
alias j="z"
# ---- productivity functions ----

# fuzzy project opener
proj() {
  local dir
  dir=$(fd . ~/projects -t d 2>/dev/null | fzf --height 40%)
  [[ -n "$dir" ]] && cd "$dir"
}

# fuzzy file opener
edit() {
  local file
  file=$(fd . -t f | fzf --height 40%)
  [[ -n "$file" ]] && nvim "$file"
}

# jump to git repo root
groot() {
  local root
  root=$(git rev-parse --show-toplevel 2>/dev/null)
  [[ -n "$root" ]] && cd "$root"
}

# run command in selected directory
runin() {
  local dir
  dir=$(fd . -t d | fzf --height 40%)
  [[ -n "$dir" ]] && (cd "$dir" && "$@")
}
