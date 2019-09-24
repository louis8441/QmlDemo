#include <QCoreApplication>
#include "myfirstlib.h"
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    MyFirstLib cLib;
    cLib.Test();

    return a.exec();
}
