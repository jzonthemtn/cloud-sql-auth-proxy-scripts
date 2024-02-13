#!/bin/bash

. database.properties

./proxies/cloud_sql_proxy_mac_m1 --auto-iam-authn --address 0.0.0.0 --port ${STAGE_DATABASE_PORT} ${STAGE_PROJECT}:${STAGE_REGION}:${STAGE_DATABASE_INSTANCE}
