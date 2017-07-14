Function Remove-WindowsStore
{
  Get-AppxPackage *windowsstore* | Remove-AppxPackage
}

$host.ui.rawui.WindowTitle = "Removing Windows Store..."
echo "Removing Windows Store..."
echo ""
Remove-WindowsStore
$host.ui.rawui.WindowTitle = "Done!"
echo "Done! Windows Store removed! Returning to the GUI."
sleep 1