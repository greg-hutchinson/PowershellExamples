$User = Read-Host -Prompt 'Input the user name'
Write-Host "Good morning $User"
$Count = 0


$Count = $Count + 1
Write-Host "The current value of Count is $Count"

$array = @("This", "is", "test", "of", "many","this")

Write-Host $array[5]


