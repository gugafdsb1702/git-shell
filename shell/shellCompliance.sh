#!/bin/bash

DIRECTORIES="/tmp/complianceServer/ComplianceFiscal"
DIRLOG="/csf-nfs/log/"

for DIR in $(find ${DIRECTORIES} -iname 'mensageria-*'); do

	cd ${DIR}${DIRLOG}
	find ${DIR}${DIRLOG} -name '*.log.*' -exec tar -vrf compliance-timer-nfs-pref.log.tar.gz {} \;
  mkdir old | mv compliance-timer-nfs-pref.log.tar.gz old/
  find -maxdepth 1 -name '*.log.*' | xargs rm -rf 
done