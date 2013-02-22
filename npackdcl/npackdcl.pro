# -------------------------------------------------
# Project created by QtCreator 2010-11-21T18:29:49
# -------------------------------------------------
QT += xml sql
QT -= gui
TARGET = npackdcl
CONFIG += console
CONFIG -= app_bundle
TEMPLATE = app
RC_FILE = npackdcl.rc
LIBS += -lquazip \
    -lole32 \
    -luuid \
    -lwininet \
    -lpsapi \
    -lversion \
    -lmsi
SOURCES += main.cpp \
    ../wpmcpp/repository.cpp \
    ../wpmcpp/version.cpp \
    ../wpmcpp/packageversionfile.cpp \
    ../wpmcpp/package.cpp \
    ../wpmcpp/packageversion.cpp \
    ../wpmcpp/job.cpp \
    ../wpmcpp/installoperation.cpp \
    ../wpmcpp/dependency.cpp \
    ../wpmcpp/wpmutils.cpp \
    ../wpmcpp/downloader.cpp \
    ../wpmcpp/license.cpp \
    ../wpmcpp/windowsregistry.cpp \
    ../wpmcpp/detectfile.cpp \
    app.cpp \
    ../wpmcpp/commandline.cpp \
    ../wpmcpp/xmlutils.cpp \
    ../wpmcpp/installedpackages.cpp \
    ../wpmcpp/installedpackageversion.cpp \
    ../wpmcpp/clprogress.cpp
HEADERS += ../wpmcpp/repository.h \
    ../wpmcpp/version.h \
    ../wpmcpp/packageversionfile.h \
    ../wpmcpp/package.h \
    ../wpmcpp/packageversion.h \
    ../wpmcpp/job.h \
    ../wpmcpp/installoperation.h \
    ../wpmcpp/dependency.h \
    ../wpmcpp/wpmutils.h \
    ../wpmcpp/downloader.h \
    ../wpmcpp/license.h \
    ../wpmcpp/windowsregistry.h \
    ../wpmcpp/detectfile.h \
    app.h \
    ../wpmcpp/installedpackages.h \
    ../wpmcpp/installedpackageversion.h \
    ../wpmcpp/commandline.h \
    ../wpmcpp/xmlutils.h \
    ../wpmcpp/clprogress.h
FORMS += 

CONFIG += static

DEFINES+=QUAZIP_STATIC=1
INCLUDEPATH+=$$[QT_INSTALL_PREFIX]/src/3rdparty/zlib

QMAKE_CXXFLAGS += -static-libstdc++ -static-libgcc -Werror
QMAKE_LFLAGS += -static

QMAKE_LFLAGS_RELEASE += -Wl,-Map,npackdcl_release.map
