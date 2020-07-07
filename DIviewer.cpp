#include <QtGui>

#include "DIviewer.h"



QGrayColorTable::QGrayColorTable()
{
        //color table for monochroom images.
        for(unsigned int i=0; i < GRAY_LEVELS; i++) {
                m_colortable[i] = qRgb(i,i,i);
        }
}

QRgb QGrayColorTable::m_colortable[GRAY_LEVELS];



DIviewer::DIviewer(const char* filename, const unsigned long flags,
        const unsigned long fstart, const unsigned long fcount)
                :m_dicomImage(NULL)
                ,m_status(EIS_Normal)
                ,m_qimageSize(0)
                ,m_qimageBuffer(NULL)
{
        m_dicomImage = new DicomImage(filename, flags, fstart, fcount);
        m_status = m_dicomImage->getStatus();
        if(EIS_Normal == m_status) {
                m_qimageSize = m_dicomImage->getWidth() * m_dicomImage->getHeight();
                if(!m_dicomImage->isMonochrome()) {
                        /// color images needs 4 times the amount of memory (RGBA)
                        m_qimageSize = m_qimageSize * 4;
                }
                m_qimageBuffer = new uchar[m_qimageSize];
        }
}

DIviewer::~DIviewer()
{
        if(m_dicomImage) {
                delete m_dicomImage;
        }

        if(m_qimageBuffer) {
                delete[] m_qimageBuffer;
        }
}

QImage DIviewer::getOutputData(const unsigned long p_frame, const int p_planar)
{
        QImage image;
        if(EIS_Normal == m_status) {
                if (m_dicomImage->isMonochrome()) {
                        ///Monochroom images
                        m_dicomImage->setMinMaxWindow(); //??
                        m_dicomImage->getOutputData(m_qimageBuffer, m_qimageSize, IMG_DEPTH, p_frame, p_planar);
                        image = QImage(m_qimageBuffer, m_dicomImage->getWidth(), m_dicomImage->getHeight(),
                                       IMG_DEPTH, m_grayColorTable.getGrayColorTable(), QGrayColorTable::GRAY_LEVELS,
                                       QImage::BigEndian);
                } else {
                        ///color images
                        uchar* pixelData = (uchar *)(m_dicomImage->getOutputData(IMG_DEPTH, p_frame, p_planar));

                        ///transform representation from dcmtk(RGB) to qimage (RGBA)
                        unsigned long y = 0;
                        for(unsigned long x = 0; x < m_qimageSize; x+=4) {
                                m_qimageBuffer[x] = pixelData[y];     //R
                                m_qimageBuffer[x+1] = pixelData[y+1]; //G
                                m_qimageBuffer[x+2] = pixelData[y+2]; //B
                                m_qimageBuffer[x+3] = 0xFF; //Alpha
                                y += 3;
                        }
                        image = QImage(m_qimageBuffer, m_dicomImage->getWidth(), m_dicomImage->getHeight(),
                                       32, 0, 0, QImage::BigEndian);
                }
        }
        return image; ///< is ok to return, qimage supports shallow copy
}

unsigned long DIviewer::getFrameCount() const
{
        return m_DIViewer->getFrameCount();
}


QGrayColorTable DIviewer::m_grayColorTable;


