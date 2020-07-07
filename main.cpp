

#include <QApplication>

 #include "DIviewer.h"

 int main(int argc, char *argv[])
 {


     QApplication app(argc, argv);
   DIviewer dIviewer;
 #if defined(Q_OS_SYMBIAN)
     imageViewer.showMaximized();
 #else
     dIviewer.show();
 #endif
     return app.exec();
 }
