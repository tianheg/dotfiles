export PATH=/usr/bin:$HOME/bin:$HOME/.local/bin:/usr/local/bin:$HOME/.nix-profile/bin:$HOME/.cargo/bin:$HOME/go/bin:$HOME/.bun/bin:$HOME/.deno/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(archlinux git git-auto-status zsh-autosuggestions zsh-syntax-highlighting aliases bun-alias pnpm)

zstyle ':omz:update' mode auto

source $ZSH/oh-my-zsh.sh

### User configuration

## blog
epo () {
  emacs -nw content/posts/"$1".org
}
## Tools

# editor
export EDITOR='emacs -nw'
# z.lua
eval "$(lua ~/.z.lua/z.lua --init enhanced once zsh)"
# cd
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
# mkdir + cd
mc () {
  mkdir "$1"
  cd "$1"
}
# ls & eza
alias ls='ls --color=auto'
alias la='ls -AF --color=auto'
alias ll='ls -lFh --color=auto'
alias ea="eza -a"
alias el="eza -aghl --git"
# not rm, yes trash!
alias rm='echo "This is not the command you are looking for."; false'
# bat
alias cat=bat
alias man=batman
# zsh
alias rezsh="source ~/.zshrc"
# emacs
alias e="emacs -nw"
export DOCPATH=/usr/share/hunspell
# python http server
alias pys="python -m http.server -b 127.0.0.1"
alias py_venv="python -m venv .venv --upgrade-deps && . ./.venv/bin/activate"

## Web
# nvm https://peterlyons.com/problog/2018/01/zsh-lazy-loading/
source /usr/share/nvm/init-nvm.sh
alias nil="nvm install --lts"
## Others
# Go proxy
export GOPROXY=https://goproxy.cn
# gpg
export GPG_TTY=$(tty)
# https://github.com/starship/starship
eval "$(starship init zsh)"
# proxy
export socks5_proxy=http://127.0.0.1:7891
export http_proxy=http://127.0.0.1:7890
export https_proxy=$http_proxy
export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"

# ruby
eval "$(rbenv init - zsh)"
