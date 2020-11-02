bharathkumarraju@R77-NB193 bindmounts % docker run -d --name bksnginx2 -p 8080:80 -v $(pwd):/usr/share/nginx/html nginx
9e370fd5ffb7a62008c68bc37f19c16822172ceedff8de331f6ffab54e2b5151
bharathkumarraju@R77-NB193 bindmounts %



bharathkumarraju@R77-NB193 bindmounts % docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                  NAMES
9e370fd5ffb7        nginx               "/docker-entrypoint.…"   3 seconds ago       Up 2 seconds        0.0.0.0:8080->80/tcp   bksnginx2
8048d06da9c3        nginx               "/docker-entrypoint.…"   4 minutes ago       Up 4 minutes        0.0.0.0:80->80/tcp     bknginx
bharathkumarraju@R77-NB193 bindmounts %
