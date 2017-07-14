Function Remove-XboxApp
{
  Get-AppxPackage -Name *XboxApp* | Remove-AppxPackage
}

$host.ui.rawui.WindowTitle = "Removing Xbox App..."
echo "Removing Xbox App..."
echo ""
Remove-XboxApp
$host.ui.rawui.WindowTitle = "Done!"
echo "Done! Xbox App removed! Returning to the GUI."
sleep 1