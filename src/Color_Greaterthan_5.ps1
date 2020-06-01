$colors = @("Red","Orange", "Black", "Yellow", "Green", "Violet")
$sum = 0
$sum1 = 0
foreach ($color in $colors) {
    $length = $color.Length
    if ($length -gt 5) {
        $sum = $sum + $length
    } 
    else {
        $sum1 = $sum1 + $length
    }    
}
Write-Host "The total number of characters of colors >5 is $sum" 
Write-Host "The total number of characters of colors <=5 is $sum1" 