#######################
# ALIAS CONFIGURATION #
#######################

alias aliasl="grep alias -re '^alias' | sed 's/^.*alias /-> /g' | sed 's/=/ =>\t/' | sort"


alias bigf='find / -xdev -type f -size +500M'  # display "big" files > 500M

# BASE
alias ls='lsd -l' # https://github.com/lsd-rs/lsd
alias lsa='lsd -la'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias tree='lsd --tree'
alias keyboard='setxkbmap latam ldvd'
alias pantalla='xrandr --output DP1 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal && feh --bg-scale ~/.config/wallpapers/07.jpg'
alias copiar='xclip -selection clipboard'
alias pegar='xclip -selection clipboard -o'
alias scrots='scrot --select --line mode=edge --freeze'
alias rename='f2' # https://github.com/ayoisaiah/f2
alias find='fd'  # https://github.com/sharkdp/fd

# MAKE
alias m='make'
alias mh='make help'
alias mr='make run'
alias mb='make build'

# GIT
alias g='git'
alias ga='git add'
alias gs='git status'
alias gaa='git add --all'
alias gapa='git add --patch'
alias gb='git branch'
alias gba='git branch -a'
alias gco='git commit'
alias gc='git checkout'
alias gcc='git checkout -b'
alias gcl='git clone'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gd='git diff'
alias gf='git forest'
alias gg='gomoji'

# PACMAN
alias paci='sudo pacman -S'               # install
alias pachi='sudo pacman -Ql'             # Pacman Has Installed - what files where installed in a package
alias pacs='sudo pacman -Ss'              # search
alias pacu='sudo pacman -Syu'             # update
alias pacr='sudo pacman -R'               # remove package but not dependencies
alias pacrr='sudo pacman -Rs'             # remove package with unused dependencies by other softwares
alias pacrc='sudo pacman -Sc'             # remove pacman's cache
alias pacro='pacman -Rns $(pacman -Qtdq)'
alias pacrl='rm /var/lib/pacman/db.lck'   # pacman remove locks
alias pacls="sudo pacman -Qe"
alias pacc='sudo pacman -Sc'
alias paccc='sudo pacman -Scc'            # empty the whole cache

# YAY
alias yayi='yay -S'     # install
alias yayhi='yay -Ql'   # Yay Has Installed - what files where installed in a package
alias yays='yay -Ss'    # search
alias yayu='yay -Syu'   # update
alias yayr='yay -R'     # remove package but not dependencies
alias yayrr='yay -Rs'   # remove package with unused dependencies by other softwares
alias yayrc='yay -Sc'   # remove yay's cache
alias yayls="yay -Qe"

# GOLANG
alias gd="go doc"
alias gom="go mod"
alias gob="go build"
alias gor="go run"
alias gog="go get -u"
alias goc="go clean -i"
alias gta="go test -v ./..."    # go test all
alias gts="go test -v -run "    # go test specific
alias gia="go install ./..."    # go install all
alias goi="go install"          # go install

# RUST
alias ca="cargo"
alias cr="cargo run"
alias ct="cargo test"
alias cc="cargo build"
alias cl="cargo clean"
alias ru="rustup"

# TMUX
alias mux='tmux'
alias muxk='tmux kill-session -t'
alias muxa='tmux attach -t'
alias muxl='tmux list-sessions'

source ~/.config/z-shell/alias/docker.zsh

# Docker pandoc - texlive
# install with `docker pull pandoc/latex`
alias pandock='docker run --rm -v "$(pwd):/app"  latec'
