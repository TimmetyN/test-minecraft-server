FROM openjdk:17-oracle

COPY . /src/java
WORKDIR /src/java

# Maak een ARG voor de poort
ARG APP_PORT=8080

# Expose de poort waarop de applicatie draait
EXPOSE $APP_PORT

CMD echo "Docker minecraft server is starting \n" && java -Xmx2G -jar server.jar --port=$APP_PORT
