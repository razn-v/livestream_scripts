FROM python:3.8
RUN apt-get update -y && apt-get install streamlink -y
WORKDIR /usr/share/livestream-saver
COPY save_livestream.py .
ENTRYPOINT sh -c "python save_livestream.py --author-name \"$AUTHOR_NAME\" \"$STREAM_URL\""
