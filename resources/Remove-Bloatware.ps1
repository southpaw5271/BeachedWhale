Function Remove-Bloatware{
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
  #Get-AppxPackage -Name ** | Remove-AppxPackage
}
$host.ui.rawui.WindowTitle = "Removing Bloatware..."
echo "Removing Bloatware..."
echo ""
Remove-Bloatware
$host.ui.rawui.WindowTitle = "Done!"
echo "Done! Bloatware removed! Returning to the GUI."
sleep 1