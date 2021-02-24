FROM openjdk:12-alpine

LABEL name "PaperMC"
LABEL maintainer "Zen"

WORKDIR /app
RUN apk add --no-cache wget jq && mkdir /papermc

ADD papermc.sh .

# Start Download
CMD ["sh", "./papermc.sh"]