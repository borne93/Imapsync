FROM debian:buster-slim

ENV HOST1=XXX
ENV USER1=XXX
ENV PASS1=XXX
ENV HOST2=XXX
ENV USER2=XXX
ENV PASS2=XXX


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