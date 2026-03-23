$time= get-date -format "yyyy-MM-dd"
$file="$env:USERPROFILE\Documents\errors.txt"
$zip="$env:USERPROFILE\Documents\Atskaite_$time.zip"
Compress-Archive -path $file -DestinationPath $zip
$kb=(get-item $zip | measure-object)/1KB
write-output ("zip file lielums ir {0:N1} KB" -f $kb)