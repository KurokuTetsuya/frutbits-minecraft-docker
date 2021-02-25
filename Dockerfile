FROM openjdk:12-alpine

LABEL name "Spigot"
LABEL maintainer "Zen"

ENV SPIGOT_VERSION=$SPIGOT_VERSION

WORKDIR /app

ADD build.sh .
RUN apk add --no-cache wget git && mkdir /spigot

CMD ["sh", "build.sh"]