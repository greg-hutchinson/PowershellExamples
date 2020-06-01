

$data = Import-Excel -Path 'C:\Users\posehnc\Desktop\AgileFocusAreasClean.xlsx'
$c1 = New-ExcelChartDefinition -YRange "Role" -XRange "Behaviour" -Title "Behaviour by Role"   -NoLegend -Height 225


$grunts = $data | Where-Object {$_.role -eq "Grunt"}

$grunts |
    Export-Excel -Path  'C:\Users\posehnc\Desktop\grunts.xlsx' -AutoFilter -AutoNameRange -AutoSize -ExcelChartDefinition $c1  -Show


<#
$i = 0
foreach ($row in $data) {
    $email = $row.Email
    write-Host "The email address for the $i row is $email"
    $i++
}
#>
