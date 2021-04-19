#!/usr/bin/env bash

cat >> ${WORKSPACE}/haproxy/inventory/production/group_vars/all/main <<EOF
email: "root@root.org"
password: root
lab_installation: ${lab_installation}
EOF

cat >> ${WORKSPACE}/cassandra/inventory/production/group_vars/all/main <<EOF
lab_installation: ${lab_installation}
EOF

cat >> ${WORKSPACE}/cassandra-sdc-infra/inventory/production/group_vars/all/main <<EOF
lab_installation: ${lab_installation}
EOF

cat >> ${WORKSPACE}/cloudera-manager/inventory/production/group_vars/all/main <<EOF
lab_installation: ${lab_installation}
EOF

cat >> ${WORKSPACE}/consul/inventory/production/group_vars/all/main <<EOF
lab_installation: ${lab_installation}
EOF

cat >> ${WORKSPACE}/elassandra/inventory/production/group_vars/all/main <<EOF
lab_installation: ${lab_installation}
EOF

cat >> ${WORKSPACE}/elasticsearch/inventory/production/group_vars/all/main <<EOF
lab_installation: ${lab_installation}
EOF

cat >> ${WORKSPACE}/elasticsearch-dop/inventory/production/group_vars/all/main <<EOF
lab_installation: ${lab_installation}
EOF

cat >> ${WORKSPACE}/elasticsearch_logging/inventory/production/group_vars/all/main <<EOF
lab_installation: ${lab_installation}
EOF

cat >> ${WORKSPACE}/oracle/inventory/production/group_vars/all/main <<EOF
lab_installation: ${lab_installation}
EOF

cat >> ${WORKSPACE}/patroni/inventory/production/group_vars/all/main <<EOF
lab_installation: ${lab_installation}
EOF

cat >> ${WORKSPACE}/postgres/inventory/production/group_vars/all/main <<EOF
lab_installation: ${lab_installation}
EOF

cat >> ${WORKSPACE}/prometheus/inventory/production/group_vars/all/main <<EOF
lab_installation: ${lab_installation}
EOF

cat >> ${WORKSPACE}/rabbitmq/inventory/production/group_vars/all/main <<EOF
lab_installation: ${lab_installation}
EOF

cat >> ${WORKSPACE}/usm/inventory/production/group_vars/all/main <<EOF
lab_installation: ${lab_installation}
EOF

