#include <QCoreApplication>
#include "myfirstdll.h"
#include <QtDebug>
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    MyFirstDll cLib;
    cLib.Test();

    return a.exec();
}
