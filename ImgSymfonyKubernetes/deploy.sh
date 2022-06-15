# Vamos al directorio donde esta nuestro proyecto de symfony
cd /var/www/symfony5
# Le pedimos que nos cree la base de datos en caso de que no este creada
php bin/console doctrine:database:create
# Le pedimos que migre las entidades y relaciones (tablas) a la base de datos, en caso de estar las actualiza.
php bin/console doctrine:schema:update --force
# Le pedimos ejecutar el supervisord para que supervise
/usr/bin/supervisord