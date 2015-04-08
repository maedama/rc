
DIR=`pwd`
ln -s $DIR/.vimrc ~/.vimrc
mkdir -p ~/.vim
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
cd /tmp
hg clone https://vim.googlecode.com/hg/ vim
cd vim && make && sudo make install && cd -
