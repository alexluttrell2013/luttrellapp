FROM nginx:alpine

RUN adduser -D microblog

WORKDIR /home/microblog

COPY nginx.conf /etc/nginx/sites-enabled/
COPY entrypoint.sh ./
RUN chmod a+x entrypoint.sh

RUN chown -R microblog:microblog ./
USER microblog

ENTRYPOINT [ "./entrypoint.sh" ]



