cd /var/www/symfony5
php bin/console doctrine:database:create
php bin/console doctrine:schema:update --force
/usr/bin/supervisord