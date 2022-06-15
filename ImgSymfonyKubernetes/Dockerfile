#Usamos la imagen que hemos creado antes que ya tiene el proyecto listo para funcionar
FROM tupetanquero/proysinscrip:v1

#Instalamos el supervisor que se encargara de levantar el servicio web en caso de que caiga
RUN apt-get update && apt-get install -y supervisor

#Copiamos nuestro archivo supervisord.conf a conf.d para que lo ejecute.
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

#Copiamos el script deploy.sh a la raiz para que lo ejecute al arrancar el deploymenyt
COPY deploy.sh /deploy.sh

#Copiamos el .env que tiene la conexion con la base de datos de kubernetes y ponemos el proyecto en modo de produccion
COPY .env /var/www/symfony5/.env

#Le damos permisos de ejecucion al script deploy.sh para que se pueda ejecutar
RUN chmod 777 /deploy.sh

#Le pedimos que ejecute el script deploy.sh
CMD [ "/deploy.sh" ]