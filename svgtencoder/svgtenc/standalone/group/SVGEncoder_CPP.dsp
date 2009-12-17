# Microsoft Developer Studio Project File - Name="SVGEncoder_CPP" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=SVGEncoder_CPP - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "SVGEncoder_CPP.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "SVGEncoder_CPP.mak" CFG="SVGEncoder_CPP - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "SVGEncoder_CPP - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "SVGEncoder_CPP - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "SVGEncoder_CPP - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /W3 /GX /I "..\Internal\SVGEngine\inc" /I "..\Internal\Gfx2D\inc" /I "..\Internal\Gfx2D\VGRasterizer\inc" /I "..\Internal\Xmldomimpl\inc" /I "..\Internal\SVGImpl\inc\SVGDOM" /I "..\Internal\SVGImpl\inc" /I "..\xerces-c-src_2_6_0" /I "..\Internal\Path\inc" /I "..\Internal\xmlReader\inc" /I "..\Internal\Sax2Print" /I "..\Internal\Nvg\inc" /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /FR /YX /FD /D /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 symdefcppdll.lib xerces-c_2.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386 /nodefaultlib:"LIBCMT" /nodefaultlib:"MSVCRTD" /out:"Release/SVGTBINENCODE.exe" /libpath:"..\Internal\lib"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "SVGEncoder_CPP - Win32 Debug"

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
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /I "..\Internal\SVGEngine\inc" /I "..\Internal\Gfx2D\inc" /I "..\Internal\Gfx2D\VGRasterizer\inc" /I "..\Internal\Xmldomimpl\inc" /I "..\Internal\SVGImpl\inc\SVGDOM" /I "..\Internal\SVGImpl\inc" /I "..\xerces-c-src_2_6_0" /I "..\Internal\Path\inc" /I "..\Internal\xmlReader\inc" /I "..\Internal\Sax2Print" /I "..\Internal\Nvg\inc" /I "C:\Program Files\Microsoft Visual Studio\VC98\MFC\SRC" /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /D "ARM" /FR /YX /FD /D /GZ /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo /o"Debug/SVGTBINENCODE.bsc"
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib xerces-c_2.lib symdefcppdll.lib /nologo /subsystem:console /debug /machine:I386 /out:"Debug/SVGTBINENCODE.exe" /pdbtype:sept /libpath:"..\lib"
# SUBTRACT LINK32 /pdb:none

!ENDIF 

# Begin Target

# Name "SVGEncoder_CPP - Win32 Release"
# Name "SVGEncoder_CPP - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\Internal\Gfx2D\src\GfxGeom\GfxAffineTransform.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\src\GfxGc\GfxColor.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\src\GfxGeom\GfxEllipse2D.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\src\GfxGeom\GfxEllipseIteratorP.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\src\GfxGeom\GfxFlatteningPathIterator.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\src\GfxFloatFixPt.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\src\GfxGeom\GfxGeneralPath.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\src\GfxGeom\GfxGeneralPathIteratorP.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\src\GfxGc\GfxGradientPaint.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\src\GfxGeom\GfxLine2D.cpp

!IF  "$(CFG)" == "SVGEncoder_CPP - Win32 Release"

!ELSEIF  "$(CFG)" == "SVGEncoder_CPP - Win32 Debug"

# ADD CPP /w /W0
# SUBTRACT CPP /O<none>

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\src\GfxGeom\GfxLineIteratorP.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\src\GfxGeom\GfxPoint2D.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\src\GfxGeom\GfxRectangle2D.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\src\GfxGeom\GfxRectangleIteratorP.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\src\GfxGeom\GfxRectangularShape.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\src\GfxGeom\GfxRoundRectangle2D.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\src\GfxGeom\GfxRoundRectangleIteratorP.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\src\Gfxtrignometric.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\xmlReader\src\MyRXMLReader.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\src\NVGCircleElement.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\src\NvgCommandSection.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\src\NVGDefElement.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\src\NVGElement.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\src\NVGElementFactory.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\src\NVGEllipseElement.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\src\NVGEncoder.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\src\NVGGElement.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\src\NvgHeaderSection.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\src\NVGLinearGradientElement.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\src\NVGLineElement.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\src\NvgOffsetVector.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\src\NvgPaintSection.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\src\NVGPathElement.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\src\NvgPathSection.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\src\NVGPolygonElement.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\src\NVGRadialGradientElement.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\src\NVGRectElement.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\src\NVGStopElement.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\src\NVGSVGElement.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Sax2Print\SAX2PrintHandlers.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGAElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGAnimateElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGAnimateMotionElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGAnimateTransformElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGAnimationBase.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGAnimTimeController.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGAnimTimingParser.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\VGRasterizer\src\svgapi.c
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGEngine\src\SVGAttributeVerifier.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGAudioElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGCircleElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGClrCssValueImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGColor.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGEngine\src\SVGContentHandler.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGDiscardElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGDocumentImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGDOMImplementationImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGEllipseElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGEngine\src\Svgencoder.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGEngine\src\Svgencodermain.cpp

!IF  "$(CFG)" == "SVGEncoder_CPP - Win32 Release"

# ADD CPP /ZI /FAcs

