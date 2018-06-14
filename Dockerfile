FROM base/devel:latest

RUN echo -e '\n[tda]\nSigLevel = Never\nServer = https://repo.tda.tamedia.ch' >> /etc/pacman.conf
RUN pacman -Sy --noconfirm archlinux-keyring
RUN pacman-key --init && pacman-key --populate archlinux && pacman-key --refresh-keys

RUN pacman --noconfirm -Syy
RUN pacman -Sy --needed --needed  --noconfirm openssl openssl-1.0
RUN pacman -Syu --noconfirm --needed h2o-future tini


ADD h2o.conf /etc/h2o.conf
ADD admin.yaml /etc/admin.yaml
ADD kafka.yaml /etc/kafka.yaml
ADD handlers /etc/handlers
ADD certs /etc/certs
ADD kafka-brokers.yaml /etc/kafka-brokers.yaml
ADD start.sh /bin/start.sh
RUN chmod -R 755 /bin/start.sh 

ENTRYPOINT ["/sbin/tini", "--"]

WORKDIR /etc
CMD /bin/start.sh

EXPOSE 9399
EXPOSE 8080