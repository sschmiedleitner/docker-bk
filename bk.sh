start=$(date +%s)
current=$(date +%s)
echo $start

# run for min 5h
while [ $(($current - $start)) -lt 20000 ]
do
  sleep $(( ( RANDOM % 10 )  + 1 ))m
  current=$(date +%s)
  /home/seluser/linux_386_chrome-remote-reload
  echo $(($current - $start))
done
