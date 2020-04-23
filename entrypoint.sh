#!/bin/sh
set -e

echo '[ 🎤 Hi from the MC ]'

mc config host add ${MINIO_ALIAS} ${MINIO_HOST_NAME} ${MINIO_ACCESS_KEY} ${MINIO_SECRET_KEY}


# Specify a default command, in case it wasn't issued:
if [ -z "$1" ]; then
  set -- mc ls ${MINIO_ALIAS} "$@"
fi

# Execute the given or default command:
exec "$@"

