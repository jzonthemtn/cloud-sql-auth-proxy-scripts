#!/bin/bash

. database.properties

./proxies/cloud_sql_proxy_macos_x64 --auto-iam-authn --address 0.0.0.0 --port ${PROD_DATABASE_PORT} ${PROD_PROJECT}:${PROD_REGION}:${PROD_DATABASE_INSTANCE}
