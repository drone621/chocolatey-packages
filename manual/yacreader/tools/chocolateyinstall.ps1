$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'YACReader*winx86.exe'
$file64Location = Join-Path $toolsDir 'YACReader*winx64.exe'
$url        = 'https://github.com/YACReader/yacreader/releases/download/9.14.1/YACReader-v9.14.1.2402053-winx86-7z.exe'
$url64      = 'https://github.com/YACReader/yacreader/releases/download/9.14.1/YACReader-v9.14.1.2402053-winx64-7z-qt6.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  file			= $fileLocation
  file64		= $file64Location
  softwareName  = 'YACReader*'
  checksum      = 'a0998e1c7d871e4f88e7b81c222673cbd687c09d897c67a0f75f273a2a860433'
  checksumType  = 'sha256'
  checksum64    = 'a6efe0a7b9935b309a08fc7ec9129d5da8004d990f5c6d4ce9628ffce80a6254'
  checksumType64= 'sha256'
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
