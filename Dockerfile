 FROM ubuntu:16.04
 MAINTAINER Anvesh <vemulaanvesh9@gmail.com>
 RUN apt-get update -y
 RUN apt-get upgrade -y
 RUN apt-get install apache2 -y
 RUN apt-get install git-core -y
 RUN apt-get update -y
 RUN service apache2 restart
 RUN chown -R www-data:www-data /var/www/html
 RUN chmod 777 -R /var/www/html
 RUN mkdir index.php
 COPY index.php /var/www/html/
 CMD ["success"]
