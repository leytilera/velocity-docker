FROM adoptopenjdk/openjdk16:alpine-jre

RUN apk add --no-cache curl && curl https://papermc.io/api/v2/projects/velocity/versions/3.1.1/builds/98/downloads/velocity-3.1.1-98.jar --output /run/velocity.jar

COPY ./start.sh /start.sh

RUN chmod +x /start.sh

VOLUME ["/data"]

ENTRYPOINT ["sh", "/start.sh"]
