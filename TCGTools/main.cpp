#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "ShuffleHeaven.h"
#include <QFileSelector>
#include <QDebug>



int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);



    // Create a QML Application Engine object
    QQmlApplicationEngine engine;

    QFileSelector fileSelector;
    qDebug() << fileSelector.allSelectors();



    // Register our CPP objects to allow instantiation through QML
    qmlRegisterType<ShuffleHeaven>("ShuffleHeaven", 1, 0, "ShuffleHeaven");



    // Starting up the QML Application
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));



    // Gracefully exits the application
    return app.exec();
} // End, mate.
