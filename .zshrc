alias vi='vim'
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin
export GOPATH="$HOME/.go"
export GHQPATH="$HOME/.ghq"
export GOROOT=`go env GOROOT`
export PATH=$GOPATH/bin:$PATH

export ANDROID_HOME=/$HOME/.android-sdk
eval "$(rbenv init - zsh)"
export PATH="$HOME/.plenv/bin:$PATH"
eval "$(plenv init -)"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

ghq-peco() {
    cd `ghq list | peco | xargs -IREPO echo ~/.ghq/REPO`;
    pwd | xargs -IDIR echo 'cd to DIR';
}

docker-peco() {
    docker ps | peco | cut -f 1 -d " " | xargs -IREPO docker exec -it REPO /bin/bash;
}


vi-peco() {
    vi  `peco | xargs -IFILE echo FILE`;
}




eval "$(pyenv init -)"

## Command history configuration
if [ -z "$HISTFILE" ]; then
    HISTFILE=$HOME/.zsh_history
fi

HISTSIZE=10000
SAVEHIST=10000

# Show history
case $HIST_STAMPS in
  "mm/dd/yyyy") alias history='fc -fl 1' ;;
  "dd.mm.yyyy") alias history='fc -El 1' ;;
  "yyyy-mm-dd") alias history='fc -il 1' ;;
  *) alias history='fc -l 1' ;;
esac
eval "$(docker-machine env dev)"


setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data
