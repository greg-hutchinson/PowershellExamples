
#This defines the function but it doesn't run until it is called 
function sumOfNumbersFrom1ToN ($number) {
    $sum = 0
    for ($i = 1;$i -le $number; $i++) {
        $sum = $sum + $i
    }
    return $sum
}


$inputNumber = Read-Host -Prompt "Please input the number that you would like to find the sum of the numbers of ..."
#Here is where the function (Defined above) is now invoked
$answer = sumOfNumbersFrom1ToN($inputNumber)
Write-Host "The sum of the numbers from 1 to $inputNumber is $answer"