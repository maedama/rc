sudo yum install -y screen
sudo yum install -y zsh

DIR=`pwd`
ln -s $DIR/.gitconfig ~/.gitconfig
ln -s $DIR/.screenrc ~/.screenrc
ln -s $DIR/.zshalias ~/zshalias
ln -s $DIR/.zshrc ~/.zshrc
source ./init_vim.sh
