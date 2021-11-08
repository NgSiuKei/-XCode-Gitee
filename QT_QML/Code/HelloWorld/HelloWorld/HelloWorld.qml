import QtQuick 2.9
import QtQuick.Window 2.3

Window {
    id: root
    visible: true
    width: 600
    height: 600
    title: qsTr("Hello World")

    Rectangle {
        width: 240
        height: 300
        color: "white"
        GridView {
            anchors.fill: parent
            anchors.margins: 20
            clip: true
            model: 100
            cellWidth: 45
            cellHeight: 45
            delegate: numberDelegate
            highlight: highlightComponent
            focus: true
        }
        Component {
                id: highlightComponent
                Rectangle {
                    width: ListView.view.width
                    color: "lightGreen"
                }
            }
        Component {
                id: numberDelegate
                Item {
                    width: 40
                    height: 40
                    Text {
                        anchors.centerIn: parent
                        font.pixelSize: 10
                        text: index
                    }
                }
            }
    }
}
