#!/bin/bash

. database.properties

./proxies/cloud_sql_proxy_mac_m1 --auto-iam-authn --address 0.0.0.0 --port ${DEV_DATABASE_PORT} ${DEV_PROJECT}:${DEV_REGION}:${DEV_DATABASE_INSTANCE}
