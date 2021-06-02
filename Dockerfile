FROM openjdk:8-jdk-alpine
ADD build/libs/hello-helm.jar hello-helm.jar
# Make port 8080 available to the world outside this container
EXPOSE 8080
# Run the jar file
ENTRYPOINT ["java","-Dspring.profiles.active=VENKAT","-jar","hello-helm.jar"]

