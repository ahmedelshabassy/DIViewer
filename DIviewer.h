#ifndef MAINWINDOW_H
#define MAINWINDOW_H


#include  <QMainWindow>
#include  <QLabel>
#include  <QScrollArea>
#include  <QImage>
#include  <QDialog>
#include  <QAction>
#include  <QtPrintSupport/QPrinter>
#include  <QMenu>
#include  <QMenuBar>
#include  <QMessageBox>
#include  <QScrollBar>
#include  <QFileDialog>
#include  <QString>
#include  <QtPrintSupport/QPrintDialog>


#include "dcmtk/config/arith.h"
#include "dcmtk/config/osconfig.h"
#include "dcmtk/dcmdata/cmdlnarg.h"
#include "dcmtk/dcmdata/dcbytstr.h"
#include "dcmtk/dcmdata/dcchrstr.h"
#include "dcmtk/dcmdata/dccodec.h"
#include "dcmtk/dcmdata/dcdatset.h"
#include "qimage.h"
#include <dcmtk/ofstd/ofstring.h>
#include <dcmtk/ofstd/ofconsol.h>
#include <dcmtk/dcmdata/dcdeftag.h>
#include <dcmtk/dcmdata/dcfilefo.h>
#include <dcmtk/dcmimgle/dcmimage.h>
#include "dcmtk/dcmimage/diregist.h"
#include "dcmtk/dcmjpeg/djdecode.h"

class QAction;
class QLabel;
class QMenu;
class QScrollArea;
class QScrollBar;



class QGrayColorTable
{
    public:
        static const unsigned int GRAY_LEVELS = 256;
        QGrayColorTable();
        virtual ~QGrayColorTable() {}

        QRgb* getGrayColorTable() { return m_colortable; }
    private:
        static QRgb m_colortable[GRAY_LEVELS];




 class DIviewer : public QMainWindow
 {



 public:


     DIviewer(const char* filename, const unsigned long flags=0,
                         const unsigned long fstart=0, const unsigned long fcount=0);
             virtual ~DIviewer();
             QImage getOutputData(const unsigned long p_frame=0, const int p_planar=0);
             unsigned long getFrameCount() const;

 private slots:
     void open();
//     void saveAs();
     void print();
//     void copy();
//     void paste();
     void zoomIn();
     void zoomOut();
     void normalSize();
     void fitToWindow();
     void about();

 private:

     void createActions();
     void createMenus();
     void updateActions();
     bool saveFile(const QString &fileName);
     void setImage(const QImage &newImage);
     void scaleImage(double factor);
     void adjustScrollBar(QScrollBar *scrollBar, double factor);


     ///Dcmtk attributes
             DicomImage* m_dicomImage;
             EI_Status m_status;

             ///Qt related attributes
             static QGrayColorTable m_grayColorTable;
             static const int IMG_DEPTH = 8;
             unsigned long m_qimageSize;
             ///Image buffer is maintained by this class instead of dcmtk or qt.
             ///It is to prevent create/delete of buffer for every frame in case
             ///of a multi frame dicom file.
             uchar* m_qimageBuffer;


     QImage image;
     QLabel *imageLabel;
     QScrollArea *scrollArea;
     double scaleFactor;

 #ifndef QT_NO_PRINTER
     QPrinter printer;
 #endif

     QAction *openAct;
     QAction *saveAsAct;
     QAction *printAct;
     QAction *copyAct;
     QAction *exitAct;
     QAction *zoomInAct;
     QAction *zoomOutAct;
     QAction *normalSizeAct;
     QAction *fitToWindowAct;
     QAction *aboutAct;
     QAction *aboutQtAct;

     QMenu *fileMenu;
     QMenu *viewMenu;
     QMenu *helpMenu;
 };
};

 #endif

