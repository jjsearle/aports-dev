FROM alpine:edge

RUN apk add --update --upgrade --no-cache --force-overwrite alpine-sdk git vim atools 
RUN adduser -u 1000 -DG abuild dev
RUN echo 'dev    ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers.d/dev
RUN su dev -c 'abuild-keygen -an'
COPY /entrypoint.sh /
WORKDIR /aports

ENTRYPOINT ["/entrypoint.sh"]
