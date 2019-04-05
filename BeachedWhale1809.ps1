Requires -RunAsAdministrator
sleep 5
Add-Type -Name win -MemberDefinition '[DllImport("user32.dll")] public static extern bool ShowWindow(int handle, int state);' -Namespace native
[native.win]::ShowWindow(([System.Diagnostics.Process]::GetCurrentProcess() | Get-Process).MainWindowHandle,0)

$version = "BeachedWhale 1809"

Function Remove-WinApps{
  #$wshell.Popup("Bloatware removal has started. Don't close BeachedWhale until it's finished.",0,"$version")
  $removeWinAppsBtn.Text = "Removing Windows Apps..."
  Get-AppxPackage -Name *WindowsCamera* | Remove-AppxPackage
  Get-AppxPackage -Name *WindowsMaps* | Remove-AppxPackage
  Get-AppxPackage -Name *WindowsSoundRecorder* | Remove-AppxPackage
  Get-AppxPackage -Name *WindowsAlarms* | Remove-AppxPackage
  Get-AppxPackage -Name *WindowsFeedbackHub* | Remove-AppxPackage
  Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage
  Get-AppxPackage -Name *WindowsPhone* | Remove-AppxPackage
  Get-AppxPackage -Name *BingNews* | Remove-AppxPackage
  Get-AppxPackage -Name *BingFinance* | Remove-AppxPackage
  Get-AppxPackage -Name *BingSports* | Remove-AppxPackage
  Get-AppxPackage -Name *BingWeather* | Remove-AppxPackage
  Get-AppxPackage -Name *ZuneVideo* | Remove-AppxPackage
  Get-AppxPackage -Name *ZuneMusic* | Remove-AppxPackage
  Get-AppxPackage -Name *SkypeApp* | Remove-AppxPackage
  Get-AppxPackage -Name *MicrosoftOfficeHub* | Remove-AppxPackage
  Get-AppxPackage -Name *Messaging* | Remove-AppxPackage
  Get-AppxPackage -Name *Advertising.Xaml* | Remove-AppxPackage
  Get-AppxPackage -Name *Office.OneNote* | Remove-AppxPackage
  Get-AppxPackage -Name *OneConnect* | Remove-AppxPackage
  Get-AppxPackage -Name *People* | Remove-AppxPackage
  Get-AppxPackage -Name *Getstarted* | Remove-AppxPackage
  Get-AppxPackage -Name *Phone* | Remove-AppxPackage
  Get-AppxPackage -Name *Sway* | Remove-AppxPackage
  Get-AppxPackage -Name *Print3D* | Remove-AppxPackage
  Get-AppxPackage -Name *Microsoft3DViewer* | Remove-AppxPackage
  Get-AppxPackage -Name *3DBuilder* | Remove-AppxPackage
  Get-AppxPackage -Name *NetworkSpeedTest* | Remove-AppxPackage
  Get-AppxPackage -Name *RemoteDesktop* | Remove-AppxPackage
  Get-AppxPackage -Name *Wallet* | Remove-AppxPackage
  $removeWinAppsBtn.Text = "Windows Apps Removed."
}

Function Remove-Games{
	$removeGamesBtn.Text = "Removing Games..."
	Get-AppxPackage -Name *BubbleWitch* | Remove-AppxPackage
	Get-AppxPackage -Name *HiddenCity* | Remove-AppxPackage
	Get-AppxPackage -Name *Disney* | Remove-AppxPackage
	Get-AppxPackage -Name *MarchofEmpires* | Remove-AppxPackage
	Get-AppxPackage -Name *CandyCrush* | Remove-AppxPackage
	Get-AppxPackage -Name *MicrosoftSolitaireCollection* | Remove-AppxPackage
	Get-AppxPackage -Name *RoyalRev* | Remove-AppxPackage
	Get-AppxPackage -Name *COOKINGFEVER* | Remove-AppxPackage
	$removeGamesBtn.Text = "Games Removed."
}

Function Remove-Other{
	$removeOtherBtn.Text = "Removing Other Bloatware..."
	Get-AppxPackage -Name *PowerBI* | Remove-AppxPackage
	Get-AppxPackage -Name *Eclipse* | Remove-AppxPackage
	Get-AppxPackage -Name *AdobePhotoshopExpress* | Remove-AppxPackage
	Get-AppxPackage -Name *Sling* | Remove-AppxPackage
	Get-AppxPackage -Name *Duolingo* | Remove-AppxPackage
	Get-AppxPackage -Name *PhototasticCollage* | Remove-AppxPackage
	Get-AppxPackage -Name *Keeper* | Remove-AppxPackage
	Get-AppxPackage -Name *SketchBook* | Remove-AppxPackage
	Get-AppxPackage -Name *DolbyAccess* | Remove-AppxPackage
	Get-AppxPackage -Name *Fitbit* | Remove-AppxPackage
	$removeOtherBtn.Text = "Other Bloatware Removed."
}


Function Remove-Music{
	$removeMusicBtn.Text = "Removing Music Apps..."
	Get-AppxPackage -Name *Spotify* | Remove-AppxPackage
	Get-AppxPackage -Name *Pandora* | Remove-AppxPackage
	$removeMusicBtn.Text = "Music Apps Removed."
}

Function Remove-Social{
	$removeSocialBtn.Text = "Removing Social Apps..."
	Get-AppxPackage -Name *twitter* | Remove-AppxPackage
	Get-AppxPackage -Name *Facebook* | Remove-AppxPackage
	$removeSocialBtn.Text = "Social Apps Removed."
}

