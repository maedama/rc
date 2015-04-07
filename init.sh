sudo yum install -y screen

DIR=`pwd`
ln -s $DIR/.gitconfig ~/.gitconfig
ln -s $DIR/.screenrc ~/.screenrc
ln -s $DIR/.zshalias ~/zshalias
ln -s $DIR/.zshrc ~/.zshrc

ln -s $DIR/.vimrc ~/.vimrc
mkdir -p ~/.vim
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
cd /tmp
hg clone https://vim.googlecode.com/hg/ vim
cd vim && make && sudo make install && cd -
