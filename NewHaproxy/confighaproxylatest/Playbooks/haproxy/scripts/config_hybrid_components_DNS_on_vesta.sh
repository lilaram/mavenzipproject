#!/usr/bin/env bash
echo "start of config_hybrid_components_DNS_on_vesta.sh"
export ANSIBLE_HOST_KEY_CHECKING=False

INVENTORY="../inventory/production/host.ini"
echo ${INVENTORY}

cat >> ${WORKSPACE}/haproxy/inventory/production/group_vars/all/main <<EOF
domain_name: ${domain_name_for_vesta_server}
EOF

echo "Start Configure DNS"
ANSIBLE_STDOUT_CALLBACK=debug ansible-playbook ../playbooks/config_hybrid_components_DNS_on_vesta.yaml -i ${INVENTORY}

echo "end of config_hybrid_components_DNS_on_vesta.sh"