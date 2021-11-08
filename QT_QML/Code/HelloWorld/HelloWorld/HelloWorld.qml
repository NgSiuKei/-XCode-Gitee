import QtQuick 2.9
import QtQuick.Window 2.3

Window {
    id: root
    visible: true
    width: 600
    height: 600
    title: qsTr("Hello World")

    RedGreenLight {
        x: 300
        y: 100
    }
}
