QT += widgets

TEMPLATE = lib
CONFIG += staticlib static_runtime

CONFIG += c++11 plugin static

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    enumlistmodel.cpp \
    enumpropertytreeitem.cpp \
    flagpropertytreeitem.cpp \
    pointpropertytreeitem.cpp \
    propertyeditor.cpp \
    propertygrouptreeitem.cpp \
    propertymodel.cpp \
    propertytreedelegate.cpp \
    propertytreeitem.cpp \
    propertytreeview.cpp \
    rectpropertytreeitem.cpp

HEADERS += \
    enumlistmodel.h \
    enumpropertytreeitem.h \
    flagpropertytreeitem.h \
    pointpropertytreeitem.h \
    propertyeditor.h \
    propertygrouptreeitem.h \
    propertymodel.h \
    propertytreedelegate.h \
    propertytreeitem.h \
    propertytreeview.h \
    rectpropertytreeitem.h

# Default rules for deployment.
unix {
    target.path = $$[QT_INSTALL_PLUGINS]/generic
}
!isEmpty(target.path): INSTALLS += target
