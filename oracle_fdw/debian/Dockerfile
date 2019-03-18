FROM postgres:11.2

LABEL MAINTAINER="github.com/tangx"

ENV ORACLE_HOME=/usr/lib/oracle/18.3/client64   \
    PATH=$PATH:$ORACLE_HOME/bin

# ENV EXTENSION=oracle_fdw--instantclient18.3-pgsql11-debian9 \
#     EXTENSION_VER=2.1.0

RUN GIT_REPO=https://raw.githubusercontent.com/tangx/postgres-extensions/master/oracle_fdw/debian   \
    && EXTENSION=oracle_fdw--instantclient18.3-pgsql11-debian9 \
    && EXTENSION_VER=2.1.0 \
    && apt update \
    && apt -y install --no-install-recommends \
                    libaio-dev  \
    && apt -y install wget \
                    ca-certificates   \
    # install oracle-instantclient18
    && wget -c "${GIT_REPO}/oracle-instantclient18.3-basiclite_18.3.0.0.0-3_amd64.deb"   \
    && dpkg -i "oracle-instantclient18.3-basiclite_18.3.0.0.0-3_amd64.deb"   \
    && rm -f "oracle-instantclient18.3-basiclite_18.3.0.0.0-3_amd64.deb"    \
    # install oracle_fdw
    && wget -c "${GIT_REPO}/${EXTENSION}.tar.gz"   \
    && tar xf ${EXTENSION}.tar.gz  -C /usr/ \
    && rm -f ${EXTENSION}.tar.gz     \
    && echo $ORACLE_HOME/lib > /etc/ld.so.conf.d/oracle-instantclient18.3.conf  \
    && ldconfig \
    && rm -rf /var/lib/apt/lists/*      \
    && apt purge -y --auto-remove ca-certificates wget 


