FROM apache/superset:latest

USER root

COPY . /app

RUN pip install --no-cache-dir -r /app/requirements.txt

ENV SUPERSET_CONFIG_PATH=/app/superset_config.py

COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

USER superset

EXPOSE 8088

CMD ["/app/start.sh"]