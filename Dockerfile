FROM openjdk
ADD target/Women-1.0.jar/ Women-1.0.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar","/Women-1.0.jar"]

#FROM maven:3.8.2-jdk-11

#WORKDIR /
#COPY . .
#RUN mvn clean install

#CMD mvn spring-boot:run
