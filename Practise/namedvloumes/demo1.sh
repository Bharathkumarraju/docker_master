bharathkumarraju@R77-NB193 bindmounts % docker run -d --name bkpsql -v psql:/var/lib/postgresql/data postgres:9.6.1
Unable to find image 'postgres:9.6.1' locally
9.6.1: Pulling from library/postgres
5040bd298390: Pull complete
f08454c3c700: Pull complete
4db038cdfe03: Pull complete
e1d9ba315f03: Pull complete
25e0ee93170e: Pull complete
3f28084c3f51: Pull complete
78c91f0aedcd: Pull complete
93ab52dbcbb8: Pull complete
27ec75825613: Pull complete
28ef691a9920: Pull complete
0f0dd20755c9: Pull complete
2a4a824861f7: Pull complete
Digest: sha256:0842a7ef786aa2658623085160cb38451eb3d40856e7d222ae0069b6e6296877
Status: Downloaded newer image for postgres:9.6.1
338d7ada444f58fd79ce445d38b89b0fe75029ed58492e833987e382f8153ecd
bharathkumarraju@R77-NB193 bindmounts % docker volume ls
DRIVER              VOLUME NAME
local               psql
bharathkumarraju@R77-NB193 bindmounts %

