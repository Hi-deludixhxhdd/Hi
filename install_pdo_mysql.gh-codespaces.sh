cd
VER=$(php -v | grep -o '[0-9.]*' | head -n 1)
wget https://www.php.net/distributions/php-$VER.tar.gz
tar xf php-$VER.tar.gz 
cd php-$VER/ext/pdo_mysql
phpize
./configure
make
make test
make install
sed -i 's/;extension=pdo_mysql/extension=pdo_mysql/' /opt/php/$VER/ini/php.ini