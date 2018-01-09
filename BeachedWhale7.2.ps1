##############################################################################################################################################################
#  Hides the Powershell window
##############################################################################################################################################################
Add-Type -Name win -MemberDefinition '[DllImport("user32.dll")] public static extern bool ShowWindow(int handle, int state);' -Namespace native
[native.win]::ShowWindow(([System.Diagnostics.Process]::GetCurrentProcess() | Get-Process).MainWindowHandle,0)



##############################################################################################################################################################
#  Function Library
##############################################################################################################################################################

Function Remove-Bloatware{
  #$wshell.Popup("Bloatware removal has started. Don't close BeachedWhale until it's finished.",0,"$version")
  $RemoveBloatware.Text = "Removing Bloatware..."
  Get-AppxPackage -Name *WindowsCamera* | Remove-AppxPackage
  Get-AppxPackage -Name *ZuneMusic* | Remove-AppxPackage
  Get-AppxPackage -Name *WindowsMaps* | Remove-AppxPackage
  Get-AppxPackage -Name *MicrosoftSolitaireCollection* | Remove-AppxPackage
  Get-AppxPackage -Name *BingFinance* | Remove-AppxPackage
  Get-AppxPackage -Name *ZuneVideo* | Remove-AppxPackage
  Get-AppxPackage -Name *BingNews* | Remove-AppxPackage
  Get-AppxPackage -Name *WindowsPhone* | Remove-AppxPackage
  Get-AppxPackage -Name *BingSports* | Remove-AppxPackage
  Get-AppxPackage -Name *BingWeather* | Remove-AppxPackage
  Get-AppxPackage -Name *WindowsSoundRecorder* | Remove-AppxPackage
  Get-AppxPackage -Name *3DBuilder* | Remove-AppxPackage
  Get-AppxPackage -Name *SkypeApp* | Remove-AppxPackage
  Get-AppxPackage -Name *MicrosoftOfficeHub* | Remove-AppxPackage
  Get-AppxPackage -Name *Messaging* | Remove-AppxPackage
  Get-AppxPackage -Name *Advertising.Xaml* | Remove-AppxPackage
  Get-AppxPackage -Name *MicrosoftSolitaireCollection* | Remove-AppxPackage
  Get-AppxPackage -Name *Office.OneNote* | Remove-AppxPackage
  Get-AppxPackage -Name *OneConnect* | Remove-AppxPackage
  Get-AppxPackage -Name *People* | Remove-AppxPackage
  Get-AppxPackage -Name *WindowsAlarms* | Remove-AppxPackage
  Get-AppxPackage -Name *Getstarted* | Remove-AppxPackage
  Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage
  Get-AppxPackage -Name *Phone* | Remove-AppxPackage
  Get-AppxPackage -Name *Sway* | Remove-AppxPackage
  Get-AppxPackage -Name *WindowsFeedbackHub* | Remove-AppxPackage
  Get-AppxPackage -Name *CandyCrush* | Remove-AppxPackage
  Get-AppxPackage -Name *RoyalRev* | Remove-AppxPackage
  Get-AppxPackage -Name *PowerBI* | Remove-AppxPackage
  Get-AppxPackage -Name *Eclipse* | Remove-AppxPackage
  Get-AppxPackage -Name *AdobePhotoshopExpress* | Remove-AppxPackage
  Get-AppxPackage -Name *Pandora* | Remove-AppxPackage
  Get-AppxPackage -Name *NetworkSpeedTest* | Remove-AppxPackage
  Get-AppxPackage -Name *RemoteDesktop* | Remove-AppxPackage
  Get-AppxPackage -Name *Facebook* | Remove-AppxPackage
  Get-AppxPackage -Name *Minecraft* | Remove-AppxPackage
  Get-AppxPackage -Name *twitter* | Remove-AppxPackage
  Get-AppxPackage -Name *Sling* | Remove-AppxPackage
  Get-AppxPackage -Name *Duolingo* | Remove-AppxPackage
  Get-AppxPackage -Name *PhototasticCollage* | Remove-AppxPackage
  Get-AppxPackage -Name *MarchofEmpires* | Remove-AppxPackage
  Get-AppxPackage -Name *Keeper* | Remove-AppxPackage
  Get-AppxPackage -Name *Microsoft3DViewer* | Remove-AppxPackage
  Get-AppxPackage -Name *Disney* | Remove-AppxPackage
  Get-AppxPackage -Name *Spotify* | Remove-AppxPackage
  Get-AppxPackage -Name *Wallet* | Remove-AppxPackage
  Get-AppxPackage -Name *SketchBook* | Remove-AppxPackage
  Get-AppxPackage -Name *Bubble* | Remove-AppxPackage
  $RemoveBloatware.Text = "Done. Bloatware Removed."
  #$wshell.Popup("Bloatware removed.",0,"$version")
}

