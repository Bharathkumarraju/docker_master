bharathkumarraju@R77-NB193 ~ % docker container run --publish 80:80 nginx
--pid          -- PID namespace to use
--pids-limit   -- Tune container pids limit (set -1 for unlimited)
--privileged   -- Give extended privileges to this container
--publish      -- Expose a containers port to the host
--publish-all  -- Publish all exposed ports
bharathkumarraju@R77-NB193 ~ %


bharathkumarraju@R77-NB193 ~ % docker container run --publish 9000:80 nginx
Unable to find image 'nginx:latest' locally
latest: Pulling from library/nginx
bf5952930446: Pull complete
cb9a6de05e5a: Pull complete
9513ea0afb93: Pull complete
b49ea07d2e93: Pull complete
a5e4a503d449: Pull complete
Digest: sha256:b0ad43f7ee5edbc0effbc14645ae7055e21bc1973aee5150745632a24a752661
Status: Downloaded newer image for nginx:latest
/docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
/docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
/docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
10-listen-on-ipv6-by-default.sh: Getting the checksum of /etc/nginx/conf.d/default.conf
10-listen-on-ipv6-by-default.sh: Enabled listen on IPv6 in /etc/nginx/conf.d/default.conf
/docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
/docker-entrypoint.sh: Configuration complete; ready for start up
172.17.0.1 - - [07/Sep/2020:21:24:36 +0000] "GET / HTTP/1.1" 200 612 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36" "-"
172.17.0.1 - - [07/Sep/2020:21:24:36 +0000] "GET /favicon.ico HTTP/1.1" 404 555 "http://localhost:9000/" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36" "-"
2020/09/07 21:24:36 [error] 29#29: *1 open() "/usr/share/nginx/html/favicon.ico" failed (2: No such file or directory), client: 172.17.0.1, server: localhost, request: "GET /favicon.ico HTTP/1.1", host: "localhost:9000", referrer: "http://localhost:9000/"

172.17.0.1 - - [07/Sep/2020:21:25:55 +0000] "GET / HTTP/1.1" 200 612 "-" "curl/7.64.1" "-"





bharathkumarraju@R77-NB193 ~ % curl -k http://localhost:9000
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
bharathkumarraju@R77-NB193 ~ %


bharathkumarraju@R77-NB193 ~ % docker container run --publish 9000:80 --detach
--detach       -- Detached mode: leave the container running in the background
--detach-keys  -- Escape key sequence used to detach a container

bharathkumarraju@R77-NB193 ~ % docker container run --publish 9000:80 --detach nginx
c638b84e362a5af948fcd21003ccb2e9908b485a810af5fa0ef78b2751a91026
bharathkumarraju@R77-NB193 ~ %

bharathkumarraju@R77-NB193 ~ % docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                  NAMES
c638b84e362a        nginx               "/docker-entrypoint.…"   9 seconds ago       Up 8 seconds        0.0.0.0:9000->80/tcp   zealous_haibt
bharathkumarraju@R77-NB193 ~ %


bharathkumarraju@R77-NB193 ~ % docker container ls
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                  NAMES
c638b84e362a        nginx               "/docker-entrypoint.…"   41 seconds ago      Up 40 seconds       0.0.0.0:9000->80/tcp   zealous_haibt
bharathkumarraju@R77-NB193 ~ %


bharathkumarraju@R77-NB193 ~ % docker container ls
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                  NAMES
c638b84e362a        nginx               "/docker-entrypoint.…"   41 seconds ago      Up 40 seconds       0.0.0.0:9000->80/tcp   zealous_haibt
bharathkumarraju@R77-NB193 ~ % docker container stop c63
c63
bharathkumarraju@R77-NB193 ~ % docker container ls
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
bharathkumarraju@R77-NB193 ~ %

bharathkumarraju@R77-NB193 ~ % docker container ls -a
CONTAINER ID        IMAGE                            COMMAND                  CREATED              STATUS                      PORTS               NAMES
c638b84e362a        nginx                            "/docker-entrypoint.…"   About a minute ago   Exited (0) 18 seconds ago                       zealous_haibt
33c7b8d2821e        nginx                            "/docker-entrypoint.…"   6 minutes ago        Exited (0) 2 minutes ago                        dazzling_khayyam
a543dfb1c87a        211c909c6e2d                     "bash"                   17 hours ago         Exited (0) 17 hours ago                         inspiring_noyce
90355bc171ff        211c909c6e2d                     "--name tf_test"         17 hours ago         Created                                         peaceful_curran
7204f072484b        211c909c6e2d                     "-name tf_test"          17 hours ago         Created                                         recursing_hodgkin
3c4db2b476ba        bharathkumarraju/packer:latest   "bash"                   2 weeks ago          Exited (255) 6 days ago                         sad_bassi
4b85558c421c        bharathkumarraju/packer:latest   "bash"                   2 weeks ago          Exited (0) 2 weeks ago                          charming_babbage
1172e783725e        hashicorp/terraform:0.12.29      "/usr/bin/tail -f /d…"   4 weeks ago          Exited (255) 3 weeks ago                        terraform1234
67c424baf69b        hashicorp/terraform:0.12.29      "/usr/bin/tail -f /d…"   4 weeks ago          Exited (137) 4 weeks ago                        terraform123
8e41ed86317f        hashicorp/terraform:latest       "/usr/bin/tail -f /d…"   4 weeks ago          Exited (137) 4 weeks ago                        terraform
416eb1c1de78        hashicorp/terraform:0.12.29      "/bin/terraform plan"    4 weeks ago          Exited (1) 4 weeks ago                          gifted_elion
9e1955bc9c37        hashicorp/terraform:0.12.29      "/bin/terraform"         4 weeks ago          Exited (127) 4 weeks ago                        thirsty_stonebraker
1c6487ba235f        hashicorp/terraform:0.12.29      "/bin/terraform bash…"   4 weeks ago          Exited (127) 4 weeks ago                        awesome_rhodes
2117b47110f3        hashicorp/terraform:0.12.29      "/bin/terraform bash"    4 weeks ago          Exited (127) 4 weeks ago                        hopeful_allen
c470daa0156d        hashicorp/terraform:0.12.29      "/bin/terraform -t sh"   4 weeks ago          Exited (127) 4 weeks ago                        nervous_mendel
74b04cb26db1        hashicorp/terraform:0.12.29      "/bin/terraform"         4 weeks ago          Exited (127) 4 weeks ago                        wonderful_varahamihira
fe8ee3ecfb6f        hashicorp/terraform:0.12.29      "/bin/terraform"         4 weeks ago          Exited (127) 4 weeks ago                        confident_colden
e039ba73e8ea        hashicorp/terraform:0.12.29      "/bin/terraform"         4 weeks ago          Exited (127) 4 weeks ago                        gallant_moser
bharathkumarraju@R77-NB193 ~ %


