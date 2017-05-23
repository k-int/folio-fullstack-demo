#!/usr/bin/env bash

module_id=${1:-users}
tenant_id=${2:-diku}

curl -X DELETE -D - -w '\n' "http://localhost:9130/_/proxy/tenants/${tenant_id}/modules/${module_id}"
curl -X DELETE -D - -w '\n' "http://localhost:9130/_/proxy/modules/${module_id}"

pip3 install requests

python3 unregister.py ${module_id} ${tenant_id}
