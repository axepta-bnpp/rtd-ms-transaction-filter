#!/bin/bash

# avvio eseguibile, con properties adeguate
java -cp "/BATCH/bin/batch-transaction-filter.jar;/BATCH/bin/mysql-connector-java-8.0.21.jar" -Dloader.main=RtdTransactionFilterApplication org.springframework.boot.loader.PropertiesLauncher --spring.config.location=file:/BATCH/conf/
