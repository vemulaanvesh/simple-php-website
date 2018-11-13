FROM tutum/lamp:latest
RUN rm -fr /app && git clone https://github.com/vemulaanvesh/simple-php-website.git
COPY index.php /var/www/html
EXPOSE 80 3306
CMD ["/run.sh"]
