FROM python:3.8
RUN apt-get update -y && apt-get install streamlink -y
RUN git clone https://github.com/razn-v/livestream_scripts.git /usr/share/livestream_scripts
WORKDIR /usr/share/livestream-saver
ENTRYPOINT sh -c "python /usr/share/livestream_scripts/save_livestream.py --author-name \"$AUTHOR_NAME\" \"$STREAM_URL\""
