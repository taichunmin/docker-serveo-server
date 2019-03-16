FROM ubuntu:18.04
LABEL maintainer="taichunmin@gmail.com"
EXPOSE 22 80 443

COPY docker-entrypoint.sh /usr/local/bin/
ADD https://storage.googleapis.com/serveo/download/2018-05-08/serveo-linux-amd64 /usr/local/bin/serveo
RUN \
  set -ex; \
  apt-get update; \
  apt-get install -y --no-install-recommends openssh-client; \
  chmod +x /usr/local/bin/serveo; \
  chmod +x /usr/local/bin/docker-entrypoint.sh; \
  mkdir -p ~/.ssh

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["serveo"]