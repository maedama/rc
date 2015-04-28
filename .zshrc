alias vi='vim'
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/.go
export GOROOT=`go env GOROOT`
export PATH=$GOPATH/bin:$PATH
eval "$(rbenv init - zsh)"
export PATH="$HOME/.plenv/bin:$PATH"
eval "$(plenv init -)"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"


eval "$(pyenv init -)"
