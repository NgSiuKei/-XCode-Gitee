import QtQuick 2.9
import QtQuick.Window 2.3

Window {
    id: root
    visible: true
    width: 800
    height: 800
    title: qsTr("Hello World")

    Column {
        id: row
        anchors.centerIn: parent
        spacing: 5 //元素间隔

        RectangleBlue { }
        RectangleGreen { }
        RectangleRed { }
    }

}
