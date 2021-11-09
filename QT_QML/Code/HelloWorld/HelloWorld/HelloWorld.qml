import QtQuick 2.9
import QtQuick.Window 2.3
import Qt.labs.settings 1.0

Window {
    id: root
    visible: true
    width: 600
    height: 600
    title: qsTr("Hello World")

    function createItem() {
            Qt.createQmlObject("import QtQuick 2.0; Rectangle { x: 100; y: 100; width: 100;
        height:100; color: \"blue\" }", root, "dynamicItem");
        }

        Component.onCompleted: root.createItem();

}
