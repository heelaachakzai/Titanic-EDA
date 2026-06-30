FROM apache/superset:latest

USER root

COPY . /app

ENV SUPERSET_CONFIG_PATH=/app/superset_config.py

USER superset

EXPOSE 8088

CMD ["superset", "run", "-h", "0.0.0.0", "-p", "8088"]