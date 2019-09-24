#include "myfirstdll.h"
#include <QDebug>
MyFirstDll::MyFirstDll()
{
}

void MyFirstDll::Test()
{
    qDebug() << "Hello form my DLL";
}
