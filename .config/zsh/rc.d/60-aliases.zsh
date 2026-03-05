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
