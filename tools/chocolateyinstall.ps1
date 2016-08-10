
$ErrorActionPreference = 'Stop';


$packageName= 'ssis-multiple-hash'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://ssismhash.codeplex.com/downloads/get/1593465'
$url64      = 'https://ssismhash.codeplex.com/downloads/get/1593464'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'msi'
  url           = $url
  url64bit      = $url64

  silentArgs    = "/qn /norestart /l*v `"$env:TEMP\chocolatey\$($packageName)\$($packageName).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'ssis-multiple-hash*'
  checksum      = 'bf63571f63da8f44e6fed4065167adf0'
  checksumType  = 'md5'
  checksum64    = 'e4a1bff0d6576d91f799bbf7cd9af588'
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs

















