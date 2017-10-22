FROM openjdk:alpine
COPY MainStarter.java /source/
COPY mysql-connector-java-5.1.39.jar /source/

WORKDIR /source

RUN javac MainStarter.java
RUN ls
#CMD java -classpath mysql-connector-java-5.1.39.jar MainStarter
CMD ["java", "-classpath", "mysql-connector-java-5.1.39.jar:.","MainStarter"]

#FROM openjdk:alpine
#COPY . /sources/
#WORKDIR /sources/jvm
#CMD javac MainStarter.java && java -classpath .:/sources/jvm/mysql-connector-java-5.1.39.jar  MainStarter

#FROM java:8  
#COPY Task14/MainStarter.java /sources/
#WORKDIR /sources  
#RUN javac MainStarter.java
#CMD ["java", "-classpath", "mysql-connector-java-5.1.39.jar:.","MainStarter"]