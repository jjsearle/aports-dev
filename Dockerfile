FROM alpine:edge

RUN apk add --update --upgrade --no-cache --force-overwrite alpine-sdk git vim atools 
RUN adduser -DG abuild dev
RUN echo 'dev    ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers.d/dev
RUN su dev -c 'abuild-keygen -an'
RUN cat /home/dev/.abuild/abuild.conf > /etc/abuild.conf
USER dev
