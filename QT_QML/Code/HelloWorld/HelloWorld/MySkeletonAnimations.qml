//MySkeletonAnimations.qml
import QtQuick 2.0

Image {
    x: 50; y: 80
    width: 200
    height: 200
    source: "骷髅.png"

    //平移动画
    NumberAnimation on x {
        to: 500
        duration: 4000
        loops: Animation.Infinite
    }

    //旋转动画
    RotationAnimation on rotation {
        to: 360
        duration: 4000
        loops: Animation.Infinite
    }

    //透明动画
    PropertyAnimation on opacity {
        to: 0.1
        duration: 4000
        loops: Animation.Infinite
    }

    //缩小
    PropertyAnimation on scale {
        to: 0.1
        duration: 4000
        loops: Animation.Infinite
    }
}
