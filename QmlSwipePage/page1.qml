import QtQuick 2.0
import QtQuick.Controls 2.2

Rectangle{
    id:rect0
    width: 640
    height: 480
    color: "lightgreen"

    Rectangle{
        id: rect1
        width: 360
        height: 360
        color: "#AAAAAA"

        states: [
            State {
                name: "CLICKED"
                AnchorChanges {
                    target: rect1
                    anchors.horizontalCenter:rect0.horizontalCenter
                    anchors.bottom: rect0.bottom
                }
                PropertyChanges {
                    target: rect1
                    color:"#FFFF77"
                    rotation:360
                }
            }
        ]

        transitions: [
            Transition {
                SequentialAnimation{
                }
                AnchorAnimation{duration: 1200; easing.type: Easing.OutBounce}
                RotationAnimation{duration: 1200; easing.type:Easing.OutCirc}
                ColorAnimation {duration: 1000}
                PauseAnimation {duration: 500}
            }
        ]
        Column{
            anchors.centerIn: parent
            Text {
                id: text1
                color: "blue"
                font.pointSize: 24
                text: qsTr("I'm a text")
            }
            Button{
                id:btn1
                text:qsTr("I'm a btn")
            }
            Image {
                id: img1
                width: 150
                height: 150
                source: "file:/D:/mirdcuser/Documents/GitHub/FirstQmlApp/f1.png"
            }
        }

    }

    MouseArea{
        anchors.fill: rect1
        onClicked: {
            rect1.state = "CLICKED"
        }
    }
}
