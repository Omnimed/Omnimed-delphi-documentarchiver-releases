param(
    [string]$VersionNumber
)

if (-not $VersionNumber) {
    Write-Host "Please provide a version number as an input parameter."
    exit
}

$sourceFolderPath = "C:\Omnimed-delphi-documentarchiver"
$destinationFolderPath = "C:\Omnimed-delphi-documentarchiver-releases"

# Create the destination folder if it doesn't exist
if (-not (Test-Path -Path "$destinationFolderPath\$VersionNumber" -PathType Container)) {
    New-Item -Path "$destinationFolderPath\$VersionNumber" -ItemType Directory -Force
}

# Copy the executable files
Copy-Item -Path "$sourceFolderPath\AutonumO\AutonumO.exe" -Destination "$destinationFolderPath\$VersionNumber"
Copy-Item -Path "$sourceFolderPath\ClasseurO\ClasseurO.exe" -Destination "$destinationFolderPath\$VersionNumber"
Copy-Item -Path "$sourceFolderPath\ClasseurO\DTKBarReader.dll" -Destination "$destinationFolderPath\$VersionNumber"
Copy-Item -Path "$sourceFolderPath\ClasseurO\eng.traineddata" -Destination "$destinationFolderPath\$VersionNumber"
Copy-Item -Path "$sourceFolderPath\ClasseurO\fra.traineddata" -Destination "$destinationFolderPath\$VersionNumber"
Copy-Item -Path "$sourceFolderPath\ClasseurO\ievision.dll" -Destination "$destinationFolderPath\$VersionNumber"
Copy-Item -Path "$sourceFolderPath\Installateur\Omnimed_classeur_inst.exe" -Destination "$destinationFolderPath\$VersionNumber"
Copy-Item -Path "$sourceFolderPath\NumO\NumO.exe" -Destination "$destinationFolderPath\$VersionNumber"
Copy-Item -Path "$sourceFolderPath\TraiteO\TraiteO.exe" -Destination "$destinationFolderPath\$VersionNumber"

# Generate last-modified.dat file
$OutputPath = Join-Path -Path "$destinationFolderPath\$VersionNumber" -ChildPath 'last-modified.dat'
Get-ChildItem -File -Path "$destinationFolderPath\$VersionNumber" -Recurse | ForEach-Object { $_.Name + '=' + $_.LastWriteTime.toString('yyyy.MM.dd HH:mm:ss') } | Out-File -FilePath $OutputPath -Encoding Default