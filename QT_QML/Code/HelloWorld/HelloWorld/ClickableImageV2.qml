//ClickableImageV2
import QtQuick 2.0

Item {
    id: root
    width: column.childrenRect.width
    height: column.childrenRect.height
    property alias text: label.text
    property alias source: image.source
    signal clicked

    Column {
        id: column
        Image {
            width: 150
            height: 150
            id: image
        }
        Text {
            id: label
            width: image.width
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
            color: "#111111"
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked()
    }

    property bool framed: false

    Rectangle {
        anchors.fill: parent
        color: "white"
        visible: root.framed
    }
}
