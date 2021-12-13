#-------------------------------------------------
#
# Project created by QtCreator 2015-06-17T10:02:53
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = qt5glew
TEMPLATE = app


SOURCES += main.cpp\
        widget.cpp

HEADERS  += widget.h

macx: LIBS += -L$$PWD/glew/2.2.0_1/lib/ -lGLEW.2.2.0

INCLUDEPATH += $$PWD/glew/2.2.0_1/include
DEPENDPATH += $$PWD/glew/2.2.0_1/include

#Not work if  USE_METAL announced.
#CONFIG += USE_METAL

USE_METAL{
mac: LIBS += "-F$$PWD/Frameworks"
mac: LIBS += -framework MetalANGLE

mac: QMAKE_CFLAGS += -F$$_PRO_FILE_PWD_/Frameworks
mac: QMAKE_CXXFLAGS += -F$$_PRO_FILE_PWD_/Frameworks
mac: QMAKE_RPATHDIR += $$_PRO_FILE_PWD_/Frameworks

mac: INCLUDEPATH += $$PWD/Frameworks/MetalANGLE.framework/Headers
}
