cd ~/git/cea-transcription/transcription/
echo
echo 
git branch | grep '*'
echo
echo
ps -eaf | grep play | grep -v 'grep play'
echo
echo
if [ $? == 0 ]; then
play stop && git pull && cp -R public/ ~/transcription/. && play "start 9004"
else
git pull && cp -R public/ ~/transcription/. && play -Duser.timezone=US/Pacific "start 9004"
fi
#~/scripts/Bamboo/ceaadmin_sql_execution.sh
