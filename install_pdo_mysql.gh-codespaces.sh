cd
VER=$(php -r 'echo phpversion();')
wget https://www.php.net/distributions/php-$VER.tar.gz
tar xf php-$VER.tar.gz 
cd php-$VER/ext/pdo_mysql
phpize
./configure
make
make test
make install
sed -i 's/;extension=pdo_mysql/extension=pdo_mysql/' /opt/php/$VER/ini/php.ini

php -i | grep drivers