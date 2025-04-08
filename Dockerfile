# 08.04.2025
FROM python:3.10

WORKDIR /app

COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

RUN pip install fittrackee

RUN pip install gunicorn

EXPOSE 8000

ENTRYPOINT ["/app/entrypoint.sh"]
