function getSuffix ($i) {

    foreach($i in 1..50) {
        $suffix = ""
        if ($i % 15 -eq 0 ) {
            $suffix = "!"
        }
        elseif ($i % 3 -eq 0) {
            $suffix = "+"
        }
        elseif ($i % 5 -eq 0) {
            $suffix = "*"
        }
        Write-Host "$i$suffix" }
}
$answer = getSuffix 
Write-Host "$answer"
