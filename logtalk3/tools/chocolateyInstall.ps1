$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'logtalk'
  fileType       = 'exe'

  checksum       = '7e2473ad4b0cfe9132a158a632838c9288cb2c79f47738a33ec2be381cb9814f'
  checksumType   = 'sha256'
  url            = 'https://logtalk.org/files/logtalk-3.95.0.exe'

  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

$pp = Get-PackageParameters

if ($pp.DIR) {
  $packageArgs['silentArgs'] = "$($packageArgs['silentArgs']) /DIR=`"$($pp.DIR)`""
}

Install-ChocolateyPackage @packageArgs
