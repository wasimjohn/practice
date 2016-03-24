ps -ef | awk '/appservices.jar/ && !/awk/ {print $2}' | xargs -r kill -9
sleep 3
java -Xms256M -Xmx1024M -XX:PermSize=64M -XX:MaxPermSize=256M -jar /home/ceaadmin-qa/deploy/appservices/appservices.jar >> /var/log/appservices/appservices.log &
