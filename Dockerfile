FROM alpine

WORKDIR /etc/dovecot

ADD dovecot /etc/postfix

RUN apk add --no-cache dovecot

CMD /usr/sbin/dovecot -F -c /etc/dovecot/dovecot.conf
