$data = Import-Excel -Path 'C:\Users\posehnc\Desktop\Ace.xlsx'
$c1 = New-ExcelChartDefinition -ChartType ColumnClustered -YRange "Age" , "Experience"  -XRange "Member" -Title "ACE" -SeriesHeader "Age", "Experience"
$data | 
    Export-Excel -Path  'C:\Users\posehnc\Desktop\AceChart.xlsx' -AutoFilter -AutoNameRange -AutoSize -ExcelChartDefinition $c1  -Show