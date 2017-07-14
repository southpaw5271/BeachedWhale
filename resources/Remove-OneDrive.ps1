Function Remove-OneDrive
{
  C:\Windows\SysWOW64\OneDriveSetup.exe /uninstall
  sleep 5
}

$host.ui.rawui.WindowTitle = "Removing OneDrive..."
echo "Removing OneDrive..."
echo ""
Remove-OneDrive
$host.ui.rawui.WindowTitle = "Done!"
echo "Done! OneDrive removed! Returning to the GUI."
sleep 1