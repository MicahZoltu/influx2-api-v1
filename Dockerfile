# 2.0.4
FROM influxdb@sha256:8e941d9a9359b97556fdf2da0738077509ca3c1b90c69096f4b4bc791257e288
COPY ./build-scripts/influxdb-v1-api-setup.sh /docker-entrypoint-initdb.d/influxdb-v1-api-setup.sh
