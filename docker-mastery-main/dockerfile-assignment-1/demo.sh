bhabharathkumarraju@R77-NB193 dockerfile-assignment-1 % docker build -t bknode .
Sending build context to Docker daemon  443.4kB
Step 1/9 : FROM node:6-alpine
6-alpine: Pulling from library/node
bdf0201b3a05: Pull complete
e9fa13fdf0f5: Pull complete
ccc877228d8f: Pull complete
Digest: sha256:17258206fc9256633c7100006b1cfdf25b129b6a40b8e5d37c175026482c84e3
Status: Downloaded newer image for node:6-alpine
 ---> dfc29bfa7d41
Step 2/9 : EXPOSE 3000
 ---> Running in 579fd7ad1923
Removing intermediate container 579fd7ad1923
 ---> 879596cee403
Step 3/9 : RUN apk  add --update tini
 ---> Running in 64d74c48d7c6
fetch http://dl-cdn.alpinelinux.org/alpine/v3.9/main/x86_64/APKINDEX.tar.gz
fetch http://dl-cdn.alpinelinux.org/alpine/v3.9/community/x86_64/APKINDEX.tar.gz
(1/1) Installing tini (0.18.0-r0)
Executing busybox-1.29.3-r10.trigger
OK: 7 MiB in 17 packages
Removing intermediate container 64d74c48d7c6
 ---> 688fe8c78f89
Step 4/9 : RUN mkdir -p /usr/src/app
 ---> Running in 1ca20470a14e
Removing intermediate container 1ca20470a14e
 ---> e12971b5ba35
Step 5/9 : WORKDIR /usr/src/app
 ---> Running in ec4a93e6d92e
Removing intermediate container ec4a93e6d92e
 ---> 0714da5bb57b
Step 6/9 : COPY package.json package.json
 ---> 47a7ca401200
Step 7/9 : RUN npm install && npm cache clean
 ---> Running in 5b249c8afaf3
dockerfile-assignment-1@0.0.0 /usr/src/app
+-- body-parser@1.19.0
| +-- bytes@3.1.0
| +-- content-type@1.0.4
| +-- depd@1.1.2
| +-- http-errors@1.7.2
| | +-- inherits@2.0.3
| | `-- toidentifier@1.0.0
| +-- iconv-lite@0.4.24
| | `-- safer-buffer@2.1.2
| +-- on-finished@2.3.0
| | `-- ee-first@1.1.1
| +-- qs@6.7.0
| +-- raw-body@2.4.0
| | `-- unpipe@1.0.0
| `-- type-is@1.6.18
|   +-- media-typer@0.3.0
|   `-- mime-types@2.1.27
|     `-- mime-db@1.44.0
+-- cookie-parser@1.4.5
| +-- cookie@0.4.0
| `-- cookie-signature@1.0.6
+-- debug@2.6.9
| `-- ms@2.0.0
+-- express@4.17.1
| +-- accepts@1.3.7
| | `-- negotiator@0.6.2
| +-- array-flatten@1.1.1
| +-- content-disposition@0.5.3
| +-- encodeurl@1.0.2
| +-- escape-html@1.0.3
| +-- etag@1.8.1
| +-- finalhandler@1.1.2
| +-- fresh@0.5.2
| +-- merge-descriptors@1.0.1
| +-- methods@1.1.2
| +-- parseurl@1.3.3
| +-- path-to-regexp@0.1.7
| +-- proxy-addr@2.0.6
| | +-- forwarded@0.1.2
| | `-- ipaddr.js@1.9.1
| +-- range-parser@1.2.1
| +-- safe-buffer@5.1.2
| +-- send@0.17.1
| | +-- destroy@1.0.4
| | +-- mime@1.6.0
| | `-- ms@2.1.1
| +-- serve-static@1.14.1
| +-- setprototypeof@1.1.1
| +-- statuses@1.5.0
| +-- utils-merge@1.0.1
| `-- vary@1.1.2
+-- hbs@4.0.6
| +-- handlebars@4.3.5
| | +-- neo-async@2.6.2
| | +-- optimist@0.6.1
| | | +-- minimist@0.0.10
| | | `-- wordwrap@0.0.3
| | +-- source-map@0.6.1
| | `-- uglify-js@3.11.4
| `-- walk@2.3.14
|   `-- foreachasync@3.0.0
+-- morgan@1.10.0
| +-- basic-auth@2.0.1
| +-- depd@2.0.0
| `-- on-headers@1.0.2
`-- serve-favicon@2.5.0
  +-- ms@2.1.1
  `-- safe-buffer@5.1.1

Removing intermediate container 5b249c8afaf3
 ---> 12497dfe5d75
Step 8/9 : COPY . .
 ---> 9904fe878554
Step 9/9 : CMD ["tini", "--", "node", "./bin/www"]
 ---> Running in f8cef5163566
Removing intermediate container f8cef5163566
 ---> de8ed82386be
Successfully built de8ed82386be
Successfully tagged bknode:latest
bharathkumarraju@R77-NB193 dockerfile-assignment-1 %


bharathkumarraju@R77-NB193 dockerfile-assignment-1 % docker run -p 80:3000 bknode --rm
docker: Error response from daemon: OCI runtime create failed: container_linux.go:349: starting container process caused "exec: \"--rm\": executable file not found in $PATH": unknown.
bharathkumarraju@R77-NB193 dockerfile-assignment-1 % docker run -p 80:3000 --rm bknode
GET / 200 143.676 ms - 290
GET /stylesheets/style.css 200 26.923 ms - 111
GET /images/picard.gif 200 3.301 ms - 417700
GET / 304 9.049 ms - -
GET /stylesheets/style.css 304 1.795 ms - -
GET /images/picard.gif 304 0.696 ms - -
^C%                                                                                                                                                                                                       bharathkumarraju@R77-NB193 dockerfile-assignment-1 %
