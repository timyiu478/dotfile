if status is-interactive
  set PATH "$HOME/.cargo/bin" $PATH
  set -x EDITOR nvim
  set -x KUBE_EDITOR nvim
  abbr -a -U g git
  abbr -a -U n nvim
end