/*

 DIviewer ::DIviewer()
 {
     imageLabel = new QLabel;
     imageLabel->setBackgroundRole(QPalette::Base);
     imageLabel->setSizePolicy(QSizePolicy::Ignored, QSizePolicy::Ignored);
     imageLabel->setScaledContents(true);

     scrollArea = new QScrollArea;
     scrollArea->setBackgroundRole(QPalette::Dark);
     scrollArea->setWidget(imageLabel);
     setCentralWidget(scrollArea);

     createActions();
     createMenus();

     setWindowTitle(tr("DIViewer"));
     resize(400, 400);
 }
*/
 void DIviewer::open()
 {
     QString fileName = QFileDialog::getOpenFileName(this,
                                     tr("Open File"), QDir::currentPath());
     if (!fileName.isEmpty()) {
         QImage image(fileName);
         if (image.isNull()) {
             QMessageBox::information(this, tr("Image Viewer"),
                                      tr("Cannot load %1.").arg(fileName));
             return;
         }
         imageLabel->setPixmap(QPixmap::fromImage(image));
         scaleFactor = 1.0;

         printAct->setEnabled(true);
         fitToWindowAct->setEnabled(true);
         updateActions();

         if (!fitToWindowAct->isChecked())
             imageLabel->adjustSize();
     }
 }

 void DIviewer::print()
 {
     Q_ASSERT(imageLabel->pixmap());
 #ifndef QT_NO_PRINTER

     QPrintDialog dialog(&printer, this);
     if (dialog.exec()) {
         QPainter painter(&printer);
         QRect rect = painter.viewport();
         QSize size = imageLabel->pixmap()->size();
         size.scale(rect.size(), Qt::KeepAspectRatio);
         painter.setViewport(rect.x(), rect.y(), size.width(), size.height());
         painter.setWindow(imageLabel->pixmap()->rect());
         painter.drawPixmap(0, 0, *imageLabel->pixmap());
     }
 #endif
 }

 void DIviewer::zoomIn()
 {
     scaleImage(1.5);
 }

 void DIviewer::zoomOut()
 {
     scaleImage(0.8);
 }

 void DIviewer::normalSize()
 {
     imageLabel->adjustSize();
     scaleFactor = 1.0;
 }

 void DIviewer::fitToWindow()
 {
     bool fitToWindow = fitToWindowAct->isChecked();
     scrollArea->setWidgetResizable(fitToWindow);
     if (!fitToWindow) {
         normalSize();
     }
     updateActions();
 }

 void DIviewer::about()
 {
     QMessageBox::about(this, tr("About DIviewer"),
             tr("<p>The <b>DI viewer</b> example shows how to combine QLabel "
                "and QScrollArea to display an image"));
 }

 void DIviewer::createActions()
 {
     openAct = new QAction(tr("&Open..."), this);
     openAct->setShortcut(tr("Ctrl+O"));
     connect(openAct, SIGNAL(triggered()), this, SLOT(open()));

     printAct = new QAction(tr("&Print..."), this);
     printAct->setShortcut(tr("Ctrl+P"));
     printAct->setEnabled(false);
     connect(printAct, SIGNAL(triggered()), this, SLOT(print()));

     exitAct = new QAction(tr("E&xit"), this);
     exitAct->setShortcut(tr("Ctrl+Q"));
     connect(exitAct, SIGNAL(triggered()), this, SLOT(close()));

     zoomInAct = new QAction(tr("Zoom &In (25%)"), this);
     zoomInAct->setShortcut(tr("Ctrl++"));
     zoomInAct->setEnabled(false);
     connect(zoomInAct, SIGNAL(triggered()), this, SLOT(zoomIn()));

     zoomOutAct = new QAction(tr("Zoom &Out (25%)"), this);
     zoomOutAct->setShortcut(tr("Ctrl+-"));
     zoomOutAct->setEnabled(false);
     connect(zoomOutAct, SIGNAL(triggered()), this, SLOT(zoomOut()));

     normalSizeAct = new QAction(tr("&Normal Size"), this);
     normalSizeAct->setShortcut(tr("Ctrl+S"));
     normalSizeAct->setEnabled(false);
     connect(normalSizeAct, SIGNAL(triggered()), this, SLOT(normalSize()));

     fitToWindowAct = new QAction(tr("&Fit to Window"), this);
     fitToWindowAct->setEnabled(false);
     fitToWindowAct->setCheckable(true);
     fitToWindowAct->setShortcut(tr("Ctrl+F"));
     connect(fitToWindowAct, SIGNAL(triggered()), this, SLOT(fitToWindow()));

     aboutAct = new QAction(tr("&About"), this);
     connect(aboutAct, SIGNAL(triggered()), this, SLOT(about()));

     aboutQtAct = new QAction(tr("About &Qt"), this);
     connect(aboutQtAct, SIGNAL(triggered()), qApp, SLOT(aboutQt()));
 }

 void DIviewer::createMenus()
 {
     fileMenu = new QMenu(tr("&File"), this);
     fileMenu->addAction(openAct);
     fileMenu->addAction(printAct);
     fileMenu->addSeparator();
     fileMenu->addAction(exitAct);

     viewMenu = new QMenu(tr("&View"), this);
     viewMenu->addAction(zoomInAct);
     viewMenu->addAction(zoomOutAct);
     viewMenu->addAction(normalSizeAct);
     viewMenu->addSeparator();
     viewMenu->addAction(fitToWindowAct);

     helpMenu = new QMenu(tr("&Help"), this);
     helpMenu->addAction(aboutAct);
     helpMenu->addAction(aboutQtAct);

     menuBar()->addMenu(fileMenu);
     menuBar()->addMenu(viewMenu);
     menuBar()->addMenu(helpMenu);
 }

 void DIviewer::updateActions()
 {
     zoomInAct->setEnabled(!fitToWindowAct->isChecked());
     zoomOutAct->setEnabled(!fitToWindowAct->isChecked());
     normalSizeAct->setEnabled(!fitToWindowAct->isChecked());
 }

 void DIviewer ::scaleImage(double factor)
 {
     Q_ASSERT(imageLabel->pixmap());
     scaleFactor *= factor;
     imageLabel->resize(scaleFactor * imageLabel->pixmap()->size());

     adjustScrollBar(scrollArea->horizontalScrollBar(), factor);
     adjustScrollBar(scrollArea->verticalScrollBar(), factor);

     zoomInAct->setEnabled(scaleFactor < 5.0);
     zoomOutAct->setEnabled(scaleFactor > 0.005);
 }

 void DIviewer::adjustScrollBar(QScrollBar *scrollBar, double factor)
 {
     scrollBar ->setValue(int(factor * scrollBar->value()
                             + ((factor - 1) * scrollBar->pageStep()/2)));
 }
