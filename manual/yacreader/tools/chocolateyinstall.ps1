$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'YACReader*winx86.exe'
$file64Location = Join-Path $toolsDir 'YACReader*winx64.exe'
$url        = 'https://github.com/YACReader/yacreader/releases/download/9.14.2/YACReader-v9.14.2.2402143-winx86-7z.exe'
$url64      = 'https://github.com/YACReader/yacreader/releases/download/9.14.2/YACReader-v9.14.2.2402143-winx64-7z-qt6.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  file			= $fileLocation
  file64		= $file64Location
  softwareName  = 'YACReader*'
  checksum      = '0ea5e956ac7c23a31884463c1121ae5d39aaa6b844ead74f9624f5098f0fd918'
  checksumType  = 'sha256'
  checksum64    = '094166a5b4a164c1a7e1ee594870ef9a4e22fc8774024d32a6772b0ca927fe72'
  checksumType64= 'sha256'
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
