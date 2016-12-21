#!/usr/bin/env bash

tenant_id=${1:-diku}

tenant_json=$(cat tenant.json)

tenant_json="${tenant_json/tenantidhere/$tenant_id}"

curl -w '\n' -X POST -D - \
     -H "Content-type: application/json" \
     -d "${tenant_json}" \
     http://localhost:9130/_/proxy/tenants
