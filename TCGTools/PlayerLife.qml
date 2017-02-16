import QtQuick 2.0
import QtQuick.Window 2.2

Rectangle {
    readonly property real widthFactor: 0.6;
    readonly property real heightFactor: 0.4;

    property string colour: "yellow";
    property string fontName: "Arial";
    property int initialLife: 20;

    id: playerLife;

    width: Screen.desktopAvailableWidth * widthFactor;
    height: Screen.desktopAvailableWidth * heightFactor;

    color: colour;

    Text {
        anchors.centerIn: parent;

        text: initialLife;

        font.family: fontName;

        font.pointSize: playerLife.height * 0.7;
    }

}
