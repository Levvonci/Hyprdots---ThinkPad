#Starship
eval "$(starship init zsh)"

#PATH
export GOPATH="$HOME/.local/share/go"
export PATH="$PATH:$GOPATH/bin"

#ALIAS
alias ls="eza --icons --oneline"
alias lt="eza --tree --icons"
alias icat="kitten icat"
alias pipe="pipes.sh -t 3"
alias pingg="ping google.it"
