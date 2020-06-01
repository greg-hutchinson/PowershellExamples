$colors = @("Red","Orange","Yellow","Green","Blue","Indigo","Violet", "Black", "Beige", "Brown")
$measureObject = $colors | Measure-Object -Character
$count = $measureObject.Characters
Write-Host There are $count letters in this array
