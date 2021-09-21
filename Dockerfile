FROM adoptopenjdk/openjdk16:alpine-jre

RUN apk add --no-cache curl && curl https://versions.velocitypowered.com/download/3.0.1.jar --output /run/velocity.jar

COPY ./start.sh /start.sh

RUN chmod +x /start.sh

VOLUME ["/data"]

ENTRYPOINT ["sh", "/start.sh"]
