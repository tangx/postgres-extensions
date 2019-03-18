#!/bin/bash


cd $(dirname $0)

dpkg -i oracle-instantclient18.3-basiclite_18.3.0.0.0-3_amd64.deb

apt update
apt -y install --no-install-recommends libaio-dev
rm -rf /var/lib/apt/lists/*

tar xf oracle_fdw--instantclient18.3-pgsql11-debian9.tar.gz -C /usr/

echo $ORACLE_HOME/lib > /etc/ld.so.conf.d/oracle-instantclient18.3.conf
ldconfig


cat >> /etc/profile <<EOF
export ORACLE_HOME=/usr/lib/oracle/18.3/client64
export PATH=$PATH:$ORACLE_HOME/bin
# export TNS_ADMIN=$ORACLE_HOME/network/admin
EOF


# source /etc/profile
# psql -U postgres -c "CREATE EXTENSION oracle_fdw;"


