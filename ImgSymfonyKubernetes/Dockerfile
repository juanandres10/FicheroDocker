FROM tupetanquero/proysinscrip:v1 
RUN apt-get update && apt-get install -y supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY deploy.sh /deploy.sh
COPY .env /var/www/symfony5/.env
RUN chmod 777 /deploy.sh
CMD [ "/deploy.sh" ]