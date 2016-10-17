#!/bin/sh
# added shellscript to wheather site is working or not
# site url should be entered by the user

echo "enter the url"
read url
curl -o /dev/null --silent --head --write-out '%{http_code}\n' $url > status.txt
# http status is obtained from the above code
count=`less status.txt|grep -c "200"`
if [ $count -eq 1 ]; then
  echo "site is working"
else
  echo "site is not working"  
fi
