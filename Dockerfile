FROM minio/mc:RELEASE.2020-04-19T19-17-53Z

RUN mkdir /app

COPY entrypoint.sh /app/entrypoint.sh

ENV MINIO_DEBUG="debug" \
  MINIO_ALIAS=${MINIO_ALIAS:-minio}

ENTRYPOINT [ "/app/entrypoint.sh" ]
