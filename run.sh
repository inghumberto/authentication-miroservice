#!/bin/sh
set -e
echo " ####   BUILDING AUTH MICROSERVICE"
mvn install
mvn spring-boot:run -Dspring-boot.run.jvmArguments="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8000"