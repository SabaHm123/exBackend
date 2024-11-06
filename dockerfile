FROM adoptopenjdk:17-jre-hotspot
VOLUME /tmp
ADD target/*.jar app.jar
CMD ["java", "app.jar", "--spring.profiles.active=prod"]
EXPOSE 8091
