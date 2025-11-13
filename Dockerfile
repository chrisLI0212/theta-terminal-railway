FROM eclipse-temurin:17-jdk-jammy

# Install dependencies
RUN apt-get update && apt-get install -y wget curl

# Set working directory
WORKDIR /app

# Download Theta Terminal
RUN wget -q https://download-latest.thetadata.us -O ThetaTerminal.jar

# Expose port
EXPOSE 25510

# Start Theta Terminal
CMD ["java", "-jar", "ThetaTerminal.jar", "chrisicey0212@gmail.com", "Aa02120119"]
