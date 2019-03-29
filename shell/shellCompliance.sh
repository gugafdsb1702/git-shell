#!/bin/bash
 
 DIRECTORIES="/tmp/complianceServer/ComplianceFiscal"
 MENSAGERIA="mensageria-etransparencia
 mensageria-ginfes"
 DIRLOG="csf-nfs/log/"

for DIR in ${MENSAGERIA}; do 
	find ${DIRECTORIES}/${DIR}/${DIRLOG} -iname '*.log.*' | xargs rm -rf
done