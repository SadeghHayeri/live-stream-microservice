FROM alpine:3.5

RUN apk --no-cache add wget
RUN apk --no-cache add curl
RUN apk --no-cache add nfs-utils

COPY ./run.sh /

CMD /bin/sh /run.sh
