FROM eclipse-temurin:17-jre-alpine

RUN apk add --no-cache curl && curl https://api.papermc.io/v2/projects/velocity/versions/3.2.0-SNAPSHOT/builds/252/downloads/velocity-3.2.0-SNAPSHOT-252.jar --output /run/velocity.jar

COPY ./start.sh /start.sh

RUN chmod +x /start.sh

VOLUME ["/data"]

ENTRYPOINT ["sh", "/start.sh"]
