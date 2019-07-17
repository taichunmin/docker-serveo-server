[![GitHub stars](https://img.shields.io/github/stars/taichunmin/docker-serveo-server.svg)](https://github.com/taichunmin/docker-serveo-server/stargazers)
[![GitHub license](https://img.shields.io/github/license/taichunmin/docker-serveo-server.svg)](https://github.com/taichunmin/docker-serveo-server/blob/master/LICENSE)
![Docker Stars](https://img.shields.io/docker/stars/taichunmin/serveo-server.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/taichunmin/serveo-server.svg)
![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/taichunmin/serveo-server.svg)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/taichunmin/serveo-server.svg)

# docker for serveo.net server

<https://serveo.net> is an alternative for ngrok. Serveo server can let you host your own https proxy.

## Set up credentials

You should provide a https credentials or generate one by Let's Encrypt.

* [Let's Encrypt dns-cloudflare](https://github.com/taichunmin/docker-serveo-server/blob/master/dns-cloudflare/README.md)

## Usage

1. Copy the example file
    ```bash
    $ cp docker-compose.example.yml docker-compose.yml
    ```
2. You should edit `docker-compose.yml` to change the `domain` argument.
3. use `docker-compose up -d` to start container.
4. you can use `docker-compose logs` to confirm the service start successfully.

## Demo

```bash
$ git clone https://github.com/taichunmin/docker-serveo-server.git

$ cd docker-serveo-server

# You need to set up credentials first, please see dns-cloudflare/README.md

$ cp docker-compose.example.yml docker-compose.yml

$ nano docker-compose.yml # change domain

$ sudo docker-compose up -d

$ sudo docker-compose logs serveo
# Attaching to docker-serveo-server_serveo_1
# serveo_1  | 2019/03/16 13:11:42 Listening on :2222...

$ ssh -R test.example.com:443:localhost:80 example.com -p 2222 # on another computer
# Forwarding HTTP traffic from https://test.example.com
# Press g to start a GUI session and ctrl-c to quit.
```

## LICENSE

MIT License
