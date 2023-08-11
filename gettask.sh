## chmod +x gettask.sh
## ./gettask.sh 'Ф И О' <общее кол-во вариантов>

N=$(cksum <<< $1 | awk '{print $1}')
echo $((N % $2 + 1))
