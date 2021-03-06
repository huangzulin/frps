
FROM alpine

LABEL MAINTAINER="huangzulin"

ENV token ""

COPY install.sh run.sh ./
RUN chmod +x install.sh && chmod +x run.sh && ./install.sh

EXPOSE 7000 7001 80 443 445 30000-65535

CMD ./run.sh
