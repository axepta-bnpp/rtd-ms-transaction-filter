#!/bin/bash

# definisce la funzione che  valorizza i placeholder presenti sui file 
# di configurazione con i valori definiti nelle variabili di ambiente
set_property_in_file() {
    FILE="$1"
    PATTERN="$2"
    VALUE="$3"
    
    sed "s/\#$PATTERN\#/$VALUE/g" $FILE -i
}
	     
# esegue la funzione set_properties_in_file valorizzando il file di configurazione
set_property_in_file /BATCH/conf/config.properties "EXAMPLE" $EXAMPLE

# avvio eseguibile, con properties adeguate
java -jar /BATCH/bin/batch-transaction-filter.jar --spring.config.location=/BATCH/conf/config.properties
