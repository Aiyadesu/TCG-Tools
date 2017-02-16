import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Window 2.2
import ShuffleHeaven 1.0



ApplicationWindow {
    /* Application Properties */
    visible: true;

    width:  Screen.desktopAvailableWidth;
    height: Screen.desktopAvailableHeight;

    title: qsTr("TCG Tools");
    /* End Application Properties */



    /* "Global" Objects */
    TextMetrics {
        readonly property string fontCOMICSANS: "Comic Sans MS";

        readonly property real sizeDEFAULT:     14;

        id: textMetrics;

        font.family: fontCOMICSANS;
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
                id: home;


                anchors.fill: parent;

                color: "green";

                Rectangle {
                    id: test;

                    color: "red";
                    width: 100;
                    height: 100;

                    anchors.centerIn: parent;


                    Text {
                        property int test: 420;

                        anchors.centerIn: parent;
                        id: testText;

                        text: "200";

                        color: "black";

                        font.family: textMetrics.font.family;

                        Component.onCompleted: {
                            testText.text = testText.test;
                            console.log("This is a test", test);
                            console.log("a random number is: ", trng.genOddsOrEvens());

                        }
                    }

                    Text {
                        anchors.top: testText.bottom;

                        id: text2;

                        color: "yellow";

                        text:  trng.genNumber(0, 2);

                        font.family: textMetrics.font.family;
                    }

                    MouseArea {
                        anchors.fill: parent;

                        onClicked: {
                            test.color = "blue";
                            testText.text = trng.genNumber(0, 2);



                        }
                    }


                }


                PlayerLife {

                    fontName: textMetrics.font.family;

                    rotation: 180;

                    anchors {
                        top: parent.top;
                        topMargin: Screen.desktopAvailableHeight * 0.1;
                        horizontalCenter: parent.horizontalCenter;
                    }
                }

                PlayerLife {
                    fontName: textMetrics.font.family;

                    anchors{
                        bottom: parent.bottom;
                        bottomMargin: Screen.desktopAvailableHeight * 0.1;
                        horizontalCenter: parent.horizontalCenter;
                    }
                }

            }
        }
    }
}
