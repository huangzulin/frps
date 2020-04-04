
FROM alpine

LABEL MAINTAINER="huangzulin"

ENV token ""

COPY install.sh run.sh ./
RUN ./install.sh

EXPOSE 7000 7001 80

CMD run.sh