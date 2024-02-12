#!/bin/bash

. database.properties

./proxies/cloud_sql_proxy_macos_x64 -enable_iam_login -instances=${PROD_PROJECT}:${PROD_REGION}:${PROD_DATABASE_INSTANCE}=tcp:0.0.0.0:${PROD_DATABASE_PORT}
