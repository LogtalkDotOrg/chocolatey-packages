$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'logtalk'
  fileType       = 'exe'

  checksum       = '531125cfa8cb549e5bf93f4763f0e27f07cf02219461d019a4af7b4e5fd98617'
  checksumType   = 'sha256'
  url            = 'https://logtalk.org/files/logtalk-3.62.0.exe'

  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

$pp = Get-PackageParameters

if ($pp.DIR) {
  $packageArgs['silentArgs'] = "$($packageArgs['silentArgs']) /DIR=`"$($pp.DIR)`""
}

Install-ChocolateyPackage @packageArgs
