yum install -y zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gcc make

wget https://www.python.org/ftp/python/3.5.2/Python-3.5.2.tgz

tar -zxvf Python-3.5.2.tgz

cd Python-3.5.2

./configure prefix=/usr/local/python3

make && make install

ln -s /usr/local/python3/bin/python3.5 /usr/bin/python3
ln -s /usr/local/python3/bin/pip3 /usr/bin/pip3
