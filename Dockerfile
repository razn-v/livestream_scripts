FROM python:3.8
RUN apt-get update -y && apt-get install streamlink -y
WORKDIR /app
COPY save_livestream.py .
CMD ["python", "save_livestream.py", "--author-name", "$AUTHOR_NAME", "$STREAM_URL"]
