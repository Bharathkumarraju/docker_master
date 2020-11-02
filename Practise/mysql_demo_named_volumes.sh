bharathkumarraju@R77-NB193 docker_master % docker run -d --name bkmysql -e MYSQL_ALLOW_EMPTY_PASSWORD=True mysql
ed37fd580984139f881baf9810684517fcb5a0735537d2e634b2e459643727ae
bharathkumarraju@R77-NB193 docker_master %


bharathkumarraju@R77-NB193 docker_master % docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                 NAMES
ed37fd580984        mysql               "docker-entrypoint.s…"   3 seconds ago       Up 2 seconds        3306/tcp, 33060/tcp   bkmysql
bharathkumarraju@R77-NB193 docker_master %


bharathkumarraju@R77-NB193 docker_master % docker inspect ed37fd580984 | grep -C5 "/var/lib/mysql"
        "Mounts": [
            {
                "Type": "volume",
                "Name": "7d1353ea29470e1a1ce2672c95b831eec2a9c342da99114f3b91afeff3e36c04",
                "Source": "/var/lib/docker/volumes/7d1353ea29470e1a1ce2672c95b831eec2a9c342da99114f3b91afeff3e36c04/_data",
                "Destination": "/var/lib/mysql",
                "Driver": "local",
                "Mode": "",
                "RW": true,
                "Propagation": ""
            }
--
--
            "Cmd": [
                "mysqld"
            ],
            "Image": "mysql",
            "Volumes": {
                "/var/lib/mysql": {}
            },
            "WorkingDir": "",
            "Entrypoint": [
                "docker-entrypoint.sh"
            ],
bharathkumarraju@R77-NB193 docker_master %


bharathkumarraju@R77-NB193 docker_master % docker volume inspect 7d1353ea29470e1a1ce2672c95b831eec2a9c342da99114f3b91afeff3e36c04
[
    {
        "CreatedAt": "2020-11-01T22:46:52Z",
        "Driver": "local",
        "Labels": null,
        "Mountpoint": "/var/lib/docker/volumes/7d1353ea29470e1a1ce2672c95b831eec2a9c342da99114f3b91afeff3e36c04/_data",
        "Name": "7d1353ea29470e1a1ce2672c95b831eec2a9c342da99114f3b91afeff3e36c04",
        "Options": null,
        "Scope": "local"
    }
]
bharathkumarraju@R77-NB193 docker_master %


Named_volumes:
-------------->

bharathkumarraju@R77-NB193 dockerfile-sample-2 % docker run -d --name bkdb -e MYSQL_ALLOW_EMPTY_PASSWORD=True -v rajusdb:/var/lib/mysql mysql
31c9b7532cde0d47122dcb8b9ea4fea3f2d5be9c185ba416cb8148bd6a1fd3c7
bharathkumarraju@R77-NB193 dockerfile-sample-2 % docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                 NAMES
31c9b7532cde        mysql               "docker-entrypoint.s…"   5 seconds ago       Up 3 seconds        3306/tcp, 33060/tcp   bkdb
bharathkumarraju@R77-NB193 dockerfile-sample-2 % docker volume ls
DRIVER              VOLUME NAME
local               0f38b5129b4446ab1dea9a779939d1ec53852f21646df9ea2ba4dd9fe039b10f
local               7d1353ea29470e1a1ce2672c95b831eec2a9c342da99114f3b91afeff3e36c04
local               07ab1e14650c16e8b9d6df5fb01e1a4ee541b24273bb4283b3808a95385294c7
local               0947990de1e8277e8e607bfb48943a122cd0f44cef68aaa52357ec9c4f8b70bc
local               WD
local               bharaths-db-1
local               e9d2d99c2efa7498e61d9448927a9d41f87b76224ea6c74ebbc4973ba8f70019
local               eeb656eb5d63deb9066c59b72c4b14947de91c86792e8f2426b89f7f70d6ad48
local               fccd7331d04eb35d641c42a3925cbac3a65408d3ea154be49879bc361d94db4f
local               rajusdb
bharathkumarraju@R77-NB193 dockerfile-sample-2 %

