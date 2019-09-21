FROM alpine:edge

RUN apk add --update --upgrade --no-cache --force-overwrite alpine-sdk git vim atools 
RUN adduser -u 1000 -DG abuild --home /aports dev
RUN echo 'dev    ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers.d/dev
RUN su dev -c 'abuild-keygen -an'
RUN cat /aports/.abuild/abuild.conf > /etc/abuild.conf
COPY /entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
