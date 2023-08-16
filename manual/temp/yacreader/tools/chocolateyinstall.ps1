$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'YACReader*winx86.exe'
$file64Location = Join-Path $toolsDir 'YACReader*winx64.exe'
$url        = 'https://github.com/YACReader/yacreader/releases/download/9.13.1/YACReader-v9.13.1.2307166-winx86-7z.exe'
$url64      = 'https://github.com/YACReader/yacreader/releases/download/9.13.1/YACReader-v9.13.1.2307166-winx64-7z-qt6.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  file			= $fileLocation
  file64		= $file64Location
  softwareName  = 'YACReader*'
  checksum      = '2d951763c7dc9447fd64b02c565a2445fd38eab63913b7615557a2a8312b2c8e'
  checksumType  = 'sha256'
  checksum64    = '80aef50be7cb00d2f2787aa5d1f2fb47242a06f406e5d6d6df34908c9c83a15a'
  checksumType64= 'sha256'
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
