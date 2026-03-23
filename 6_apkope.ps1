$disk=get-PSdrive C
$time= get-date
$log="$env:USERPROFILE\Documents\Apkope.log"
$p=($disk.free/($disk.used+$disk.free))*100
if ($p -lt 25){
    $b=$disk.free
    Remove-item $env:TEMP\ -recurse -force -ErrorAction silentlycontinue
    clear-recycleBin -force -erroraction silentlycontinue
    $disk=get-PSdrive C
    $free=($disk.Free-$b)/1GB
    $text="[$time] Atbrivoti {0:N1} GB" -f $free
}
else{
    $text="[$time] Vieta pietiekama"
}
$text | Out-file $log