#!/bin/bash

mkdir ./proxies/ -p

curl -o ./proxies/cloud_sql_proxy_linux_x64 https://storage.googleapis.com/cloud-sql-connectors/cloud-sql-proxy/v2.8.2/cloud-sql-proxy.linux.amd64
curl -o ./proxies/cloud_sql_proxy_macos_x64 https://storage.googleapis.com/cloud-sql-connectors/cloud-sql-proxy/v2.8.2/cloud-sql-proxy.darwin.amd64
curl -o ./proxies/cloud_sql_proxy_mac_m1 https://storage.googleapis.com/cloud-sql-connectors/cloud-sql-proxy/v2.8.2/cloud-sql-proxy.darwin.arm64

chmod +x ./proxies/*
