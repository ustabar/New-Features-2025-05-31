# need a function to get largest number in array
function Get-LargestNumber {
    param (
        [int[]]$numbers
    )

    if ($numbers.Count -eq 0) {
        Write-Host "Array is empty."
        return $null
    }

    $largest = $numbers[0]
    foreach ($number in $numbers) {
        if ($number -gt $largest) {
            $largest = $number
        }
    }
    
    return $largest
}
