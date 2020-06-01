$colors = @("Red","Orange", "Black", "Yellow", "Green", "Violet")
$sum = 0
For ($i=0; $i -le $colors.Length - 1; $i++) {
    $color = $colors[$i]
    $length = $color.Length
    $sum = $sum + $length
    Write-host "Looking at the color $color and it has a length of $length"
    Write-host "I wonder what we could do with that information??? :-)"
}
write-host "The total number of characters in all the colors is $sum"

