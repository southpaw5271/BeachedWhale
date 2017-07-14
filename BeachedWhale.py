import subprocess, os, time

# import the appJar library
from appJar import gui


# create a GUI variable called app
version = "BeachedWhale 8.0"
app = gui(version, "600x300")
#window customization
app.setFont(12)

#Change window background color here:
#app.setBg("blue")

###########################################################################################################################
# Top level labels for intro 
###########################################################################################################################


#Top label
app.addLabel("welcome", "Welcome to BeachedWhale!")
app.addLabel("intro", "Version 8 has a new GUI written with Python")
app.addEmptyLabel("blank3")
app.addLabel("whatisit","BeachedWhale is designed to remove Windows 10 Bloatware")



###########################################################################################################################
#Those button functions tho
###########################################################################################################################
def RemoveBloatwareButton(button):
    if button == "Remove Bloatware":
        Remove_Test = subprocess.Popen([r'C:\WINDOWS\system32\WindowsPowerShell\v1.0\powershell.exe',
                             '-ExecutionPolicy',
                             'Unrestricted',
                             './resources/Remove-Bloatware.ps1',
                             ], cwd=os.getcwd())
        result = Remove_Test.wait()
        app.setButton("Remove Bloatware", "Done! Bloatware Removed!")

def RemoveXboxButton(button):
    if button == "Remove Xbox App":
        Remove_XboxApp = subprocess.Popen([r'C:\WINDOWS\system32\WindowsPowerShell\v1.0\powershell.exe',
                             '-ExecutionPolicy',
                             'Unrestricted',
                             './resources/Remove-XboxApp.ps1',
                             ], cwd=os.getcwd())
        result = Remove_XboxApp.wait()
        app.setButton("Remove Xbox App", "Done! Xbox App Removed!")
def RemoveOneDriveButton(button):
    if button == "Remove OneDrive":
        Remove_OneDrive = subprocess.Popen([r'C:\WINDOWS\system32\WindowsPowerShell\v1.0\powershell.exe',
                             '-ExecutionPolicy',
                             'Unrestricted',
                             './resources/Remove-OneDrive.ps1',
                             ], cwd=os.getcwd())
        result = Remove_OneDrive.wait()
        app.setButton("Remove OneDrive", "Done! OneDrive Removed!")
def RemoveWinStoreButton(button):
    if button == "Remove Windows Store":
        Remove_WinStore = subprocess.Popen([r'C:\WINDOWS\system32\WindowsPowerShell\v1.0\powershell.exe',
                             '-ExecutionPolicy',
                             'Unrestricted',
                             './resources/Remove-WindowsStore.ps1',
                             ], cwd=os.getcwd())
        result = Remove_WinStore.wait()
        app.setButton("Remove Windows Store", "Done! Windows Store Removed!")
###########################################################################################################################        







###########################################################################################################################		
# Make and link the buttons to the functions
###########################################################################################################################
#Buttons
app.addEmptyLabel("blank1")
app.addButton("Remove Bloatware", RemoveBloatwareButton)
app.addButton("Remove Xbox App", RemoveXboxButton)
app.addButton("Remove OneDrive", RemoveOneDriveButton)
app.addButton("Remove Windows Store", RemoveWinStoreButton)
#app.addButtons(["Remove Windows Store", "Remove OneDrive"], press2)
app.addEmptyLabel("blank2")
app.addLabel("createdBy", "Created by: Kyle Wright")
app.addWebLink("wright.tech", "http://wright.tech")
app.setLabelBg("createdBy", "orange")
		
		
###########################################################################################################################
# start the GUI
###########################################################################################################################
app.go()
