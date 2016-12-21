#!/usr/bin/env bash

tenant_id=${1:-diku}
okapi_proxy_address=${2:-http://localhost:9130}

curl -w '\n' -D - -s \
     -X POST \
     -H "Content-type: application/json" \
     -d @proxy.json  \
     "${okapi_proxy_address}/_/proxy/modules"

curl -w '\n' -X POST -D - \
     -H "Content-type: application/json" \
     -d @discovery.json  \
     "${okapi_proxy_address}/_/discovery/modules"

curl -w '\n' -X POST -D - \
     -H "Content-type: application/json" \
     -d @activate.json  \
     "${okapi_proxy_address}/_/proxy/tenants/${tenant_id}/modules"
