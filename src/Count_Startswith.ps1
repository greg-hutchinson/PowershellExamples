$colors = @("Red","Orange","Yellow","Green","Blue","Indigo","Violet", "Black", "Beige")

$Count = 0
For ($i=0; $i -lt $colors.Length; $i++) {
    $color = $colors[$i]    

    if ($color.StartsWith("B")) {       
       $Count = $Count + 1 
       Write-Host "Count currently is $Count and looking at color $color"
    }
    Write-Host "$color"
}
Write-Host "There were $Count colors that started with B"


