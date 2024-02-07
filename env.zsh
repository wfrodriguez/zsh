#!/usr/bin/env zsh

################################
# EXPORT ENVIRONMENT VARIABLES #
################################


# XDG
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$XDG_CONFIG_HOME/local/share
export XDG_CACHE_HOME=$XDG_CONFIG_HOME/cache
export XDG_DATA_DIRS=/usr/local/share:/usr/share:$XDG_DATA_DIRS

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/z-shell"
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

# editor
export EDITOR="nvim"
export VISUAL="nvim"

export SCREENSHOT="$HOME/Documentos/screenshots"

# Man pages
export MANPAGER="nvim +Man!"

# fzf
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
FZF_COLORS="bg+:-1,\
fg:gray,\
fg+:white,\
border:black,\
spinner:0,\
hl:yellow,\
header:blue,\
info:green,\
pointer:red,\
marker:blue,\
prompt:gray,\
hl+:red"
export FZF_DEFAULT_OPTS="--height 60% \
--border sharp \
--layout reverse \
--color '$FZF_COLORS' \
--prompt '∷ ' \
--pointer ▶ \
--marker ⇒ "
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -n 10'"
export FZF_COMPLETION_DIR_COMMANDS="cd pushd rmdir tree ls"

# OPENAI_API_KEY
export OPENAI_API_KEY="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"

# PATH
export PATH=/usr/local/bin/git-scripts:$PATH
export PATH=$HOME/.bin:$PATH
export PATH=$HOME/go/bin:$PATH

## OTHER
source "$HOME/.cargo/env" # Rust - Cargo
# Node Version Manager
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
