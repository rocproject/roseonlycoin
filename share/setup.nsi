<<<<<<< HEAD
Name RoseOnlycoin
=======
Name Hirocoin
>>>>>>> 4e4ef7e73515f26174f9ca9d15fdcb46b1890589

RequestExecutionLevel highest
SetCompressor /SOLID lzma

# General Symbol Definitions
!define REGKEY "SOFTWARE\$(^Name)"
!define VERSION 0.8.6.0
<<<<<<< HEAD
!define COMPANY "RoseOnlycoin project"
!define URL http://www.roseonlycoin.org/
=======
!define COMPANY "Hirocoin project"
!define URL http://www.hirocoin.org/
>>>>>>> 4e4ef7e73515f26174f9ca9d15fdcb46b1890589

# MUI Symbol Definitions
!define MUI_ICON "../share/pixmaps/bitcoin.ico"
!define MUI_WELCOMEFINISHPAGE_BITMAP "../share/pixmaps/nsis-wizard.bmp"
!define MUI_HEADERIMAGE
!define MUI_HEADERIMAGE_RIGHT
!define MUI_HEADERIMAGE_BITMAP "../share/pixmaps/nsis-header.bmp"
!define MUI_FINISHPAGE_NOAUTOCLOSE
!define MUI_STARTMENUPAGE_REGISTRY_ROOT HKLM
!define MUI_STARTMENUPAGE_REGISTRY_KEY ${REGKEY}
!define MUI_STARTMENUPAGE_REGISTRY_VALUENAME StartMenuGroup
<<<<<<< HEAD
!define MUI_STARTMENUPAGE_DEFAULTFOLDER RoseOnlycoin
!define MUI_FINISHPAGE_RUN $INSTDIR\roseonlycoin-qt.exe
=======
!define MUI_STARTMENUPAGE_DEFAULTFOLDER Hirocoin
!define MUI_FINISHPAGE_RUN $INSTDIR\hirocoin-qt.exe
>>>>>>> 4e4ef7e73515f26174f9ca9d15fdcb46b1890589
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"
!define MUI_UNWELCOMEFINISHPAGE_BITMAP "../share/pixmaps/nsis-wizard.bmp"
!define MUI_UNFINISHPAGE_NOAUTOCLOSE

# Included files
!include Sections.nsh
!include MUI2.nsh

# Variables
Var StartMenuGroup

# Installer pages
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_STARTMENU Application $StartMenuGroup
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES

# Installer languages
!insertmacro MUI_LANGUAGE English

# Installer attributes
<<<<<<< HEAD
OutFile roseonlycoin-0.8.6.0-win32-setup.exe
InstallDir $PROGRAMFILES\RoseOnlycoin
=======
OutFile hirocoin-0.8.6.0-win32-setup.exe
InstallDir $PROGRAMFILES\Hirocoin
>>>>>>> 4e4ef7e73515f26174f9ca9d15fdcb46b1890589
CRCCheck on
XPStyle on
BrandingText " "
ShowInstDetails show
VIProductVersion 0.8.6.0
<<<<<<< HEAD
VIAddVersionKey ProductName RoseOnlycoin
=======
VIAddVersionKey ProductName Hirocoin
>>>>>>> 4e4ef7e73515f26174f9ca9d15fdcb46b1890589
VIAddVersionKey ProductVersion "${VERSION}"
VIAddVersionKey CompanyName "${COMPANY}"
VIAddVersionKey CompanyWebsite "${URL}"
VIAddVersionKey FileVersion "${VERSION}"
VIAddVersionKey FileDescription ""
VIAddVersionKey LegalCopyright ""
InstallDirRegKey HKCU "${REGKEY}" Path
ShowUninstDetails show

# Installer sections
Section -Main SEC0000
    SetOutPath $INSTDIR
    SetOverwrite on
<<<<<<< HEAD
    File ../release/roseonlycoin-qt.exe
    File /oname=COPYING.txt ../COPYING
    File /oname=readme.txt ../doc/README_windows.txt
    SetOutPath $INSTDIR\daemon
    File ../src/roseonlycoind.exe
=======
    File ../release/hirocoin-qt.exe
    File /oname=COPYING.txt ../COPYING
    File /oname=readme.txt ../doc/README_windows.txt
    SetOutPath $INSTDIR\daemon
    File ../src/hirocoind.exe
>>>>>>> 4e4ef7e73515f26174f9ca9d15fdcb46b1890589
    SetOutPath $INSTDIR\src
    File /r /x *.exe /x *.o ../src\*.*
    SetOutPath $INSTDIR
    WriteRegStr HKCU "${REGKEY}\Components" Main 1

    # Remove old wxwidgets-based-bitcoin executable and locales:
<<<<<<< HEAD
    Delete /REBOOTOK $INSTDIR\roseonlycoin.exe
=======
    Delete /REBOOTOK $INSTDIR\hirocoin.exe
>>>>>>> 4e4ef7e73515f26174f9ca9d15fdcb46b1890589
    RMDir /r /REBOOTOK $INSTDIR\locale
SectionEnd

Section -post SEC0001
    WriteRegStr HKCU "${REGKEY}" Path $INSTDIR
    SetOutPath $INSTDIR
    WriteUninstaller $INSTDIR\uninstall.exe
    !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
    CreateDirectory $SMPROGRAMS\$StartMenuGroup
<<<<<<< HEAD
    CreateShortcut "$SMPROGRAMS\$StartMenuGroup\RoseOnlycoin.lnk" $INSTDIR\roseonlycoin-qt.exe
    CreateShortcut "$SMPROGRAMS\$StartMenuGroup\Uninstall RoseOnlycoin.lnk" $INSTDIR\uninstall.exe
