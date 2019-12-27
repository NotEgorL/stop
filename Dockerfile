FROM nginx
EXPOSE 80
COPY index0.html /gitRep/h/index0.html
COPY front.conf /etc/nginx/conf.d/default.conf
RUN nginx -t
RUN service nginx stop
RUN service nginx start
