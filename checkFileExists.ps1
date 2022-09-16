$fileName = "C:\Sample\File14.txt"
$doesFileExist = test-path -Path $fileName -PathType leaf
$counter = 0

if ($doesFileExist -eq $false)
{Write-Host "$fileName doesn't exist will keep checking 10 times"}
else
{Write-Host "$fileName was found"}


while($doesFileExist -eq $false -and $counter -lt 11)
{
    
    Start-Sleep -Seconds 2
    if($doesFileExist = test-path -Path $fileName -PathType leaf)
    {
    Write-Host "Found the file! $fileName"
    exit
     }
    Write-Output "Try $counter"
    $counter++
    if ($counter -eq 11)
    {Write-Host "Tried 10 times and file still not found"}

}
