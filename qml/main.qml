import QtQuick
import QtQuick.Controls

ApplicationWindow {
    width: 800
    height: 500

    visible: true

    title: "MyApp"

    Rectangle {
        anchors.fill: parent
        color: "#16181d"

        Column {
            anchors.centerIn: parent
            spacing: 24

            Text {
                anchors.horizontalCenter: parent.horizontalCenter

                text: "My first C++ application"
                color: "white"

                font.pixelSize: 32
                font.bold: true
            }

            Text {
                anchors.horizontalCenter: parent.horizontalCenter

                text: "C++ + Qt Quick + QML"
                color: "#aeb4c0"

                font.pixelSize: 18
            }

            Button {
                anchors.horizontalCenter: parent.horizontalCenter

                text: "Test C++ Backend"

                onClicked: {
                    backend.buttonClicked()
                }
            }

            Text {
                anchors.horizontalCenter: parent.horizontalCenter

                text: "Click count: " + backend.clickCount
                color: "white"

                font.pixelSize: 20
            }
        }
    }
}