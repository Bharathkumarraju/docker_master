bharathkumarraju@R77-NB193 terraform-google-gce % docker container run -it --name ubuntu ubuntu
root@15e03a1e1f37:/# ls -la
total 56
drwxr-xr-x   1 root root 4096 Sep 12 03:45 .
drwxr-xr-x   1 root root 4096 Sep 12 03:45 ..
-rwxr-xr-x   1 root root    0 Sep 12 03:45 .dockerenv
lrwxrwxrwx   1 root root    7 Jun  6 01:18 bin -> usr/bin
drwxr-xr-x   2 root root 4096 Apr 15 11:09 boot
drwxr-xr-x   5 root root  360 Sep 12 03:45 dev
drwxr-xr-x   1 root root 4096 Sep 12 03:45 etc
drwxr-xr-x   2 root root 4096 Apr 15 11:09 home
lrwxrwxrwx   1 root root    7 Jun  6 01:18 lib -> usr/lib
lrwxrwxrwx   1 root root    9 Jun  6 01:18 lib32 -> usr/lib32
lrwxrwxrwx   1 root root    9 Jun  6 01:18 lib64 -> usr/lib64
lrwxrwxrwx   1 root root   10 Jun  6 01:18 libx32 -> usr/libx32
drwxr-xr-x   2 root root 4096 Jun  6 01:18 media
drwxr-xr-x   2 root root 4096 Jun  6 01:18 mnt
drwxr-xr-x   2 root root 4096 Jun  6 01:18 opt
dr-xr-xr-x 166 root root    0 Sep 12 03:45 proc
drwx------   2 root root 4096 Jun  6 01:21 root
drwxr-xr-x   1 root root 4096 Jun 17 01:20 run
lrwxrwxrwx   1 root root    8 Jun  6 01:18 sbin -> usr/sbin
drwxr-xr-x   2 root root 4096 Jun  6 01:18 srv
dr-xr-xr-x  12 root root    0 Sep 12 03:42 sys
drwxrwxrwt   2 root root 4096 Jun  6 01:21 tmp
drwxr-xr-x   1 root root 4096 Jun  6 01:18 usr
drwxr-xr-x   1 root root 4096 Jun  6 01:21 var
root@15e03a1e1f37:/# apt-get update
Get:1 http://security.ubuntu.com/ubuntu focal-security InRelease [107 kB]
Get:2 http://archive.ubuntu.com/ubuntu focal InRelease [265 kB]
Get:3 http://security.ubuntu.com/ubuntu focal-security/multiverse amd64 Packages [1078 B]
Get:4 http://security.ubuntu.com/ubuntu focal-security/restricted amd64 Packages [45.4 kB]
Get:5 http://archive.ubuntu.com/ubuntu focal-updates InRelease [111 kB]
Get:6 http://security.ubuntu.com/ubuntu focal-security/universe amd64 Packages [67.5 kB]
Get:7 http://archive.ubuntu.com/ubuntu focal-backports InRelease [98.3 kB]
Get:8 http://security.ubuntu.com/ubuntu focal-security/main amd64 Packages [231 kB]
Get:9 http://archive.ubuntu.com/ubuntu focal/main amd64 Packages [1275 kB]
Get:10 http://archive.ubuntu.com/ubuntu focal/restricted amd64 Packages [33.4 kB]
Get:11 http://archive.ubuntu.com/ubuntu focal/universe amd64 Packages [11.3 MB]
Get:12 http://archive.ubuntu.com/ubuntu focal/multiverse amd64 Packages [177 kB]
Get:13 http://archive.ubuntu.com/ubuntu focal-updates/universe amd64 Packages [207 kB]
Get:14 http://archive.ubuntu.com/ubuntu focal-updates/multiverse amd64 Packages [17.3 kB]
Get:15 http://archive.ubuntu.com/ubuntu focal-updates/restricted amd64 Packages [45.7 kB]
Get:16 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 Packages [457 kB]
Get:17 http://archive.ubuntu.com/ubuntu focal-backports/universe amd64 Packages [3195 B]
Fetched 14.5 MB in 14s (1012 kB/s)
Reading package lists... Done
root@15e03a1e1f37:/#

root@15e03a1e1f37:/# exit
exit
bharathkumarraju@R77-NB193 terraform-google-gce %

bharathkumarraju@R77-NB193 terraform-google-gce % docker container ls
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                 NAMES
7a331b2ab1e0        mysql               "docker-entrypoint.s…"   18 minutes ago      Up 18 minutes       3306/tcp, 33060/tcp   bkdb2
caa1cec06951        nginx               "/docker-entrypoint.…"   22 minutes ago      Up 22 minutes       80/tcp                bkweb
bharathkumarraju@R77-NB193 terraform-google-gce %

bharathkumarraju@R77-NB193 terraform-google-gce % docker container start -ai ubuntu
root@15e03a1e1f37:/#

root@15e03a1e1f37:/# curl google.com
<HTML><HEAD><meta http-equiv="content-type" content="text/html;charset=utf-8">
<TITLE>301 Moved</TITLE></HEAD><BODY>
<H1>301 Moved</H1>
The document has moved
<A HREF="http://www.google.com/">here</A>.
</BODY></HTML>
root@15e03a1e1f37:/#