=======
    CreateShortcut "$SMPROGRAMS\$StartMenuGroup\Hirocoin.lnk" $INSTDIR\hirocoin-qt.exe
    CreateShortcut "$SMPROGRAMS\$StartMenuGroup\Uninstall Hirocoin.lnk" $INSTDIR\uninstall.exe
>>>>>>> 4e4ef7e73515f26174f9ca9d15fdcb46b1890589
    !insertmacro MUI_STARTMENU_WRITE_END
    WriteRegStr HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" DisplayName "$(^Name)"
    WriteRegStr HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" DisplayVersion "${VERSION}"
    WriteRegStr HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" Publisher "${COMPANY}"
    WriteRegStr HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" URLInfoAbout "${URL}"
    WriteRegStr HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" DisplayIcon $INSTDIR\uninstall.exe
    WriteRegStr HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" UninstallString $INSTDIR\uninstall.exe
    WriteRegDWORD HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" NoModify 1
    WriteRegDWORD HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" NoRepair 1
<<<<<<< HEAD
    WriteRegStr HKCR "roseonlycoin" "URL Protocol" ""
    WriteRegStr HKCR "roseonlycoin" "" "URL:RoseOnlycoin"
    WriteRegStr HKCR "roseonlycoin\DefaultIcon" "" $INSTDIR\roseonlycoin-qt.exe
    WriteRegStr HKCR "roseonlycoin\shell\open\command" "" '"$INSTDIR\roseonlycoin-qt.exe" "%1"'
=======
    WriteRegStr HKCR "hirocoin" "URL Protocol" ""
    WriteRegStr HKCR "hirocoin" "" "URL:Hirocoin"
    WriteRegStr HKCR "hirocoin\DefaultIcon" "" $INSTDIR\hirocoin-qt.exe
    WriteRegStr HKCR "hirocoin\shell\open\command" "" '"$INSTDIR\hirocoin-qt.exe" "%1"'
>>>>>>> 4e4ef7e73515f26174f9ca9d15fdcb46b1890589
SectionEnd

# Macro for selecting uninstaller sections
!macro SELECT_UNSECTION SECTION_NAME UNSECTION_ID
    Push $R0
    ReadRegStr $R0 HKCU "${REGKEY}\Components" "${SECTION_NAME}"
    StrCmp $R0 1 0 next${UNSECTION_ID}
    !insertmacro SelectSection "${UNSECTION_ID}"
    GoTo done${UNSECTION_ID}
next${UNSECTION_ID}:
    !insertmacro UnselectSection "${UNSECTION_ID}"
done${UNSECTION_ID}:
    Pop $R0
!macroend

# Uninstaller sections
Section /o -un.Main UNSEC0000
<<<<<<< HEAD
    Delete /REBOOTOK $INSTDIR\roseonlycoin-qt.exe
=======
    Delete /REBOOTOK $INSTDIR\hirocoin-qt.exe
>>>>>>> 4e4ef7e73515f26174f9ca9d15fdcb46b1890589
    Delete /REBOOTOK $INSTDIR\COPYING.txt
    Delete /REBOOTOK $INSTDIR\readme.txt
    RMDir /r /REBOOTOK $INSTDIR\daemon
    RMDir /r /REBOOTOK $INSTDIR\src
    DeleteRegValue HKCU "${REGKEY}\Components" Main
SectionEnd

Section -un.post UNSEC0001
    DeleteRegKey HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)"
<<<<<<< HEAD
    Delete /REBOOTOK "$SMPROGRAMS\$StartMenuGroup\Uninstall RoseOnlycoin.lnk"
    Delete /REBOOTOK "$SMPROGRAMS\$StartMenuGroup\RoseOnlycoin.lnk"
    Delete /REBOOTOK "$SMSTARTUP\RoseOnlycoin.lnk"
=======
    Delete /REBOOTOK "$SMPROGRAMS\$StartMenuGroup\Uninstall Hirocoin.lnk"
    Delete /REBOOTOK "$SMPROGRAMS\$StartMenuGroup\Hirocoin.lnk"
    Delete /REBOOTOK "$SMSTARTUP\Hirocoin.lnk"
>>>>>>> 4e4ef7e73515f26174f9ca9d15fdcb46b1890589
    Delete /REBOOTOK $INSTDIR\uninstall.exe
    Delete /REBOOTOK $INSTDIR\debug.log
    Delete /REBOOTOK $INSTDIR\db.log
    DeleteRegValue HKCU "${REGKEY}" StartMenuGroup
    DeleteRegValue HKCU "${REGKEY}" Path
    DeleteRegKey /IfEmpty HKCU "${REGKEY}\Components"
    DeleteRegKey /IfEmpty HKCU "${REGKEY}"
<<<<<<< HEAD
    DeleteRegKey HKCR "roseonlycoin"
=======
    DeleteRegKey HKCR "hirocoin"
>>>>>>> 4e4ef7e73515f26174f9ca9d15fdcb46b1890589
    RmDir /REBOOTOK $SMPROGRAMS\$StartMenuGroup
    RmDir /REBOOTOK $INSTDIR
    Push $R0
    StrCpy $R0 $StartMenuGroup 1
    StrCmp $R0 ">" no_smgroup
no_smgroup:
    Pop $R0
SectionEnd

# Installer functions
Function .onInit
    InitPluginsDir
FunctionEnd

# Uninstaller functions
Function un.onInit
    ReadRegStr $INSTDIR HKCU "${REGKEY}" Path
    !insertmacro MUI_STARTMENU_GETFOLDER Application $StartMenuGroup
    !insertmacro SELECT_UNSECTION Main ${UNSEC0000}
FunctionEnd
