FROM nginx:alpine

COPY app/ /usr/share/nginx/html/

COPY nginx.conf /etc/nginx/nginx.conf

COPY startup.sh /startup.sh

RUN chmod +x /startup.sh

EXPOSE 80

CMD ["/startup.sh"]