Function Remove-XboxApp
{
  $removeXboxBtn.Text = "Removing Xbox App..."
  Get-AppxPackage -Name *XboxApp* | Remove-AppxPackage
  $removeXboxBtn.Text = "Xbox App Removed."
}

Function Remove-WindowsStore
{
  $removeWinStoreBtn.Text = "Removing Windows Store..."
  Get-AppxPackage *windowsstore* | Remove-AppxPackage
  $removeWinStoreBtn.Text = "Windows Store Removed."
}

Function Remove-OneDrive
{
  $uninstallOneDriveBtn.Text = "Removing OneDrive..."
  C:\Windows\SysWOW64\OneDriveSetup.exe /uninstall
  sleep 5
  $uninstallOneDriveBtn.Text = "OneDrive uninstalling in background."
}

##############################################
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()


$BeachedWhaleForm                = New-Object system.Windows.Forms.Form
$BeachedWhaleForm.ClientSize     = '821,438'
$BeachedWhaleForm.text           = "$version"
$BeachedWhaleForm.TopMost        = $false

$topLabel                        = New-Object system.Windows.Forms.Label
$topLabel.text                   = "BeachedWhale has been updated to version 1803. It can remove bloatware from Windows 10 v1803."
$topLabel.AutoSize               = $true
$topLabel.width                  = 25
$topLabel.height                 = 10
$topLabel.location               = New-Object System.Drawing.Point(51,29)
$topLabel.Font                   = 'Microsoft Sans Serif,12'

$removeWinAppsBtn                = New-Object system.Windows.Forms.Button
$removeWinAppsBtn.text           = "Remove Windows Apps"
$removeWinAppsBtn.width          = 190
$removeWinAppsBtn.height         = 47
$removeWinAppsBtn.location       = New-Object System.Drawing.Point(172,96)
$removeWinAppsBtn.Font           = 'Microsoft Sans Serif,10'
$removeWinAppsBtn.Add_Click({Remove-WinApps})

$removeGamesBtn                  = New-Object system.Windows.Forms.Button
$removeGamesBtn.text             = "Remove Games"
$removeGamesBtn.width            = 190
$removeGamesBtn.height           = 47
$removeGamesBtn.location         = New-Object System.Drawing.Point(172,164)
$removeGamesBtn.Font             = 'Microsoft Sans Serif,10'
$removeGamesBtn.Add_Click({Remove-Games})

$removeSocialBtn                 = New-Object system.Windows.Forms.Button
$removeSocialBtn.text            = "Remove Social Apps"
$removeSocialBtn.width           = 190
$removeSocialBtn.height          = 47
$removeSocialBtn.location        = New-Object System.Drawing.Point(172,233)
$removeSocialBtn.Font            = 'Microsoft Sans Serif,10'
$removeSocialBtn.Add_Click({Remove-Social})

$removeMusicBtn                  = New-Object system.Windows.Forms.Button
$removeMusicBtn.text             = "Remove Music Apps"
$removeMusicBtn.width            = 190
$removeMusicBtn.height           = 47
$removeMusicBtn.location         = New-Object System.Drawing.Point(172,300)
$removeMusicBtn.Font             = 'Microsoft Sans Serif,10'
$removeMusicBtn.Add_Click({Remove-Music})

$removeXboxBtn                   = New-Object system.Windows.Forms.Button
$removeXboxBtn.text              = "Remove Xbox App"
$removeXboxBtn.width             = 190
$removeXboxBtn.height            = 47
$removeXboxBtn.location          = New-Object System.Drawing.Point(490,96)
$removeXboxBtn.Font              = 'Microsoft Sans Serif,10'
$removeXboxBtn.Add_Click({Remove-XboxApp})

$removeWinStoreBtn               = New-Object system.Windows.Forms.Button
$removeWinStoreBtn.text          = "Remove Windows Store"
$removeWinStoreBtn.width         = 190
$removeWinStoreBtn.height        = 47
$removeWinStoreBtn.location      = New-Object System.Drawing.Point(490,164)
$removeWinStoreBtn.Font          = 'Microsoft Sans Serif,10'
$removeWinStoreBtn.Add_Click({Remove-WindowsStore})

$uninstallOneDriveBtn            = New-Object system.Windows.Forms.Button
$uninstallOneDriveBtn.text       = "Uninstall OneDrive"
$uninstallOneDriveBtn.width      = 190
$uninstallOneDriveBtn.height     = 47
$uninstallOneDriveBtn.location   = New-Object System.Drawing.Point(490,233)
$uninstallOneDriveBtn.Font       = 'Microsoft Sans Serif,10'
$uninstallOneDriveBtn.Add_Click({Remove-OneDrive})

$removeOtherBtn                  = New-Object system.Windows.Forms.Button
$removeOtherBtn.text             = "Remove Other Bloatware"
$removeOtherBtn.width            = 190
$removeOtherBtn.height           = 47
$removeOtherBtn.location         = New-Object System.Drawing.Point(172,366)
$removeOtherBtn.Font             = 'Microsoft Sans Serif,10'
$removeOtherBtn.Add_Click({Remove-Other})

$BeachedWhaleForm.controls.AddRange(@($topLabel,$removeWinAppsBtn,$removeGamesBtn,$removeSocialBtn,$removeMusicBtn,$removeXboxBtn,$removeWinStoreBtn,$uninstallOneDriveBtn,$removeOtherBtn))


[void]$BeachedWhaleForm.ShowDialog()
$BeachedWhaleForm.Dispose()