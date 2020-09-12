bharathkumarraju@R77-NB193 ~ % docker run --name mongo -d mongo
Unable to find image 'mongo:latest' locally
latest: Pulling from library/mongo
f08d8e2a3ba1: Pull complete
3baa9cb2483b: Pull complete
94e5ff4c0b15: Pull complete
1860925334f9: Pull complete
9d42806c06e6: Pull complete
31a9fd218257: Pull complete
5bd6e3f73ab9: Pull complete
f6ae7a64936b: Pull complete
80fde2cb25c5: Pull complete
1bec62fe62fc: Pull complete
2cf4970a1653: Pull complete
39fac3226e16: Pull complete
86bca9c64faf: Pull complete
Digest: sha256:df9eca84736a666d5f7e7a09aeb8a6d8d073698d5b7349400f10ee75812e0e95
Status: Downloaded newer image for mongo:latest
66cb555d9ac8ef7f724e745f557ffa9bfa9438a8066b7fc9abc96c589ae69ae1
bharathkumarraju@R77-NB193 ~ % docker top mongo
PID                 USER                TIME                COMMAND
3272                999                 0:01                mongod --bind_ip_all
bharathkumarraju@R77-NB193 ~ %



