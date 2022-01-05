FROM nginx:mainline-alpine


COPY docker-entrypoint.sh ./

USER root
RUN chmod 777 ./docker-entrypoint.sh
RUN chmod 777 /run /var/log/nginx

EXPOSE 8080

USER 1001

CMD ["./docker-entrypoint.sh"]
