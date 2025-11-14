FROM eclipse-temurin:17-jdk-jammy

RUN apt-get update && apt-get install -y wget curl

WORKDIR /app

RUN wget -q https://download-latest.thetadata.us -O ThetaTerminal.jar

EXPOSE 25510

# Start Java with specific options to handle Railway networking
CMD ["java", "-Djava.net.preferIPv4Stack=true", "-jar", "ThetaTerminal.jar", "chrisicey0212@gmail.com", "Aa02120119"]
