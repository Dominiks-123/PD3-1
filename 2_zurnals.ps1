$time=(get-date).adddays(-7)
Write-Host $time
$errosr=Get-WinEvent -FilterHashtable{
    $name
}
Out-file c:\Users\A250801DM\Downloads\Error.txt