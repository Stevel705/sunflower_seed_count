FROM python:3.7
# WORKDIR /app
RUN pip install rq redis
COPY . app/
CMD rq worker --url redis://redis:6379 queue_test