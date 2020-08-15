FROM python:3-alpine
COPY . /app
WORKDIR /app
RUN apk add --no-cache curl gcc g++ patch snappy-dev \
  && pip install python-snappy \
  && cp moz-idb-edit/moz-idb-edit entrypoint \
  && patch entrypoint entrypoint.diff \
  && patch moz-idb-edit/mozserial.py mozserial.py.diff
