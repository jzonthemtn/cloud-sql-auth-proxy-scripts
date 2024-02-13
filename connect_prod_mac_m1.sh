#!/bin/bash

. database.properties

./proxies/cloud_sql_proxy_mac_m1 --auto-iam-authn --address 0.0.0.0 --port ${PROD_DATABASE_PORT} ${PROD_PROJECT}:${PROD_REGION}:${PROD_DATABASE_INSTANCE}
