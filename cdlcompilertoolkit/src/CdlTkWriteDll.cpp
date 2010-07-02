/*
* Copyright (c) 2009, 2010 Nokia Corporation and/or its subsidiary(-ies).
* All rights reserved.
* This component and the accompanying materials are made available
* under the terms of "Eclipse Public License v1.0"
* which accompanies this distribution, and is available
* at the URL "http://www.eclipse.org/legal/epl-v10.html".
*
* Initial Contributors:
* Nokia Corporation - initial contribution.
*
* Contributors:
*
* Description:
*
*/
#pragma warning (disable:4786)	// disable "identifier was truncated to '255' characters in the browser information" warning
#include "CdlCompilerToolkit/CdlTkProcess.h"
#include "CdlTkPriv.h"
#include <fstream>
#include <iomanip>
#include <iostream>
#include <sstream>
using namespace std;

namespace CdlCompilerToolkit {

CCdlTkWriteDll::CCdlTkWriteDll(const CCdlTkDll& aDll)
: iDll(aDll)
	{
	}

CCdlTkWriteDll::~CCdlTkWriteDll()
	{
	}

void CCdlTkWriteDll::Process()
	{
	WriteBldInf();
	WriteMmp();
	WriteMainCpp();
	WriteInstanceIdHeader();
	WriteEcomRss();
	WriteEcomDetailRss();
	}


//
// BLD.INF
//

const string KBldInf = "\
/*\n\
* Copyright (c) 2009 Nokia Corporation and/or its subsidiary(-ies).\n\
* All rights reserved.\n\
* This component and the accompanying materials are made available\n\
* under the terms of \"Eclipse Public License v1.0\"\n\
* which accompanies this distribution, and is available\n\
* at the URL \"http://www.eclipse.org/legal/epl-v10.html\".\n\
*\n\
* Initial Contributors:\n\
* Nokia Corporation - initial contribution.\n\
*\n\
* Contributors:\n\
*\n\
* Description:\n\
*\n\
*/\n\n\
// It lists the makefile for a customisation DLL.\n\
// It may be modified manually.\n\
\n\
PRJ_MMPFILES\n\
$MMP_NAME\n";

void CCdlTkWriteDll::WriteBldInf() const
	{
	string name = CdlTkUtil::OutputPath() + "bld.inf";
	ofstream stream;
	CCdlTkFileCleanup tempFile;
	CdlTkUtil::OpenTempOutput(stream, tempFile);
	stream << 
		CdlTkUtil::Replace("$CMDLINE", CdlTkUtil::CommandLine(),
		CdlTkUtil::Replace("$MMP_NAME", CdlTkUtil::ToLower(CdlTkUtil::StripPath(iDll.Name()+".mmp")), KBldInf));
	stream.close();
	CdlTkUtil::ExportFileIfWritable(tempFile, name);
	}


//
// MMP
//

const string KMmp = "\
/*\n\
* Copyright (c) 2009 Nokia Corporation and/or its subsidiary(-ies).\n\
* All rights reserved.\n\
* This component and the accompanying materials are made available\n\
* under the terms of \"Eclipse Public License v1.0\"\n\
* which accompanies this distribution, and is available\n\
* at the URL \"http://www.eclipse.org/legal/epl-v10.html\".\n\
*\n\
* Initial Contributors:\n\
* Nokia Corporation - initial contribution.\n\
*\n\
* Contributors:\n\
*\n\
* Description:\n\
*\n\
*/\n\n\
// It contains the project definition for a customisation DLL.\n\
// It may be modified manually.\n\
#include <platform_paths.hrh>\n\
\n\
target           $UID.dll\n\
targettype		 PLUGIN\n\
UID 			 0x10009D8D 0x$UID\n\
CAPABILITY       CAP_ECOM_PLUGIN\n\
VENDORID         VID_DEFAULT\n\
\n\
SOURCEPATH       .\n\
userinclude      .\n\
systeminclude    .\n\
MW_LAYER_SYSTEMINCLUDE\n\
\n\
source           $DLL_SRC_NAME.cpp\n\
$SOURCE\
\n\
library          euser.lib\n\
$LIBRARIES\
\n\
START RESOURCE	 $UID.rss\n\
TARGET       $UID.rsc\n\
END\n\
START RESOURCE   $UID_cdl_detail.rss\n\
TARGETPATH       resource/cdl\n\
END\n\
\n\
$EXTRA";

const string KMmpSourceLine = "source           $NAME.cpp\n";
const string KMmpLibLine = "library          $NAME\n";

void CCdlTkWriteDll::WriteMmp() const
	{
	string name = CdlTkUtil::OutputPath() + CdlTkUtil::ToLower(iDll.Name() + ".mmp");
	ofstream stream;
	CCdlTkFileCleanup tempFile;
	CdlTkUtil::OpenTempOutput(stream, tempFile);

	string source;
	for (CCdlTkDll::CInstances::const_iterator pName = iDll.Instances().begin(); pName != iDll.Instances().end(); ++pName)
		{
		string tempPName = CdlTkUtil::Replace("\r", "", *pName);
		tempPName = CdlTkUtil::Replace("\n", "", tempPName);

		CdlTkUtil::AppendString(source, CdlTkUtil::Replace("$NAME", CdlTkUtil::CorrectFilenameCase(tempPName), KMmpSourceLine));

		}
	string libraries;
	for (CCdlTkDll::CLibraries::const_iterator pLib = iDll.Libraries().begin(); pLib != iDll.Libraries().end(); ++pLib)
		CdlTkUtil::AppendString(libraries, CdlTkUtil::Replace("$NAME", *pLib, KMmpLibLine));

	CdlTkUtil::CReplaceSet mmpSet;
	mmpSet.Add("$DLL_NAME", iDll.Name());
	mmpSet.Add("$DLL_SRC_NAME", CdlTkUtil::CorrectFilenameCase(iDll.Name()));
	mmpSet.Add("$UID", CdlTkUtil::IntToHexString(iDll.Uid()).substr(2));
	mmpSet.Add("$SOURCE", source);
	mmpSet.Add("$LIBRARIES", libraries);
	mmpSet.Add("$EXTRA", iDll.ExtraMmp());
	mmpSet.Add("$CMDLINE", CdlTkUtil::CommandLine());
	string mmp = CdlTkUtil::MultiReplace(mmpSet, KMmp);

	stream << mmp;
	stream.close();

	CdlTkUtil::ExportFileIfWritable(tempFile, name);
	}


//
// CPP
//

const string KMainCpp = "\
/*\n\
* Copyright (c) 2009 Nokia Corporation and/or its subsidiary(-ies).\n\
* All rights reserved.\n\
* This component and the accompanying materials are made available\n\
* under the terms of \"Eclipse Public License v1.0\"\n\
* which accompanies this distribution, and is available\n\
* at the URL \"http://www.eclipse.org/legal/epl-v10.html\".\n\
*\n\
* Initial Contributors:\n\
* Nokia Corporation - initial contribution.\n\
*\n\
* Contributors:\n\
*\n\
* Description:\n\
*\n\
*/\n\n\
// This is the main source file for a customisation DLL.\n\
// It may be modified manually.\n\
\n\
$INCLUDES\
\n\
CDL_ARRAY_START(SCdlCustomisation, KCdlData)\n\
\t{\n\
$INSTANCES\
\t}\n\
CDL_ARRAY_END(SCdlCustomisation, KCdlData);\n\
\n\
GLREF_D const SCdlMain KCdlMainExport =\n\
\t{\n\
\t$MAJOR_VER,\n\
\t$MINOR_VER,\n\
\t&KCdlData\n\
\t};\n\
\n\
#include <ecom/ecom.h>\n\
#include <ecom/implementationproxy.h>\n\
\n\
static TAny* MainExport()\n\
	{\n\
	return (TAny*)&KCdlMainExport;\n\
	}\n\
\n\
const TImplementationProxy ImplementationTable[] =\n\
	{\n\
		{{$DLLUID}, ::MainExport}\n\
	};\n\
\n\
EXPORT_C const TImplementationProxy* ImplementationGroupProxy(TInt& aTableCount)\n\
	{\n\
	aTableCount = sizeof(ImplementationTable) / sizeof(TImplementationProxy);\n\
	return ImplementationTable;\n\
	}\n\
\n\
\n";

string KMainCppInclude = "#include \"$NAME.h\"\n";
string KMainCppInstance = "\t\tCDL_CUSTOMISATION($CPP_NAME),\n";

void CCdlTkWriteDll::WriteMainCpp() const
	{
	string name = CdlTkUtil::OutputPath() + CdlTkUtil::CorrectFilenameCase(iDll.Name() + ".cpp");
	ofstream stream;
	CCdlTkFileCleanup tempFile;
	CdlTkUtil::OpenTempOutput(stream, tempFile);

	string includes;
	string instances;
	for (CCdlTkDll::CInstances::const_iterator pName = iDll.Instances().begin(); pName != iDll.Instances().end(); ++pName)
		{
		string tempPName = CdlTkUtil::Replace("\r", "", *pName);
		tempPName = CdlTkUtil::Replace("\n", "", tempPName);

		CdlTkUtil::AppendString(includes, CdlTkUtil::Replace("$NAME", CdlTkUtil::ToLower(tempPName), KMainCppInclude));
		CdlTkUtil::AppendString(instances, CdlTkUtil::Replace("$CPP_NAME", CdlTkUtil::ToCpp(tempPName), KMainCppInstance));
		}

	stringstream majorVer;
	majorVer << KCdlCompilerMajorVersion;

	stringstream minorVer;
	minorVer << KCdlCompilerMinorVersion;

	CdlTkUtil::CReplaceSet cppSet;
	cppSet.Add("$MAJOR_VER", majorVer.str());
	cppSet.Add("$MINOR_VER", minorVer.str());
	cppSet.Add("$INCLUDES", includes);
	cppSet.Add("$INSTANCES", instances);
	cppSet.Add("$CMDLINE", CdlTkUtil::CommandLine());
	cppSet.Add("$DLLUID", CdlTkUtil::IntToHexString(iDll.Uid()));
	string cpp = CdlTkUtil::MultiReplace(cppSet, KMainCpp);

	stream << cpp;
	stream.close();

	CdlTkUtil::ExportFileIfWritable(tempFile, name);
	}

//
// Instance ID Header
//

const string KInstHeaderBody = "\
/*\n\
* Copyright (c) 2009 Nokia Corporation and/or its subsidiary(-ies).\n\
* All rights reserved.\n\
* This component and the accompanying materials are made available\n\
* under the terms of \"Eclipse Public License v1.0\"\n\
* which accompanies this distribution, and is available\n\
* at the URL \"http://www.eclipse.org/legal/epl-v10.html\".\n\
*\n\
* Initial Contributors:\n\
* Nokia Corporation - initial contribution.\n\
*\n\
* Contributors:\n\
*\n\
* Description:\n\
*\n\
*/\n\n\
#ifndef $DLL_NAME_INST_IDS\n\
#define $DLL_NAME_INST_IDS\n\
\n\
$IDS\
\n\
#endif\n";

const string KInstHeaderId = "#define $ID $NUM\n";

void CCdlTkWriteDll::WriteInstanceIdHeader() const
	{
	string name = CdlTkUtil::OutputPath() + CdlTkUtil::ToLower(KDllInstHeader);
	ofstream stream;
	CCdlTkFileCleanup tempFile;
	CdlTkUtil::OpenTempOutput(stream, tempFile);

	int num = 0;
	string ids;
	for (CCdlTkDll::CInstances::const_iterator pName = iDll.Instances().begin(); pName != iDll.Instances().end(); ++pName)
		{
		string name = CCdlTkInstance::InstanceNameToDllInstanceName(*pName);
		string id = CdlTkUtil::Replace("$ID", name, KInstHeaderId);
		id = CdlTkUtil::Replace("$NUM", CdlTkUtil::IntToHexString(num), id);
		CdlTkUtil::AppendString(ids, id);
		num++;
		}

	CdlTkUtil::CReplaceSet headerSet;
	string dllName = iDll.Name();
	dllName = CdlTkUtil::Replace("\r", "", dllName);
	dllName = CdlTkUtil::Replace("\n", "", dllName);
	headerSet.Add("$DLL_NAME", dllName);
	headerSet.Add("$IDS", ids);
	headerSet.Add("$CMDLINE", CdlTkUtil::CommandLine());
	string header = CdlTkUtil::MultiReplace(headerSet, KInstHeaderBody);

	stream << header;
	stream.close();

	CdlTkUtil::ExportFileIfWritable(tempFile, name);
	}

const string KEComRss = "\
/*\n\
* Copyright (c) 2009 Nokia Corporation and/or its subsidiary(-ies).\n\
* All rights reserved.\n\
* This component and the accompanying materials are made available\n\
* under the terms of \"Eclipse Public License v1.0\"\n\
* which accompanies this distribution, and is available\n\
* at the URL \"http://www.eclipse.org/legal/epl-v10.html\".\n\
*\n\
* Initial Contributors:\n\
* Nokia Corporation - initial contribution.\n\
*\n\
* Contributors:\n\
*\n\
* Description:\n\
*\n\
*/\n\n\
#include <ecom/registryinfo.rh>\n\
#include <CdlEcom.hrh>\n\
\n\
CDL_ECOM_MAIN_REG_WITH_VERSION(0x$DLLUID, $DLLVER)\n";

void CCdlTkWriteDll::WriteEcomRss() const
	{
	string dllUid = CdlTkUtil::IntToHexString(iDll.Uid()).substr(2);
	string dllVer = CdlTkUtil::IntToString(iDll.Version());
	string name = CdlTkUtil::OutputPath() + CdlTkUtil::ToLower(dllUid + ".rss");
	ofstream stream;
	CCdlTkFileCleanup tempFile;
	CdlTkUtil::OpenTempOutput(stream, tempFile);

	CdlTkUtil::CReplaceSet rssSet;
	rssSet.Add("$DLLUID", dllUid);
	rssSet.Add("$DLLVER", dllVer);
	string rss = CdlTkUtil::MultiReplace(rssSet, KEComRss);

	stream << rss;
	stream.close();

	CdlTkUtil::ExportFileIfWritable(tempFile, name);
	}

const string KEComDetailRss = "\
/*\n\
* Copyright (c) 2009 Nokia Corporation and/or its subsidiary(-ies).\n\
* All rights reserved.\n\
* This component and the accompanying materials are made available\n\
* under the terms of \"Eclipse Public License v1.0\"\n\
* which accompanies this distribution, and is available\n\
* at the URL \"http://www.eclipse.org/legal/epl-v10.html\".\n\
*\n\
* Initial Contributors:\n\
* Nokia Corporation - initial contribution.\n\
*\n\
* Contributors:\n\
*\n\
* Description:\n\
*\n\
*/\n\n\
#include <CdlEcom.rh>\n\
#include <CdlEcom.hrh>\n\
\n\
$INCLUDES\
\n\
CDL_ECOM_REG_DETAIL_START\n\
$INSTANCES\
CDL_ECOM_REG_DETAIL_END\n";

string KDetailRssInclude = "#include \"$NAME.hrh\"\n";
string KDetailRssInstance = "\tCDL_ECOM_DETAIL_IMPL($CPP_NAME)\n";

void CCdlTkWriteDll::WriteEcomDetailRss() const
	{
	string dllUid = CdlTkUtil::IntToHexString(iDll.Uid()).substr(2);
	string name = CdlTkUtil::OutputPath() + CdlTkUtil::ToLower(dllUid + "_cdl_detail.rss");
	ofstream stream;
	CCdlTkFileCleanup tempFile;
	CdlTkUtil::OpenTempOutput(stream, tempFile);

	string includes;
	string instances;
	CCdlTkDll::CInstances::const_iterator begin = iDll.Instances().begin();
	for (CCdlTkDll::CInstances::const_iterator pName = begin; pName != iDll.Instances().end(); ++pName)
		{
		string tempPName = CdlTkUtil::Replace("\r", "", *pName);
		tempPName = CdlTkUtil::Replace("\n", "", tempPName);
		string instance = (pName != begin) ? "," : "";
		instance += CdlTkUtil::Replace("$CPP_NAME", CdlTkUtil::ToCpp(tempPName), KDetailRssInstance);
		CdlTkUtil::AppendString(instances, instance);
		CdlTkUtil::AppendString(includes, CdlTkUtil::Replace("$NAME", CdlTkUtil::ToLower(tempPName), KDetailRssInclude));
		}

	CdlTkUtil::CReplaceSet rssSet;
	rssSet.Add("$INCLUDES", includes);
	rssSet.Add("$INSTANCES", instances);
	string rss = CdlTkUtil::MultiReplace(rssSet, KEComDetailRss);

	stream << rss;
	stream.close();

	CdlTkUtil::ExportFileIfWritable(tempFile, name);
	}

}	// end of namespace CdlCompilerToolkit
