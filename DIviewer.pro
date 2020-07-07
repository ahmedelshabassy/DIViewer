#-------------------------------------------------
#
# Project created by QtCreator 2019-09-16T09:36:16
#
#-------------------------------------------------

QT       += core gui
QT       += printsupport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = DIviewer
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

SOURCES += \
        DIviewer.cpp \
        main.cpp

HEADERS += \
    DIviewer.h

FORMS += \
        mainwindow.ui

INCLUDEPATH +=/home/ahmedelshabassy/dcmtk/include
LIBS+= -L /home/ahmedelshabassy/dcmtk-3.6.5-build/lib/lib -lijg12


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target





win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -lijg12
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -lijg12
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -lijg12

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libijg12.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libijg12.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/ijg12.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/ijg12.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libijg12.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -lijg16
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -lijg16
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -lijg16

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libijg16.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libijg16.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/ijg16.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/ijg16.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libijg16.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -lijg8
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -lijg8
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -lijg8

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libijg8.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libijg8.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/ijg8.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/ijg8.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libijg8.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -lofstd
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -lofstd
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -lofstd

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libofstd.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libofstd.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/ofstd.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/ofstd.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libofstd.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -loflog
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -loflog
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -loflog

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/liboflog.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/liboflog.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/oflog.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/oflog.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/liboflog.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -lcharls
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -lcharls
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -lcharls

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libcharls.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libcharls.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/charls.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/charls.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libcharls.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -ldcmdata
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -ldcmdata
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -ldcmdata

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libdcmdata.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libdcmdata.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/dcmdata.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/dcmdata.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libdcmdata.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -ldcmdsig
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -ldcmdsig
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -ldcmdsig

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libdcmdsig.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libdcmdsig.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/dcmdsig.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/dcmdsig.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libdcmdsig.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -li2d
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -li2d
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -li2d

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libi2d.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libi2d.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/i2d.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/i2d.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libi2d.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -ldcmimgle
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -ldcmimgle
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -ldcmimgle

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libdcmimgle.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libdcmimgle.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/dcmimgle.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/dcmimgle.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libdcmimgle.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -ldcmnet
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -ldcmnet
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -ldcmnet

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libdcmnet.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libdcmnet.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/dcmnet.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/dcmnet.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libdcmnet.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -ldcmiod
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -ldcmiod
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -ldcmiod

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libdcmiod.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libdcmiod.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/dcmiod.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/dcmiod.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libdcmiod.a


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -ldcmtls
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -ldcmtls
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -ldcmtls

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libdcmtls.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libdcmtls.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/dcmtls.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/dcmtls.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libdcmtls.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -ldcmimage
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -ldcmimage
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -ldcmimage

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libdcmimage.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libdcmimage.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/dcmimage.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/dcmimage.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libdcmimage.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -ldcmwlm
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -ldcmwlm
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -ldcmwlm

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libdcmwlm.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libdcmwlm.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/dcmwlm.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/dcmwlm.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libdcmwlm.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -ldcmqrdb
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -ldcmqrdb
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -ldcmqrdb

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libdcmqrdb.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libdcmqrdb.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/dcmqrdb.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/dcmqrdb.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libdcmqrdb.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -ldcmtract
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -ldcmtract
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -ldcmtract

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libdcmtract.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libdcmtract.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/dcmtract.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/dcmtract.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libdcmtract.a


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -ldcmfg
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -ldcmfg
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -ldcmfg

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libdcmfg.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libdcmfg.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/dcmfg.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/dcmfg.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libdcmfg.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -ldcmjpls
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -ldcmjpls
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -ldcmjpls

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libdcmjpls.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libdcmjpls.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/dcmjpls.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/dcmjpls.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libdcmjpls.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -ldcmjpeg
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -ldcmjpeg
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -ldcmjpeg

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libdcmjpeg.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libdcmjpeg.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/dcmjpeg.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/dcmjpeg.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libdcmjpeg.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -ldcmect
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -ldcmect
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -ldcmect

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libdcmect.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libdcmect.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/dcmect.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/dcmect.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libdcmect.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -ldcmseg
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -ldcmseg
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -ldcmseg

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libdcmseg.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libdcmseg.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/dcmseg.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/dcmseg.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libdcmseg.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -ldcmpmap
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -ldcmpmap
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -ldcmpmap

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libdcmpmap.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libdcmpmap.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/dcmpmap.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/dcmpmap.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libdcmpmap.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -ldcmsr
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -ldcmsr
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -ldcmsr

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libdcmsr.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libdcmsr.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/dcmsr.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/dcmsr.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libdcmsr.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -ldcmrt
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -ldcmrt
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -ldcmrt

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libdcmrt.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libdcmrt.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/dcmrt.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/dcmrt.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libdcmrt.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -lcmr
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -lcmr
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -lcmr

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libcmr.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libcmr.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/cmr.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/cmr.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libcmr.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/release/ -ldcmpstat
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/debug/ -ldcmpstat
else:unix: LIBS += -L$$PWD/../dcmtk-3.6.5-build/lib/ -ldcmpstat

INCLUDEPATH += $$PWD/../dcmtk-3.6.5-build
DEPENDPATH += $$PWD/../dcmtk-3.6.5-build

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/libdcmpstat.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/libdcmpstat.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/release/dcmpstat.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/debug/dcmpstat.lib
else:unix: PRE_TARGETDEPS += $$PWD/../dcmtk-3.6.5-build/lib/libdcmpstat.a
