#!/bin/bash

HOST="${1}"

ssh "${HOST}" "/usr/local/sbin/zabbix_agentd -c /etc/zabbix/zabbix_agentd.conf"