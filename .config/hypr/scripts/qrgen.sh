tempfile="temp-qrcode.png"

qrencode -m 2 -o $tempfile <<< $1
kitten icat $tempfile 
sleep 100
rm $tempfile
