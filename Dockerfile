FROM alpine as BuildStage

RUN apk update && apk --no-cache add curl unzip

WORKDIR /app
RUN curl -L https://github.com/hivemq/hivemq-mqtt-web-client/archive/refs/heads/master.zip -o hivemq.zip && unzip hivemq.zip

FROM nginx:alpine
RUN apk --no-cache add ca-certificates
COPY --from=BuildStage /app/hivemq-mqtt-web-client-master /usr/share/nginx/html

EXPOSE 80