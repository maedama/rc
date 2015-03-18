source ~/perl5/perlbrew/etc/bashrc

alias vi='vim'
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/.go
export GOROOT=`go env GOROOT`
export PATH=$GOPATH/bin:$PATH
eval "$(rbenv init -)"
