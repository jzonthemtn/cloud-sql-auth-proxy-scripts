#!/bin/bash

. database.properties

./proxies/cloud_sql_proxy_mac_m1 -enable_iam_login -instances=${STAGE_PROJECT}:${STAGE_REGION}:${STAGE_DATABASE_INSTANCE}=tcp:0.0.0.0:${STAGE_DATABASE_PORT}