#/bin/bash
/usr/bin/sed -i "s/KIBANA_ADMIN_PORT/${KIBANA_ADMIN_PORT}/" /etc/nginx/conf.d/kibana-admin.conf
/usr/bin/sed -i "s/KIBANA_ADMIN_URL/${KIBANA_ADMIN_URL}/" /etc/nginx/conf.d/kibana-admin.conf
/usr/bin/sed -i "s/KIBANA_READONLY_PORT/${KIBANA_READONLY_PORT}/" /etc/nginx/conf.d/kibana-readonly.conf
/usr/bin/sed -i "s/KIBANA_READONLY_URL/${KIBANA_READONLY_URL}/" /etc/nginx/conf.d/kibana-readonly.conf
nginx -g 'daemon off;'
