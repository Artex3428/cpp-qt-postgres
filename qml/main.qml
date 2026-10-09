import QtQuick
import QtQuick.Window

Window {
    width: 900
    height: 600

    visible: true
    title: "My App"

    Rectangle {
        anchors.fill: parent
        color: "#181818"

        Text {
            anchors.centerIn: parent
            text: "It works!"
            color: "white"
            font.pixelSize: 32
        }
    }
}