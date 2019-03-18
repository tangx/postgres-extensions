# postgres-extensions
postgres-extensions

> `init.sh` 为 `非 docker` 环境一键安装

## oracle_fdw

注意: 
    + 需要设置 oracle 环境变量
    + 必须安装 oracle-instantclient `basiclite` 或者 `basic`
    + 需要设置 `ldconfig` 

```bash
sudo docker build -t postgres:11.2-oracle_fdw-18.3 .
```

> `oracle-instantclient18.3-basiclite_18.3.0.0.0-3_amd64.deb` 是通过 `alien` 将 [oracle-instantclient18.3-basiclite-18.3.0.0.0-3.x86_64.rpm](http://yum.oracle.com/repo/OracleLinux/OL7/oracle/instantclient/x86_64/getPackage/oracle-instantclient18.3-basiclite-18.3.0.0.0-3.x86_64.rpm) 转话而成。 [Oracle instantclient 官网地址](http://yum.oracle.com/repo/OracleLinux/OL7/oracle/instantclient/x86_64/index.html)


## tds_fdw

```bash
sudo docker build -t postgres:11.2-tds_fdw-2.0.0-alpha.3 .
```

