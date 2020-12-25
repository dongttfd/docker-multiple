FROM dongtt_docker

RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && yum -y update && yum clean all \
    # && yum install -y python-setuptools \
    # && easy_install supervisor \
    && yum install -y nodejs httpd
    # && mkdir -p /var/log/supervisor

ADD /conf/vhosts.conf /etc/httpd/conf.d/vhosts.conf
ADD /conf/php.ini /etc/php.ini
# ADD /conf/supervisord.conf /etc/supervisord.conf
# ADD /conf/teawork_worker.conf /etc/supervisord.d/teawork_worker.conf
# ADD /conf/gossby_worker.conf /etc/supervisord.d/gossby_worker.conf

RUN dos2unix /etc/httpd/conf.d/vhosts.conf && dos2unix /etc/php.ini \
    && echo "ServerName localhost" >> /etc/httpd/conf/httpd.conf \
    # && systemctl enable supervisord \
    && systemctl enable httpd.service \
    && httpd -v \
    && php -v \
    && composer -v \
    && node -v \
    && npm -v

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
