#!/bin/bash

DIRECTORIES="/diretorio/XablauServer/Xablau"
DIRLOG="/issoai/log/"

for DIR in $(find ${DIRECTORIES} -iname 'mensagenzinha-*'); do

	cd ${DIR}${DIRLOG}
	find ${DIR}${DIRLOG} -name '*.log.*' -exec tar -vrf um-zip-qualquer.log.tar.gz {} \;
  mkdir old | mv um-zip-qualquer.log.tar.gz old/
  find -maxdepth 1 -name '*.log.*' | xargs rm -rf 
done
