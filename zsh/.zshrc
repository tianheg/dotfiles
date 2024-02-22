export PATH=/usr/bin:$HOME/bin:$HOME/.local/bin:/usr/local/bin:$HOME/.nix-profile/bin:$HOME/.cargo/bin:$HOME/go/bin:$HOME/.bun/bin:$HOME/.deno/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# ENABLE_CORRECTION="true" # 启用命令自动纠正

plugins=(archlinux git git-auto-status zsh-autosuggestions zsh-syntax-highlighting z.lua aliases bun)

zstyle ':omz:update' mode auto
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

source $ZSH/oh-my-zsh.sh

### User configuration

## blog
epo () {
  emacs -nw content/posts/"$1".org
}
epo_old () {
  FILE="content/posts/$1.org"
  if [[ -f "$FILE" ]]; then
    emacs -nw content/posts/"$1".org
  else
    emacs -nw content/posts/"$1".md
  fi
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
# ripgrep only file name
# refer https://github.com/BurntSushi/ripgrep/issues/193#issuecomment-513201558
rgf () {
  rg --files $1 | rg $2
}
# zsh
alias rezsh="source ~/.zshrc"
# proxy
alias pc="proxychains"
# guile
#export GUILE_AUTO_COMPILE=0
#alias guile="guile --fresh-auto-compile"
# emacs
alias e="emacs -nw"
export DOCPATH=/usr/share/hunspell
# vagrant
fpath=(/opt/vagrant/embedded/gems/2.2.19/gems/vagrant-2.2.19/contrib/zsh $fpath)
compinit
# gdb
DEBUGINFOD_URLS="https://debuginfod.archlinux.org/"
# Emscripten(C to wasm)
#source /etc/profile.d/emscripten.sh
# python http server
alias pys="python -m http.server -b 127.0.0.1"
alias py_venv="python -m venv .venv --upgrade-deps"

## Web
# nvm https://peterlyons.com/problog/2018/01/zsh-lazy-loading/
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
alias nil="nvm install --lts"
# sass
#alias sass-w="sass -w --no-source-map -s compressed"
sass-w () {
  sass --watch --update --no-source-map --style=compressed $1/style.scss:$1/style.css
}
## Others
# Go proxy
export GOPROXY=https://goproxy.cn
# gpg
export GPG_TTY=$(tty)
# pyenv
eval "$(pyenv init -)"

# ssh-agent
# if ! pgrep -u "$USER" ssh-agent > /dev/null; then
#     ssh-agent -t 24h > "$XDG_RUNTIME_DIR/ssh-agent.env"
# fi
# if [[ ! "$SSH_AUTH_SOCK" ]]; then
#     source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
# fi
# ssh-add ~/.ssh/ssh_rsa_ts 2>/dev/null
# https://direnv.net/docs/hook.html
# exercism
alias exsu="exercism submit"
# Android SDK
export ANDROID_SDK_ROOT=/opt/android-sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/tools
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
# https://github.com/starship/starship
eval "$(starship init zsh)"
# proxy
export http_proxy=http://127.0.0.1:7890
export https_proxy=$http_proxy
export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
# Ruby
eval "$(rbenv init - zsh)"
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
export RUBY_BUILD_MIRROR_URL=https://cache.ruby-china.com
