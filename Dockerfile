FROM alpine

WORKDIR /etc/dovecot


RUN apk add --no-cache dovecot

COPY dovecot /etc/dovecot

CMD /usr/sbin/dovecot -F -c /etc/dovecot/dovecot.conf
