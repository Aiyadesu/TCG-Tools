import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Window 2.2
import ShuffleHeaven 1.0



ApplicationWindow {
    /* Application Properties */
    readonly property int minWIDTH:     1280;
    readonly property int minHEIGHT:    720;

    readonly property int maxWIDTH:     1920;
    readonly property int maxHEIGHT:    1080;

    visible: true;

    visibility: Window.Maximized;

    minimumWidth:   minWIDTH;
    minimumHeight:  minHEIGHT;
    maximumWidth:   maxWIDTH;
    maximumHeight:  maxHEIGHT;

    title: qsTr("TCG Tools");
    /* End Application Properties */



    /* "Global" Objects */
    TextMetrics {
        // Fuck off for now
    }

    // A random number generator object
    ShuffleHeaven {
        id: trng;
    }
    /* End "Global" Objects */



    /* Navigational View */
    StackView {
        id: stackView;

        initialItem: homeScreen;

        anchors.fill: parent;

        Component {
            id: homeScreen;

            Rectangle {
                id: dicks;

                anchors.fill: parent;

                color: "red";
            }


        }
    }
}
