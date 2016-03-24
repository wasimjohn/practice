cd ~/git/cea-admin/admin/
echo
echo 
git branch | grep '*'
echo
echo
ps -eaf | grep play | grep -v 'grep play'
echo
echo
if [ $? == 0 ]; then
play stop && git pull && cp -R public/ ~/. && play "start 9002"
else
git pull && cp -R public/ ~/. && play -Duser.timezone=US/Pacific "start 9002"
fi
#~/scripts/Bamboo/ceaadmin_sql_execution.sh
