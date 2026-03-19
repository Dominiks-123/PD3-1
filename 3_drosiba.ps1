$a=get-MPcomputerstatus
$c=$a.QuickScanAge
$b=$a.RealtimeprotectionEnabled
$x=0
if ($c -gt 3) {$x=$x+1}
if ($b -eq "False"){$x=$x+1}
if ($x -gt 1){write-host -ForegroundColor Red "sistema apdraudeta"}
else {write-host -ForegroundColor green "sistema ir drosa"}