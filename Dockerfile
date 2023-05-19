FROM nginx:stable-alpine
COPY nginx/templates /etc/nginx/templates/

RUN sed -i '1idaemon off;' /etc/nginx/nginx.conf

ENV NGINX_PORT 3000
ENV NGINX_BASE_URL app

CMD ["nginx"]
