//RedGreenLight.qml
import QtQuick 2.0

Rectangle {
    id: light
    width: 150
    height: 300
    color: "darkgray"

    Rectangle {
        id: light1
        width: 100
        height: width
        radius: width/2

        x: 25; y: 25

        color: "black"
    }

    Rectangle {
        id: light2
        width: 100
        height: width
        radius: width/2

        x: 25; y: 200-25

        color: "black"
    }

    state: "stop"

    states: [
        State {
            name: "stop"
            PropertyChanges {
                target: light1
                color: "red"
            }
            PropertyChanges {
                target: light2
                color: "black"
            }
        },
        State {
            name: "go"
            PropertyChanges {
                target: light1
                color: "black"
            }
            PropertyChanges {
                target: light2
                color: "green"
            }
        }
    ]

    transitions: [
        Transition {
            from: "stop"; to: "go"
            ColorAnimation { target: light1; properties: "color"; duration: 2000 }
            ColorAnimation { target: light2; properties: "color"; duration: 2000 }
        },
        Transition {
            from: "go"; to: "stop"
            ColorAnimation { target: light1; properties: "color"; duration: 2000 }
            ColorAnimation { target: light2; properties: "color"; duration: 2000 }
        }
    ]


    MouseArea {
        anchors.fill: parent
        onClicked: parent.state = (parent.state == "stop"?"go":"stop")
    }
}
