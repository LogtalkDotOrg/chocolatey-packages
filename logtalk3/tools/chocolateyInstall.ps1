$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'logtalk'
  fileType       = 'exe'

  checksum       = 'f4e7f3bf4c62eae4aa47be883822fefb1fb4b65679c10d5299d02ddaa0ec2fae'
  checksumType   = 'sha256'
  url            = 'https://logtalk.org/files/logtalk-3.69.0.exe'

  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

$pp = Get-PackageParameters

if ($pp.DIR) {
  $packageArgs['silentArgs'] = "$($packageArgs['silentArgs']) /DIR=`"$($pp.DIR)`""
}

Install-ChocolateyPackage @packageArgs
