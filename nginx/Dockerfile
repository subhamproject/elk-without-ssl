FROM nginx
RUN echo "kibadmin:$(openssl passwd -1 password)" | tee -a /etc/nginx/htpasswd.users
COPY entry.sh wait_for_kibana.sh /usr/bin/
ENTRYPOINT ["entry.sh"]
