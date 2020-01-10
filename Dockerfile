FROM nginx:latest
EXPOSE 80
COPY index0.html /usr/share/nginx/html/index.html
COPY front.conf /etc/nginx/conf.d/default.conf
RUN nginx -t
CMD /usr/sbin/nginx -g "daemon off;"
