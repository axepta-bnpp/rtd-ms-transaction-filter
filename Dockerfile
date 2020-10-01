FROM openjdk:8-jdk-buster

# copia del file prodotto da MVN su path /BATCH/bin
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /BATCH/bin/batch-transaction-filter.jar

# creazione di un utente specifico per il batch
RUN addgroup -S spring \
	&& adduser -S spring -G spring \
	&& chown spring:spring /BATCH/bin/batch-transaction-filter.jar
USER spring:spring

# avvio dell'applicazione
ENTRYPOINT ["java","-jar","/BATCH/bin/batch-transaction-filter.jar"]
