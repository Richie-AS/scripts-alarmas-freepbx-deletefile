#!/bin/bash
#############################################################################################
### Jose Richard Alvarez Saturne                                                           ##
### borrar archivos viejos mayor a 40 dias de grabaciones de freepbx                       ##
### +595 981 870 046                                                                       ##
### richi24@gmail.com			                                                                 ##
#############################################################################################
oldtime=`date +%Y --date='-1 year'`;
time=`date +%Y`;
for i in `find /var/spool/asterisk/monitor/$oldtime/* -maxdepth 1 -type d -mtime +40 -print`
do
  rm -rf $i;
done
for i in `find /var/spool/asterisk/monitor/$time/* -maxdepth 1 -type d -mtime +40 -print`
do
  rm -rf $i;
done
