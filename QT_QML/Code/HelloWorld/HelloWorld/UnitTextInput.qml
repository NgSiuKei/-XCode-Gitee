//UnitTextInput.qml
import QtQuick 2.0

FocusScope {
    width: 100
    height: 20

    Rectangle {
        anchors.fill: parent
        color: "honeydew"
        border.color: "black"
    }

    property alias text: input.text
    property alias input: input

    TextInput {
        id: input
        anchors.fill: parent
        anchors.margins: 5
        focus: true
    }
}
