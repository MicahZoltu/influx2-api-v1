#!/bin/bash
set -e

influx v1 dbrp create \
--bucket-id ${DOCKER_INFLUXDB_INIT_BUCKET_ID} \
	--db ${DOCKER_INFLUXDB_INIT_BUCKET} \
	--rp ${DOCKER_INFLUXDB_INIT_BUCKET}-retention-policy \
	--default \
	--org ${DOCKER_INFLUXDB_INIT_ORG}

influx v1 auth create \
	--username ${DOCKER_INFLUXDB_INIT_USERNAME} \
	--password ${DOCKER_INFLUXDB_INIT_PASSWORD} \
	--write-bucket ${DOCKER_INFLUXDB_INIT_BUCKET_ID} \
	--org ${DOCKER_INFLUXDB_INIT_ORG}
