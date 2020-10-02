FROM openjdk:8-jdk-buster

# copia del file prodotto da MVN su path /BATCH/bin
ARG JAR_FILE=../target/*.jar
COPY ${JAR_FILE} /BATCH/bin/batch-transaction-filter.jar

# copia di file di configurazione ed entrypoint.sh
COPY config.properties /BATCH/conf/
COPY entrypoint.sh /BATCH/bin/

# creazione di un utente specifico per il batch e fornitura permessi
RUN addgroup --system spring \
	&& adduser --system --ingroup spring spring \
	&& chown spring:spring -R /BATCH/ \
	&& chmod +x /BATCH/bin/entrypoint.sh
USER spring:spring

# avvio dell'applicazione
ENTRYPOINT ["/BATCH/bin/entrypoint.sh"]
