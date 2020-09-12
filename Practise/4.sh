bharathkumarraju@R77-NB193 ~ % docker container run --publish 80:80 --name bkrnginx -d nginx
3a3f3d11ccb1fd861d89a1602ec3778ae50ba5e36bb971a9a5215aeb955d4348
bharathkumarraju@R77-NB193 ~ %

bharathkumarraju@R77-NB193 ~ % docker container run --publish 8080:80 --name bkrhttpd -d httpd
Unable to find image 'httpd:latest' locally
latest: Pulling from library/httpd
bf5952930446: Already exists
3d3fecf6569b: Pull complete
b5fc3125d912: Pull complete
679d69c01e90: Pull complete
76291586768e: Pull complete
Digest: sha256:3cbdff4bc16681541885ccf1524a532afa28d2a6578ab7c2d5154a7abc182379
Status: Downloaded newer image for httpd:latest
b290a92d7e640be4e9565ff0c69453dbd3d9c06a533930b7961e5ef53cdd4503
bharathkumarraju@R77-NB193 ~ %


bharathkumarraju@R77-NB193 ~ % docker container run --publish 3306:3306 --name bkrmysql -d --env MYSQL_RANDOM_ROOT_PASSWORD=yes mysql
Unable to find image 'mysql:latest' locally
latest: Pulling from library/mysql
bf5952930446: Already exists
8254623a9871: Pull complete
938e3e06dac4: Pull complete
ea28ebf28884: Pull complete
f3cef38785c2: Pull complete
894f9792565a: Pull complete
1d8a57523420: Pull complete
6c676912929f: Pull complete
3cdd8ff735c9: Pull complete
4c70cbe51682: Pull complete
e21cf0cb4dc3: Pull complete
28c36cd3abcc: Pull complete
Digest: sha256:6ded54eb1e5d048d8310321ba7b92587e9eadc83b519165b70bbe47e4046e76a
Status: Downloaded newer image for mysql:latest
03e433539a6913fa7a98abb4a1627215305634c570b3f3b4a23b6c06ff2a8714
bharathkumarraju@R77-NB193 ~ %




bharathkumarraju@R77-NB193 ~ % docker container logs bkrmysql
2020-09-07 22:18:04+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.21-1debian10 started.
2020-09-07 22:18:05+00:00 [Note] [Entrypoint]: Switching to dedicated user 'mysql'
2020-09-07 22:18:05+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.21-1debian10 started.
2020-09-07 22:18:05+00:00 [Note] [Entrypoint]: Initializing database files
2020-09-07T22:18:05.313837Z 0 [System] [MY-013169] [Server] /usr/sbin/mysqld (mysqld 8.0.21) initializing of server in progress as process 43
2020-09-07T22:18:05.326508Z 1 [System] [MY-013576] [InnoDB] InnoDB initialization has started.
2020-09-07T22:18:06.191205Z 1 [System] [MY-013577] [InnoDB] InnoDB initialization has ended.
2020-09-07T22:18:08.730510Z 6 [Warning] [MY-010453] [Server] root@localhost is created with an empty password ! Please consider switching off the --initialize-insecure option.
2020-09-07 22:18:13+00:00 [Note] [Entrypoint]: Database files initialized
2020-09-07 22:18:13+00:00 [Note] [Entrypoint]: Starting temporary server
2020-09-07T22:18:14.306478Z 0 [System] [MY-010116] [Server] /usr/sbin/mysqld (mysqld 8.0.21) starting as process 90
2020-09-07T22:18:14.352640Z 1 [System] [MY-013576] [InnoDB] InnoDB initialization has started.
2020-09-07T22:18:14.687576Z 1 [System] [MY-013577] [InnoDB] InnoDB initialization has ended.
2020-09-07T22:18:14.944989Z 0 [System] [MY-011323] [Server] X Plugin ready for connections. Socket: /var/run/mysqld/mysqlx.sock
2020-09-07T22:18:15.244653Z 0 [Warning] [MY-010068] [Server] CA certificate ca.pem is self signed.
2020-09-07T22:18:15.245063Z 0 [System] [MY-013602] [Server] Channel mysql_main configured to support TLS. Encrypted connections are now supported for this channel.
2020-09-07T22:18:15.248911Z 0 [Warning] [MY-011810] [Server] Insecure configuration for --pid-file: Location '/var/run/mysqld' in the path is accessible to all OS users. Consider choosing a different directory.
2020-09-07T22:18:15.336833Z 0 [System] [MY-010931] [Server] /usr/sbin/mysqld: ready for connections. Version: '8.0.21'  socket: '/var/run/mysqld/mysqld.sock'  port: 0  MySQL Community Server - GPL.
2020-09-07 22:18:15+00:00 [Note] [Entrypoint]: Temporary server started.
Warning: Unable to load '/usr/share/zoneinfo/iso3166.tab' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/leap-seconds.list' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/zone.tab' as time zone. Skipping it.
Warning: Unable to load '/usr/share/zoneinfo/zone1970.tab' as time zone. Skipping it.
2020-09-07 22:18:23+00:00 [Note] [Entrypoint]: GENERATED ROOT PASSWORD: aic2SheeraeC8aemeelizoht2dohvahx

2020-09-07 22:18:23+00:00 [Note] [Entrypoint]: Stopping temporary server
2020-09-07T22:18:23.654809Z 10 [System] [MY-013172] [Server] Received SHUTDOWN from user root. Shutting down mysqld (Version: 8.0.21).
2020-09-07T22:18:25.884392Z 0 [System] [MY-010910] [Server] /usr/sbin/mysqld: Shutdown complete (mysqld 8.0.21)  MySQL Community Server - GPL.
2020-09-07 22:18:26+00:00 [Note] [Entrypoint]: Temporary server stopped

2020-09-07 22:18:26+00:00 [Note] [Entrypoint]: MySQL init process done. Ready for start up.

2020-09-07T22:18:27.045921Z 0 [System] [MY-010116] [Server] /usr/sbin/mysqld (mysqld 8.0.21) starting as process 1
2020-09-07T22:18:27.069009Z 1 [System] [MY-013576] [InnoDB] InnoDB initialization has started.
2020-09-07T22:18:27.403628Z 1 [System] [MY-013577] [InnoDB] InnoDB initialization has ended.
2020-09-07T22:18:27.654780Z 0 [System] [MY-011323] [Server] X Plugin ready for connections. Bind-address: '::' port: 33060, socket: /var/run/mysqld/mysqlx.sock
2020-09-07T22:18:27.850970Z 0 [Warning] [MY-010068] [Server] CA certificate ca.pem is self signed.
2020-09-07T22:18:27.851378Z 0 [System] [MY-013602] [Server] Channel mysql_main configured to support TLS. Encrypted connections are now supported for this channel.
2020-09-07T22:18:27.856778Z 0 [Warning] [MY-011810] [Server] Insecure configuration for --pid-file: Location '/var/run/mysqld' in the path is accessible to all OS users. Consider choosing a different directory.
2020-09-07T22:18:27.915453Z 0 [System] [MY-010931] [Server] /usr/sbin/mysqld: ready for connections. Version: '8.0.21'  socket: '/var/run/mysqld/mysqld.sock'  port: 3306  MySQL Community Server - GPL.
bharathkumarraju@R77-NB193 ~ %




