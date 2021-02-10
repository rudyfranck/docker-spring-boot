 FROM openjdk:latest
 ADD target/docker-spring-boot.jar docker-spring-boot.jar
 ENTRYPOINT ["java","-jar","docker-spring-boot.jar"]
  EXPOSE 8095

# FROM openjdk:14-jdk-alpine
# ARG JAR_FILE=target/docker-spring-boot.jar
# COPY ${JAR_FILE} docker-spring-boot.jar
# ENTRYPOINT ["java","-jar","docker-spring-boot.jar"]

# FROM openjdk:14-jdk-alpine
# RUN addgroup -S spring && adduser -S spring -G spring
# USER spring:spring
# ARG JAR_FILE=target/docker-spring-boot.jar
# COPY ${JAR_FILE} docker-spring-boot.jar
# ENTRYPOINT ["java","-jar","docker-spring-boot.jar"]

# FROM alpine-java:base
# MAINTAINER baeldung.com
# COPY files/docker-spring-boot.jar /opt/spring-cloud/lib/
# COPY files/spring-cloud-config-server-entrypoint.sh /opt/spring-cloud/bin/
# ENV SPRING_APPLICATION_JSON= \
#   '{"spring": {"cloud": {"config": {"server": \
#   {"git": {"uri": "/var/lib/spring-cloud/config-repo", \
#   "clone-on-start": true}}}}}}'
# ENTRYPOINT ["/usr/bin/java"]
# CMD ["-jar", "/opt/spring-cloud/lib/spring-cloud-config-server.jar"]
# VOLUME /var/lib/spring-cloud/config-repo
# EXPOSE 8888