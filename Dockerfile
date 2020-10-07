FROM openjdk:8-jdk-buster

# copia del file prodotto da MVN su path /BATCH/bin
COPY target/*.jar /BATCH/bin/batch-transaction-filter.jar

# copia di entrypoint.sh e libreria mysql
COPY entrypoint.sh /BATCH/bin/
COPY mysql-connector-java-8.0.21.jar /BATCH/bin/

# creazione di un utente specifico per il batch e fornitura permessi
#RUN addgroup --system spring \
#	&& adduser --system --ingroup spring spring \
#	&& chown spring:spring -R /BATCH/ \
#	&& chmod +x /BATCH/bin/entrypoint.sh

# avvio dell'applicazione
ENTRYPOINT ["/BATCH/bin/entrypoint.sh"]
