include(qtmediahub-core/.cache-cow.pri)
BASE_NAME=$$PWD/qtmediahub-core

TEMPLATE = subdirs
SUBDIRS = qtmediahub-core \
          apps/demolition/qml-box2d/box2d.pro

OTHER_FILES += \
    qtc_packaging/debian_harmattan/rules \
    qtc_packaging/debian_harmattan/README \
    qtc_packaging/debian_harmattan/copyright \
    qtc_packaging/debian_harmattan/control \
    qtc_packaging/debian_harmattan/compat \
    qtc_packaging/debian_harmattan/changelog
