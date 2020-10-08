#!/bin/bash

# avvio eseguibile, con properties adeguate
java -cp "/BATCH/bin/batch-transaction-filter.jar:/BATCH/bin/mysql-connector-java-8.0.21.jar" -Dloader.main=it.gov.pagopa.rtd.transaction_filter.RtdTransactionFilterApplication org.springframework.boot.loader.PropertiesLauncher -jar /BATCH/bin/batch-transaction-filter.jar  --spring.config.location=file:/BATCH/conf/
