FROM alpine

RUN apk update && apk add apache2-utils

ADD run.sh /

ENV PASSWORDFILE /auth/htpasswd
ENV OPTIONS=
ENV USERNAME=
ENV PASSWORD=

VOLUME /auth

CMD ["/run.sh"]
