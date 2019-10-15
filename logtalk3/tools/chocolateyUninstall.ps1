$packageName = 'logtalk'
$installerType = 'EXE'
$silentArgs = '/SILENT'
$validExitCodes = @(0,1)

try {
	# HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Logtalk_is1
	$file = (Get-ItemProperty -Path "hklm:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Logtalk_is1").UninstallString
	Uninstall-ChocolateyPackage -PackageName $packageName -FileType $installerType -SilentArgs $silentArgs -validExitCodes $validExitCodes -File $file
} catch {
	throw
}
