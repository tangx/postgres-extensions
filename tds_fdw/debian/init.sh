#!/bin/bash

cd $(dirname $0)

apt-get update
apt-get install libsybdb5 \
            libct4 \
            freetds-dev \
            freetds-common  
tar xf tds_fdw-2.0.0-alpha.3--debian9--postgres11.tar.gz -C /usr/

