FROM debian:buster-slim

ENV ZIELHOST=
ENV ZIELUSER=
ENV ZIELPASS=

ENV HOST1=
ENV USER1=
ENV PASS1=
ENV HOST2=
ENV USER2=
ENV PASS2=
ENV HOST3=
ENV USER3=
ENV PASS3=
ENV HOST4=
ENV USER4=
ENV PASS4=
ENV HOST5=
ENV USER5=
ENV PASS5=


RUN apt update
RUN apt upgrade -y
RUN apt-get install -y   \
  libauthen-ntlm-perl  \
  libclass-load-perl   \
  libcrypt-openssl-rsa-perl \
  libdigest-hmac-perl  \
  libencode-imaputf7-perl     \
  libfile-copy-recursive-perl \
  libfile-tail-perl        \
  libio-compress-perl     \
  libio-socket-inet6-perl \
  libio-socket-ssl-perl   \
  libio-tee-perl          \
  libmail-imapclient-perl \
  libmodule-implementation-perl \
  libmodule-runtime-perl  \
  libmodule-scandeps-perl \
  libpackage-stash-perl   \
  libpackage-stash-xs-perl \
  libpar-packer-perl      \
  libreadonly-perl        \
  libterm-readkey-perl    \
  libtest-fatal-perl      \
  libtest-pod-perl        \
  libtest-requires-perl   \
  libtest-simple-perl     \
  libunicode-string-perl  \
  liburi-perl             \
  make                    \
  cpanminus \
  libsys-meminfo-perl \
  libregexp-common-perl \
  procps

COPY imapsync /home
COPY command.sh /home
RUN chmod +x /home/imapsync
RUN chmod +x /home/command.sh

WORKDIR /home

ENTRYPOINT [ "./command.sh" ]