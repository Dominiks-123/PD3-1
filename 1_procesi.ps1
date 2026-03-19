$p=get-process | where-object{$_.processname -ne "svchost"}
$t=$p | sort-object -Property workingset -descending | select-object -first 5
$g=($t | Measure-object -property workingset -Sum).sum/1MB
write-output ("Top 5 procesi total RAM: {0:N1} MB" -f $g)