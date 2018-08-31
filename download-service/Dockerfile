FROM alpine:3.5

RUN apk add wget
RUN apk add curl
RUN apk add nfs-utils

COPY ./run.sh /

CMD /bin/sh /run.sh
