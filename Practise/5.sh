bharathkumarraju@R77-NB193 terraform-google-gce % docker container run --name bkweb -d nginx
caa1cec0695141cbc62cd24289425e2db65765a506918d9f44d8eef92c571d11
bharathkumarraju@R77-NB193

bharathkumarraju@R77-NB193 terraform-google-gce % docker container run -d --name bkdb2 -e MYSQL_RANDOM_ROOT_PASSWORD=true mysql
7a331b2ab1e019967949acdbd455f633f8e407d5ce31cc0b788070fb9fd7502c
bharathkumarraju@R77-NB193 terraform-google-gce % docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                 NAMES
7a331b2ab1e0        mysql               "docker-entrypoint.s…"   2 seconds ago       Up 1 second         3306/tcp, 33060/tcp   bkdb2
caa1cec06951        nginx               "/docker-entrypoint.…"   3 minutes ago       Up 3 minutes        80/tcp                bkweb
bharathkumarraju@R77-NB193 terraform-google-gce %


bharathkumarraju@R77-NB193 terraform-google-gce % docker run -it --name bkweb2 nginx bash
root@18081e37a3d9:/#

root@18081e37a3d9:/# ls -rlth
total 72K
drwxr-xr-x   2 root root 4.0K Jul 10 21:04 home
drwxr-xr-x   2 root root 4.0K Jul 10 21:04 boot
drwxr-xr-x   1 root root 4.0K Aug  3 07:00 var
drwxr-xr-x   1 root root 4.0K Aug  3 07:00 usr
drwxr-xr-x   2 root root 4.0K Aug  3 07:00 srv
drwxr-xr-x   2 root root 4.0K Aug  3 07:00 sbin
drwxr-xr-x   3 root root 4.0K Aug  3 07:00 run
drwx------   2 root root 4.0K Aug  3 07:00 root
drwxr-xr-x   2 root root 4.0K Aug  3 07:00 opt
drwxr-xr-x   2 root root 4.0K Aug  3 07:00 mnt
drwxr-xr-x   2 root root 4.0K Aug  3 07:00 media
drwxr-xr-x   2 root root 4.0K Aug  3 07:00 lib64
drwxr-xr-x   2 root root 4.0K Aug  3 07:00 bin
-rwxrwxr-x   1 root root 1.2K Aug 14 00:36 docker-entrypoint.sh
drwxr-xr-x   1 root root 4.0K Aug 14 00:36 lib
drwxrwxrwt   1 root root 4.0K Aug 14 00:36 tmp
drwxr-xr-x   1 root root 4.0K Aug 14 00:36 docker-entrypoint.d
drwxr-xr-x   1 root root 4.0K Sep 12 03:40 etc
dr-xr-xr-x 164 root root    0 Sep 12 03:40 proc
drwxr-xr-x   5 root root  360 Sep 12 03:40 dev
dr-xr-xr-x  12 root root    0 Sep 12 03:42 sys
root@18081e37a3d9:/# exit
exit
bharathkumarraju@R77-NB193 terraform-google-gce % docker container ls
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                 NAMES
7a331b2ab1e0        mysql               "docker-entrypoint.s…"   12 minutes ago      Up 12 minutes       3306/tcp, 33060/tcp   bkdb2
caa1cec06951        nginx               "/docker-entrypoint.…"   15 minutes ago      Up 15 minutes       80/tcp                bkweb
bharathkumarraju@R77-NB193 terraform-google-gce %


