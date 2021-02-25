#!/bin/bash
#set -x
clear
echo 'This script will list the second 1,000 presentations (id, title). Press any key to continue, or control+c to quit.'
echo
read
echo 'Working ...'
echo
#
source ./mediasite_api_config.sh
curl -sX GET ''"$MEDIASITE_ROOT_URL"'/Api/v1/Presentations?$select=card&$skip=1000&$top=1000' \
     --header 'sfapikey: '"$MEDIASITE_SFAPIKEY"'' \
     --header 'Content-Type: application/json; charset=utf-8' \
     --header 'Authorization: Basic '"$MEDIASITE_API_USER_BASE64"'' \
     | grep Id | awk  '{ print $4 }' FS='"' > presentations_id_list_2000.txt
curl -sX GET ''"$MEDIASITE_ROOT_URL"'/Api/v1/Presentations?$select=card&$skip=1000&$top=1000' \
     --header 'sfapikey: '"$MEDIASITE_SFAPIKEY"'' \
     --header 'Content-Type: application/json; charset=utf-8' \
     --header 'Authorization: Basic '"$MEDIASITE_API_USER_BASE64"'' \
     | grep Id | awk  '{ print $4,$8 }' FS='"' > presentations_id_title_list_2000.txt
echo List Presentations ...
cat presentations_id_title_list_2000.txt
echo
echo Total number of Presentations "$(wc -l presentations_id_title_list_2000.txt |awk '{print $1}')"
echo
