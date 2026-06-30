FROM apache/superset:latest

USER root

COPY . /app

USER superset

EXPOSE 8088

CMD ["superset", "run", "-h", "0.0.0.0", "-p", "8088"]