bharathkumarraju@R77-NB193 ~ % docker container run --publish 80:80 --detach --name bharathsweb nginx
aafb93f083f9d1763d1b984802a2f562f4a5a69ebec80b054e52d2d860e70922
bharathkumarraju@R77-NB193 ~ % docker container ls
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                NAMES
aafb93f083f9        nginx               "/docker-entrypoint.…"   6 seconds ago       Up 5 seconds        0.0.0.0:80->80/tcp   bharathsweb
bharathkumarraju@R77-NB193 ~ %


bharathkumarraju@R77-NB193 ~ % docker container logs bharathsweb
/docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
/docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
/docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
10-listen-on-ipv6-by-default.sh: Getting the checksum of /etc/nginx/conf.d/default.conf
10-listen-on-ipv6-by-default.sh: Enabled listen on IPv6 in /etc/nginx/conf.d/default.conf
/docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
/docker-entrypoint.sh: Configuration complete; ready for start up
172.17.0.1 - - [07/Sep/2020:21:33:41 +0000] "GET / HTTP/1.1" 200 612 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36" "-"
172.17.0.1 - - [07/Sep/2020:21:33:42 +0000] "GET /favicon.ico HTTP/1.1" 404 555 "http://localhost/" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36" "-"
2020/09/07 21:33:42 [error] 28#28: *1 open() "/usr/share/nginx/html/favicon.ico" failed (2: No such file or directory), client: 172.17.0.1, server: localhost, request: "GET /favicon.ico HTTP/1.1", host: "localhost", referrer: "http://localhost/"
172.17.0.1 - - [07/Sep/2020:21:33:43 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36" "-"
172.17.0.1 - - [07/Sep/2020:21:33:44 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36" "-"
172.17.0.1 - - [07/Sep/2020:21:33:45 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36" "-"
172.17.0.1 - - [07/Sep/2020:21:33:46 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36" "-"
172.17.0.1 - - [07/Sep/2020:21:33:47 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36" "-"
172.17.0.1 - - [07/Sep/2020:21:33:48 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36" "-"
bharathkumarraju@R77-NB193 ~ %


bharathkumarraju@R77-NB193 ~ % docker container ls
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                NAMES
aafb93f083f9        nginx               "/docker-entrypoint.…"   2 minutes ago       Up 2 minutes        0.0.0.0:80->80/tcp   bharathsweb
bharathkumarraju@R77-NB193 ~ % docker container top bharathsweb
PID                 USER                TIME                COMMAND
2683                root                0:00                nginx: master process nginx -g daemon off;
2741                101                 0:00                nginx: worker process
bharathkumarraju@R77-NB193 ~ %

bharathkumarraju@R77-NB193 ~ % docker container ls -a --quiet
aafb93f083f9
c638b84e362a
33c7b8d2821e
a543dfb1c87a
90355bc171ff
7204f072484b
3c4db2b476ba
4b85558c421c
1172e783725e
67c424baf69b
8e41ed86317f
416eb1c1de78
9e1955bc9c37
1c6487ba235f
2117b47110f3
c470daa0156d
74b04cb26db1
fe8ee3ecfb6f
e039ba73e8ea
bharathkumarraju@R77-NB193

  bharathkumarraju@R77-NB193 ~ % docker container rm -f $(docker container ls -a --quiet)
aafb93f083f9
c638b84e362a
33c7b8d2821e
a543dfb1c87a
90355bc171ff
7204f072484b
3c4db2b476ba
4b85558c421c
1172e783725e
67c424baf69b
8e41ed86317f
416eb1c1de78
9e1955bc9c37
1c6487ba235f
2117b47110f3
c470daa0156d
74b04cb26db1
fe8ee3ecfb6f
e039ba73e8ea
bharathkumarraju@R77-NB193 ~ %


