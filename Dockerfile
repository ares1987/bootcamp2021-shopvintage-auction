FROM openjdk:11-jre
LABEL maintainer="BCP-BOOTCAMP"
COPY build/libs/auctions-*SNAPSHOT.jar /opt/auctions.jar
ENTRYPOINT ["java", "-Djava.file.encoding=UTF-8","-jar","/opt/auctions.jar"]

#MULTISTAGE
#Compilar, ejecutar test y Crear artefacto JAR

#FROM openjdk:11 AS BUILD_IMAGE
#ENV APP_HOME=/root/dev/app
#RUN mkdir -p $APP_HOME/src/main/java
#WORKDIR $APP_HOME
#COPY build.gradle gradlew gradlew.bat $APP_HOME
#COPY gradle $APP_HOME/gradle
#COPY . .
#RUN ls -lha
#RUN ./gradlew --stacktrace clean build
##
###EJECUTAR LA APLICACION
#FROM openjdk:11-jre
#LABEL maintrainer="BCP-BOOTCAMP"
#WORKDIR /root/
#COPY --from=BUILD_IMAGE /root/dev/app/build/libs/bidders-*SNAPSHOT.jar /opt/bidders.jar
#CMD ["java","-jar","/opt/bidders.jar"]