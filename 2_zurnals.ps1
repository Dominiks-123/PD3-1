$time=(get-date).AddDays(-7)
$errors=get-winevent -filterhashtable @{
    LogName ='system'
    Level = 2
    StartTime = $time
}
$file="$env:USERPROFILE\Documents\errors.txt"
if ($errors.count -gt 10){
    $h="[KRITISKI] Sistema ir nestabila!"
}
else{
    $h="[OK] Kludu limenis normals."
}
$list=$errors | Select-Object TimeCreated, Message
$h | Out-file $file
$list | out-file $file -append