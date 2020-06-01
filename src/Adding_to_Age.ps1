$people = New-Object System.Collections.ArrayList
$next = @{firstname="Cory"; lastName="P";age=38}
$people.Add($next) | Out-Null
$next = @{firstname="Greg"; lastName="H";age=60}
$people.Add($next) | Out-Null
$next = @{firstname="Lana"; lastName="C";age=39}
$people.Add($next) | Out-Null
$next = @{firstname="Ally"; lastName="S";age=32}
$people.Add($next) | Out-Null
$next = @{firstname="Reanne"; lastName="E";age=36}
$people.Add($next) | Out-Null

foreach ($person in $people) {
    $newage = $person.age + 1
    $person.age = $newage
    }

$sum = 0
foreach ($person in $people) {
    if ($person.age -lt 60) {
        $sum = $sum + 1
    }
}
write-host "There are $sum people under 60"
$person.firstname="Lana"
write-host -ForegroundColor red "Warning - Lana found"

$avg=0
$sum = 0
foreach ($person in $people) {
   $sum = $person.age +$sum
   $count = $people.count
   $avg = $sum / $count

   }
write-host "The average age is $avg"

$people.age | Measure-Object -Average
