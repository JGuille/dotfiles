export ZSH="$HOME/.oh-my-zsh"
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  kubectl
  macos
  terraform
)

unsetopt nomatch
setopt shwordsplit
source $ZSH/oh-my-zsh.sh

[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f ~/.zsh/nvm.zsh ]] && source ~/.zsh/nvm.zsh
[[ -f ~/.zsh/wsl2fix.zsh ]] && source ~/.zsh/wsl2fix.zsh

eval "$(starship init zsh)"
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

# Load Direnv
eval "$(direnv hook zsh)"