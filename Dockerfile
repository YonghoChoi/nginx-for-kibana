FROM nginx

ENV KIBANA_ADMIN_URL 192.168.10.214
ENV KIBANA_ADMIN_PORT 9991
ENV KIBANA_READONLY_URL 192.168.10.214
ENV KIBANA_READONLY_PORT 9992

RUN apt-get update -y && apt-get install -y vim apache2-utils

COPY conf/kibana-admin.conf /etc/nginx/conf.d/
COPY conf/kibana-readonly.conf /etc/nginx/conf.d/
COPY conf/.htpasswd-admin /etc/nginx/conf.d/
COPY conf/.htpasswd-readonly /etc/nginx/conf.d/
COPY start.sh /start.sh

RUN chmod +x /start.sh

CMD sh /start.sh
