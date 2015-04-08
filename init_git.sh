
DIR=`pwd`
sudo yum remove git
sudo yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel perl-ExtUtils-MakeMaker
cd /tmp
wget https://www.kernel.org/pub/software/scm/git/git-2.2.0.tar.gz
tar -zxf git-2.2.0.tar.gz
cd git-2.2.0
make prefix=/usr/local all
sudo make prefix=/usr/local install

cd $DIR
