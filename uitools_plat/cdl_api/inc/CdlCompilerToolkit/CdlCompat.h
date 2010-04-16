/*
* Copyright (c) 2009 Nokia Corporation and/or its subsidiary(-ies).
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
// Cdlcompat.h

#ifndef CDLCOMPAT_H
#define CDLCOMPAT_H

/* _MSC_VER for checking VC6, so that we can keep this library still compilable using `tools'. */
#if (defined(__MSVCRT__) || defined(_MSC_VER))
#define CDL_W32
#endif

// path separator
/* #ifdef CDL_W32 */
/* #define PATHSEP "\\" */
/* #define PATHSEPCHAR '\\' */
/* #else */
#define PATHSEP "/"
#define PATHSEPCHAR '/'
/* #endif */

const char FORWARDSLASH = '/';
const char BACKSLASH = '\\';

#endif
