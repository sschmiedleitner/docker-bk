#sleep $(( ( RANDOM % 10 )  + 1 ))s
secsSinceMidnight=$(( $(date +%s) - $(date -d '00:00:00' +%s) ))
echo $secsSinceMidnight
google-chrome --remote-debugging-port=9222 http://www.rossi-training.at/eroom.html &

while [ $secsSinceMidnight -lt 50000 ]
do
  sleep $(( ( RANDOM % 10 )  + 1 ))m
  secsSinceMidnight=$(( $(date +%s) - $(date -d '00:00:00' +%s) ))
  /home/seluser/linux_386_chrome-remote-reload
  echo $secsSinceMidnight
done
