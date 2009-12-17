# Microsoft Developer Studio Project File - Name="SYMDEFCPPDLL" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=SYMDEFCPPDLL - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "SYMDEFCPPDLL.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "SYMDEFCPPDLL.mak" CFG="SYMDEFCPPDLL - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "SYMDEFCPPDLL - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "SYMDEFCPPDLL - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "SYMDEFCPPDLL"
# PROP Scc_LocalPath "..\Internal\testingsymdefcppdll"
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "SYMDEFCPPDLL - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 1
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "SYMDEFCPPDLL_EXPORTS" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GX /Zi /Od /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "SYMDEFCPPDLL_EXPORTS" /D "_WINDLL" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:I386
# ADD LINK32 /nologo /dll /machine:I386
# SUBTRACT LINK32 /debug

!ELSEIF  "$(CFG)" == "SYMDEFCPPDLL - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "SYMDEFCPPDLL_EXPORTS" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W4 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "SYMDEFCPPDLL_EXPORTS" /FR /YX /FD /MLD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /pdbtype:sept
# SUBTRACT LINK32 /profile /pdb:none /nodefaultlib

!ENDIF 

# Begin Target

# Name "SYMDEFCPPDLL - Win32 Release"
# Name "SYMDEFCPPDLL - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\Buf.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\Des16.cpp

!IF  "$(CFG)" == "SYMDEFCPPDLL - Win32 Release"

# ADD CPP /Od

!ELSEIF  "$(CFG)" == "SYMDEFCPPDLL - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\Des8.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\Desc16.cpp

!IF  "$(CFG)" == "SYMDEFCPPDLL - Win32 Release"

# ADD CPP /Od

!ELSEIF  "$(CFG)" == "SYMDEFCPPDLL - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\Desc8.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\Hbufc16.cpp

!IF  "$(CFG)" == "SYMDEFCPPDLL - Win32 Release"

# ADD CPP /Od

!ELSEIF  "$(CFG)" == "SYMDEFCPPDLL - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\Hbufc8.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\Rfile.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\Rpointerarraybase.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\Tbufbase16.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\Tbufbase8.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\TBufC.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\Tbufcbase16.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\Tbufcbase8.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\Tchar.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\TInt64.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\Tkeydesc8array.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\Tlex.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\Tptr16.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\Tptr8.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\Tptrc16.cpp

!IF  "$(CFG)" == "SYMDEFCPPDLL - Win32 Release"

# ADD CPP /Od

!ELSEIF  "$(CFG)" == "SYMDEFCPPDLL - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\Tptrc8.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\Trgb.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\utf.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\svg2bintype.h
# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\symdef.h
# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\symdef.inl
# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\symdefclass.h
# End Source File
# Begin Source File

SOURCE=..\Internal\testingsymdefcppdll\UTF.H
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# End Target
# End Project
