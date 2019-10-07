#ifndef MYFIRSTDLL_GLOBAL_H
#define MYFIRSTDLL_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(MYFIRSTDLL_LIBRARY)
#  define MYFIRSTDLL_EXPORT Q_DECL_EXPORT
#else
#  define MYFIRSTDLL_EXPORT Q_DECL_IMPORT
#endif

#endif // MYFIRSTDLL_GLOBAL_H