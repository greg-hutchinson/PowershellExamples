$data = @"
Date,Lana,Reanne,Ally,Cory, Greg
12/05/2020, 2, 4, 5, 6, 7
6/09/2020, 6, 44, 51, 60, 71
8/10/2020, 5, 30, 24, 12, 10
19/08/2020, 11, 19, 67, 62, 81
26/01/2020, 74, 44, 13, 14, 19
"@

$c1 = New-ExcelChartDefinition -ChartType line -YRange "Lana", "Reanne", "Ally", "Cory", "Greg" -XRange "Date" -Title "ACE" -SeriesHeader "Lana", "Reanne", "Ally", "Cory", "Greg"

$greg= $data | ConvertFrom-Csv
$greg | Export-Excel -Path  '$C:\Users\$Env:USERNAME\Desktop\AceCreate.xlsx' -AutoFilter -AutoNameRange -AutoSize -ExcelChartDefinition $c1  -Show
