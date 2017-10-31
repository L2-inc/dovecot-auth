FROM alpine

WORKDIR /etc/dovecot

EXPOSE 1026

RUN apk add --no-cache dovecot-pgsql

COPY dovecot /etc/dovecot

CMD /usr/sbin/dovecot -F -c /etc/dovecot/dovecot.conf
