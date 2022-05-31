alias vi='vim'
alias ecr-login='$(aws --region us-east-1 ecr get-login)'
#alias docker-rm-notag='docker rmi $(docker images | grep "^<none>" | awk "{print $3}")'
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:~/Library/Android/sdk/platform-tools
export GOPATH="$HOME/.go"
export GHQPATH="$HOME/.ghq"
export PATH=$PATH:/Users/shuntaro_maeda/.ghq/github.com/dilshod/xlsx2csv
export GOROOT=`go env GOROOT`
export PATH=$GOPATH/bin:$PATH

export ANDROID_HOME=/$HOME/.android-sdk
eval "$(rbenv init - zsh)"
export PATH="$HOME/.plenv/bin:$PATH"
eval "$(plenv init -)"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export AWS_REGION="ap-northeast-1"

ec2-login() {
    SERVER=`AWS_DEFAULT_PROFILE=ml aws ec2 describe-instances | jq --raw-output '.Reservations[].Instances[] | select(.State.Name == "running").PublicDnsName'`
    ssh -A -i ~/.ssh/maedama.pem ubuntu@$SERVER
}

alias stop-ml-ec2="AWS_PROFILE=ml aws ec2 stop-instances  --instance-ids i-239b0bac"
alias start-ml-ec2="AWS_PROFILE=ml aws ec2 start-instances  --instance-ids i-239b0bac"

ghq-peco() {
    cd `ghq list | peco | xargs -IREPO echo ~/.ghq/REPO`;
    pwd | xargs -IDIR echo 'cd to DIR';
}

docker-peco() {
    ID=`docker ps | peco | cut -f 1 -d " "`
    docker exec -it $ID /bin/bash;
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
eval "$(docker-machine env default)"


setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data

# added by travis gem
[ -f /Users/shuntaro_maeda/.travis/travis.sh ] && source /Users/shuntaro_maeda/.travis/travis.sh
. /Users/shuntaro.maeda/.pyenv/versions/anaconda3-5.0.1/etc/profile.d/conda.sh


JOBMANAGER_CONTAINER=$(docker ps --filter name=jobmanager --format={{.ID}})
TASKMANAGER_CONTAINER=$(docker ps --filter name=taskmanager --format={{.ID}})

source ~/opt/anaconda3/etc/profile.d/conda.sh
conda activate default
source ~/.zsh_secret