Function Remove-XboxApp
{
  $RemoveXbox.Text = "Removing Xbox App..."

  Get-AppxPackage -Name *XboxApp* | Remove-AppxPackage

  $RemoveXbox.Text = "Done. Xbox App Removed."
  #$wshell.Popup("Xbox app removed.",0,"$version")
}

Function Remove-WindowsStore
{
  $RemoveWindowsStore.Text = "Removing Windows Store..."

  Get-AppxPackage *windowsstore* | Remove-AppxPackage

  $RemoveWindowsStore.Text = "Done. Windows Store Removed."
  #$wshell.Popup("Windows Store removed.",0,"$version")
}

Function Remove-OneDrive
{
  $RemoveOneDrive.Text = "Removing OneDrive..."

  C:\Windows\SysWOW64\OneDriveSetup.exe /uninstall
  sleep 5

  $RemoveOneDrive.Text = "OneDrive uninstalling in background."
  #$wshell.Popup("OneDrive uninstalling in background.",0,"$version")
}


##############################################################################################################################################################
#  Powershell variable dictionary
##############################################################################################################################################################
$version = "BeachedWhale 7.2"





##############################################################################################################################################################
#  Powershell Form settings
##############################################################################################################################################################
Add-Type -AssemblyName System.Windows.Forms

$Form = New-Object system.Windows.Forms.Form
$Form.Text = "$version"
$Form.TopMost = $true
$Form.Width = 772
$Form.Height = 451

$label2 = New-Object system.windows.Forms.Label
$label2.Text = "$version has a larger bloatware dictionary than ever. Updated 1/9/18."
$label2.AutoSize = $true
$label2.Width = 25
$label2.Height = 15
$label2.location = new-object system.drawing.point(39,29)
$label2.Font = "Microsoft Sans Serif,12"
$Form.controls.Add($label2)

$RemoveBloatware = New-Object system.windows.Forms.Button
$RemoveBloatware.Text = "Remove Bloatware"
$RemoveBloatware.Width = 197
$RemoveBloatware.Height = 68
$RemoveBloatware.Add_Click({
Remove-Bloatware
})
$RemoveBloatware.location = new-object system.drawing.point(136,116)
$RemoveBloatware.Font = "Microsoft Sans Serif,12"
$Form.controls.Add($RemoveBloatware)

$RemoveXbox = New-Object system.windows.Forms.Button
$RemoveXbox.Text = "Remove Xbox App"
$RemoveXbox.Width = 197
$RemoveXbox.Height = 68
$RemoveXbox.Add_Click({
  Remove-XboxApp
})
$RemoveXbox.location = new-object system.drawing.point(419,115)
$RemoveXbox.Font = "Microsoft Sans Serif,12"
$Form.controls.Add($RemoveXbox)

$RemoveWindowsStore = New-Object system.windows.Forms.Button
$RemoveWindowsStore.Text = "Remove Windows Store"
$RemoveWindowsStore.Width = 197
$RemoveWindowsStore.Height = 68
$RemoveWindowsStore.Add_Click({
  Remove-WindowsStore
})
$RemoveWindowsStore.location = new-object system.drawing.point(136,204)
$RemoveWindowsStore.Font = "Microsoft Sans Serif,12"
$Form.controls.Add($RemoveWindowsStore)

$RemoveOneDrive = New-Object system.windows.Forms.Button
$RemoveOneDrive.Text = "Remove OneDrive"
$RemoveOneDrive.Width = 197
$RemoveOneDrive.Height = 68
$RemoveOneDrive.Add_Click({
  Remove-OneDrive
})
$RemoveOneDrive.location = new-object system.drawing.point(419,204)
$RemoveOneDrive.Font = "Microsoft Sans Serif,12"
$Form.controls.Add($RemoveOneDrive)

$label3 = New-Object system.windows.Forms.LinkLabel
$label3.Text = "Install your favorite apps from http://ninite.com."
$label3.AutoSize = $true
$label3.Width = 25
$label3.Height = 15
$label3.location = new-object system.drawing.point(39,329)
$label3.LinkColor = "BLUE"
$label3.add_Click({[system.Diagnostics.Process]::start("http://ninite.com")})
$label3.Font = "Microsoft Sans Serif,12"
$Form.controls.Add($label3)

$label4 = New-Object system.windows.Forms.LinkLabel
$label4.LinkColor = "BLUE"
$label4.Text = "Do more tweaking with WinAero Tweaker! Click here to check it out!"
$label4.AutoSize = $true
$label4.Width = 25
$label4.Height = 15
$label4.location = new-object system.drawing.point(39,359)
$label4.add_Click({[system.Diagnostics.Process]::start("https://winaero.com/download.php?view.1796")})
$label4.Font = "Microsoft Sans Serif,12"
$Form.controls.Add($label4)

[void]$Form.ShowDialog()
$Form.Dispose()
