#!/bin/bash

. database.properties

./proxies/cloud_sql_proxy_linux_x64 -enable_iam_login -instances=${DEV_PROJECT}:${DEV_REGION}:${DEV_DATABASE_INSTANCE}=tcp:0.0.0.0:${DEV_DATABASE_PORT}
