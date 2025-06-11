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

# Example usage

<#
.SYNOPSIS
    Placeholder method that must be implemented in the future.

.DESCRIPTION
    This is an empty placeholder function that serves as a template for future implementation.
    It follows PowerShell best practices and includes proper comment-based help documentation.

.NOTES
    This function is currently not implemented and will throw an error if called.
    It is intended to be implemented by future developers based on specific requirements.

.EXAMPLE
    MustBeImplemented
    This example shows how to call the function, but it will currently throw a NotImplementedException.
#>
function MustBeImplemented {
    [CmdletBinding()]
    param ()
    
    throw [System.NotImplementedException]::new("This method must be implemented.")
}
