FROM nginx:alpine

RUN adduser -D microblog

WORKDIR /home/microblog

RUN mkdir certs
RUN openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 -keyout certs/key.pem -out certs/cert.pem

RUN rm /etc/nginx/sites-enabled/default
COPY nginx.conf /etc/nginx/sites-enabled/
COPY entrypoint.sh ./
RUN chmod a+x entrypoint.sh

RUN chown -R microblog:microblog ./
USER microblog

ENTRYPOINT [ "./entrypoint.sh" ]



