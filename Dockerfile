FROM 'maven:alpine'
WORKDIR /root/app
COPY . .
RUN mvn package -Dskiptests
EXPOSE 8080
ENTRYPOINT ["java","-jar","target/demo-0.0.1-SNAPSHOT.jar"]
