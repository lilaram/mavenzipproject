#!/usr/bin/env bash
set -e
export ANSIBLE_HOST_KEY_CHECKING=False

INVENTORY="../inventory/production/host.ini"
echo ${INVENTORY}

export role=''
## replace role by input
if [[ ! -z $1 ]]; then
  eval $1
fi

haproxy_not_exist=true

while read line; do
  if [[ ${line} == *"haproxy"* ]] && [[ ${line} != *"haproxy_dop"* ]] && [[ ${line} != *"haproxy-dop"* ]]; then
    haproxy_not_exist=false
    break
  fi
done < ${WORKSPACE}/haproxy/inventory/production/group_vars/all/components.yaml



cat >> ${WORKSPACE}/haproxy/inventory/production/group_vars/all/main <<EOF
email: "root@root.org"
password: root
lab_installation: $lab_installation
haproxy_not_exist: $haproxy_not_exist
elassandra: $elassandra
elasticsearch: $elasticsearch
elasticsearch_logging: $elastic_logging
patroni_dop: $patroni_dop
rabbitmq: $rabbitmq
rabbitmq_name: $rabbitmq_name
elassandra_data_center: $elassandra_data_center
env_id: $tenant_username
pg_port: 6432
EOF

cat ${WORKSPACE}/haproxy/inventory/production/group_vars/all/main

## install and configure haproxy
echo "Start installing haproxy and configure role = $role"
ANSIBLE_STDOUT_CALLBACK=debug ansible-playbook ../playbooks/install_and_configure_ha_proxy.yaml -e "role=${role}" -i ${INVENTORY}