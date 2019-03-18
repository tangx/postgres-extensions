FROM postgres:11.2

RUN apt-get update \
    && apt-get install libsybdb5 \
            libct4 \
            freetds-dev \
            freetds-common  \
    && rm -rf /var/lib/apt/lists/* 
ADD tds_fdw-2.0.0-alpha.3--debian9--postgres11.tar.gz /usr/
ADD tds_fdw.conf /etc/ld.so.conf.d/

# sudo docker build -t postgres:11.2--tds_fdw_2.0.0-alpha.3 .

