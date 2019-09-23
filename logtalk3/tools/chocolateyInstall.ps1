$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'logtalk'
  fileType       = 'exe'

  checksum       = 'b8dc9c3f331c211ed2372d01ab4efd791110b637242235f9c7fe091db987e6cc'
  checksumType   = 'sha256'
  url            = 'https://logtalk.org/files/logtalk-3.30.0.exe'

  silentArgs     = '/SILENT'
  validExitCodes = @(0)
}

$pp = Get-PackageParameters

if ($pp.DIR) {
    $packageArgs['silentArgs'] = "$($packageArgs['silentArgs']) /DIR=`"$($pp.DIR)`""
  }
}

Install-ChocolateyPackage @packageArgs
