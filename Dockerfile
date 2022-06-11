FROM openjdk:8-jre-buster
MAINTAINER yanghui <672859954@qq.com>

# Add the app itself
ARG JAR_FILE
ADD target/${JAR_FILE} /usr/share/app.jar

ENTRYPOINT ["java", "-jar", "/usr/share/app.jar"]
EXPOSE 8080