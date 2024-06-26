FROM amd64/amazoncorretto:17

WORKDIR /app

COPY ./build/libs/notify-backend-0.0.1-SNAPSHOT.jar /app/notify-backend.jar

CMD ["java", "-Duser.timezone=Asia/Seoul", "-jar", "-Dspring.profiles.active=dev", "/app/notify-backend.jar"]
