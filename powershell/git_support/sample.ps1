. .\GitRapper.ps1

$mod = New-Object GitRapper
$mod.ExecAdd(".\test.txt")
$mod.ExecCommit(@("コメントテスト1", "コメントテスト2"))