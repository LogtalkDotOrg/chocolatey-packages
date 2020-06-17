$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'logtalk'
  fileType       = 'exe'

  checksum       = 'fbfc1bf205692330f5b4d121af065a39fb0ff2e49a742dded9bea54e8da2b124'
  checksumType   = 'sha256'
  url            = 'https://logtalk.org/files/logtalk-3.39.0.exe'

  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

$pp = Get-PackageParameters

if ($pp.DIR) {
  $packageArgs['silentArgs'] = "$($packageArgs['silentArgs']) /DIR=`"$($pp.DIR)`""
}

Install-ChocolateyPackage @packageArgs