!ELSEIF  "$(CFG)" == "SVGEncoder_CPP - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\Internal\SVGEngine\src\SVGEngineImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGEngine\src\SVGErrorImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGEngine\src\SVGEvent.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGFitToViewBoxImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGFloatCssValueImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGFontElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGFontFaceElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGFontMap.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGGElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGGlyphElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGGradientElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SvgHkernelementimpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGImageElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGIntCssValueImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGLangSpaceImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGLinearGradientElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGLineElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\VGRasterizer\src\svgmath.c
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGMediaAnimationElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGMediaElementBase.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGMissingGlyphElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGMpathElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGPaintCssValueImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\VGRasterizer\src\svgpath.c
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGPathDataParser.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGPathElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGPointLexer.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGPolylineElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGPreserveAspectRatioImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGRadialGradientElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGRectElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGRelToAbsPath.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGSchemaData.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGSetElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGSolidColorElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGStopElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGStrCssValueImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGStringTokenizer.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGStyleElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\VGRasterizer\src\svgsubdivide.c
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\Svgsvgelementimpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGEngine\src\SVGTEncodeInterfaceImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGTestsImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGTextElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGTransformableImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGTransformListImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGUriReferenceImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGUseElementImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\src\SVGVectorCssValueImpl.cpp
# End Source File
# Begin Source File

SOURCE=..\Internal\Xmldomimpl\src\SVGXmlElementImpl.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\Internal\Gfx2D\inc\GfxAffineTransform.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\inc\GfxColor.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\inc\GfxEllipse2D.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\inc\GfxEllipseIteratorP.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\inc\GfxFlatteningPathIterator.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\inc\GfxFloatFixPt.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\inc\GfxFloatFixPt.inl
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\inc\GfxGeneralPath.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\inc\GfxGeneralPathIteratorP.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\inc\GfxGradientPaint.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\inc\GfxLine2D.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\inc\GfxLineIteratorP.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\inc\GfxPaint.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\inc\GfxPathIterator.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\inc\GfxPoint2D.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\inc\GfxRectangle2D.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\inc\GfxRectangleIteratorP.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\inc\GfxRectangularShape.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\inc\GfxRoundRectangle2D.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\inc\GfxRoundRectangleIteratorP.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\inc\GfxShape.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\inc\GfxStroke.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\inc\Gfxtrignometric.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Path\inc\MyUTF.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\inc\NVGCircleElement.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\inc\NvgCommandSection.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\inc\NVGDefElement.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\inc\NVGElement.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\inc\NVGElementFactory.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\inc\NVGEllipseElement.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\inc\NVGEncoder.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\inc\NVGGElement.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\inc\NvgHeaderSection.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\inc\NVGLinearGradientElement.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\inc\NVGLineElement.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\inc\NvgOffsetVector.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\inc\NvgPaintSection.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\inc\NVGPathElement.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\inc\NvgPathSection.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\inc\NVGPolygonElement.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\inc\NVGRadialGradientElement.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\inc\NVGRectElement.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\inc\NVGStopElement.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Nvg\inc\NVGSVGElement.h
# End Source File
# Begin Source File

SOURCE="C:\Program Files\Microsoft Visual Studio\VC98\Include\STRING.H"
# End Source File
# Begin Source File

SOURCE=..\Internal\Path\inc\svg2bintype.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGAElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGAnimateElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGAnimateMotionElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGAnimateTransformElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGAnimationBase.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGAnimTimeController.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGAnimTimingParser.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGEngine\inc\SVGAttributeVerifier.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGAudioElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGCircleElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGClrCssValueImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGColor.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGEngine\inc\SVGContentHandler.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGDOM\SVGCssValue.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\VGRasterizer\inc\svgdef.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGDiscardElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGDocumentImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGDOMImplementationImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGDOM\SVGElementTimeControl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGEllipseElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGEngine\inc\SVGEncoder.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGEngine\inc\SVGEngineImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGEngine\inc\SVGErrorImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGEngine\inc\SVGEvent.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGEngine\inc\SVGEventReceiver.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGDOM\SVGFitToViewBox.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGFitToViewBoxImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGFloatCssValueImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGFontElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGFontFaceElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGFontMap.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGGElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGGlyphElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGGradientElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SvgHkernelementimpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGImageElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGIntCssValueImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGDOM\SVGLangSpace.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGLangSpaceImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGLinearGradientElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGLineElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGDOM\SVGLocatable.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\VGRasterizer\inc\svgmath.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGMediaAnimationElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGMediaElementBase.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGMissingGlyphElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGMpathElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGPaintCssValueImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGPathDataParser.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGPathElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGPointLexer.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGPolylineElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGDOM\SVGPreserveAspectRatio.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGPreserveAspectRatioImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGRadialGradientElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Gfx2D\VGRasterizer\inc\svgrasterizer.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGRectElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGRelToAbsPath.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGEngine\inc\SVGRequestObserver.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGSchemaData.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGSetElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGSolidColorElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SvgStopElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGStrCssValueImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGStringTokenizer.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGStyleElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGSvgElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGEngine\inc\Svgtencodeinterface.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGEngine\inc\Svgtencodeinterfaceimpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGDOM\SVGTests.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGTestsImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGTextElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGDOM\SVGTransformable.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGTransformableImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGDOM\SVGTransformList.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGTransformListImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGDOM\SVGUriReference.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGUriReferenceImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGUseElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGVectorCssValueImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Xmldomimpl\inc\SVGXmlDocument.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Xmldomimpl\inc\SVGXmlDOMImplementation.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Xmldomimpl\inc\SVGXmlElement.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Xmldomimpl\inc\SVGXmlElementImpl.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGXmlElementOpt.h
# End Source File
# Begin Source File

SOURCE=..\Internal\SVGImpl\inc\SVGDOM\SVGZoomAndPan.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Path\inc\symdef.h
# End Source File
# Begin Source File

SOURCE=..\Internal\Path\inc\symdef.inl
# End Source File
# Begin Source File

SOURCE=..\Internal\Path\inc\symdefclass.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# End Target
# End Project
