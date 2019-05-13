#!/bin/bash

JAR_NAME="complianceEnterpriseServer-spring-iep
complianceEnterpriseServer-spring-vnfe
complianceEnterpriseServer-spring-ecd
complianceEnterpriseServer-spring-cte
complianceEnterpriseServer-spring-nfs
complianceEnterpriseServer-spring
complianceEnterpriseServer-spring-nfs-manaus
complianceEnterpriseServer-spring-nfs-assessorpublico"

for JAR_PATH in ${JAR_NAME}; do
 
    if [[ ${JAR_PATH} == *"-spring-"* ]]; then
        echo ${JAR_PATH} | cut -d '-' -f 3-
    else
        echo ${JAR_PATH} | cut -d '-' -f 2-
    fi
done