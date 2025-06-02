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

<#
.SYNOPSIS
    Gets the smallest number from an array of integers.

.DESCRIPTION
    The Get-SmallestNumber function takes an array of integers and returns the smallest value.
    If the array is empty, it displays a warning message and returns $null.

.PARAMETER numbers
    An array of integers to search for the smallest value.

.EXAMPLE
    Get-SmallestNumber @(1, 5, 3, 9, 2)
    Returns: 1

.EXAMPLE
    Get-SmallestNumber @(-10, -5, -1)
    Returns: -10

.EXAMPLE
    Get-SmallestNumber @()
    Returns: $null (with warning message)

.OUTPUTS
    System.Int32 or $null if array is empty
#>
function Get-SmallestNumber {
    param (
        [int[]]$numbers
    )

    if ($numbers.Count -eq 0) {
        Write-Host "Array is empty."
        return $null
    }

    $smallest = $numbers[0]
    foreach ($number in $numbers) {
        if ($number -lt $smallest) {
            $smallest = $number
        }
    }
    
    return $smallest
}

# Example usage
