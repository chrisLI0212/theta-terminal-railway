FROM eclipse-temurin:17-jdk-jammy
RUN apt-get update && apt-get install -y wget curl
WORKDIR /app
RUN wget -q https://download-latest.thetadata.us -O ThetaTerminal.jar

# Railway provides PORT env variable
ENV PORT=25510
EXPOSE $PORT

ENV JAVA_OPTS="-Djava.net.preferIPv4Stack=true -Dcom.sun.jndi.ldap.connect.pool=false -Dsun.net.inetaddr.ttl=0"

# Use Railway's PORT
CMD java $JAVA_OPTS -jar ThetaTerminal.jar chrisicey0212@gmail.com Aa02120119
