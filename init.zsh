#!/bin/zsh

if [[ -n $(pgrep tmux) ]]; then
  echo "\e[32m  Tmux is already running...\e[0m"
else
  exec tmux new-session -A -s workspace
fi

autoload -U compinit && compinit
autoload -U colors && colors
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
precmd() {
    vcs_info
}

zstyle ':vcs_info:git*' formats " %b"

# Config for prompt. PS1 synonym.
setopt prompt_subst
PROMPT="%(?.%F{14}⏺.%F{9}⏺)%f %{$fg[blue]%} %{$fg[blue]%}%{$fg[white]%}   %2~ %{$fg[blue]%} %{$reset_color%}"
RPROMPT='[󰥔 %t]${vcs_info_msg_0_}%'

source ~/.config/z-shell/env.zsh
source ~/.config/z-shell/alias/alias.zsh
source ~/.config/z-shell/completion.zsh


# Extern loads
eval $(thefuck --alias) # fuck
eval "$(direnv hook zsh)" # direnv
