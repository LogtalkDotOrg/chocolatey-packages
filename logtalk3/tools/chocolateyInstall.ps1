$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'logtalk'
  fileType       = 'exe'

  checksum       = 'cdc7d3abcbd8cea3308a55aa478010604b609830d50b4f1ae2863da7202b141e'
  checksumType   = 'sha256'
  url            = 'https://logtalk.org/files/logtalk-3.100.0.exe'

  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

$pp = Get-PackageParameters

if ($pp.DIR) {
  $packageArgs['silentArgs'] = "$($packageArgs['silentArgs']) /DIR=`"$($pp.DIR)`""
}

Install-ChocolateyPackage @packageArgs
