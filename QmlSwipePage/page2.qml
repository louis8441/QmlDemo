import QtQuick 2.0

Rectangle
{
    width: 360
    height: 100
    color: "blue"
    focus: true
    Text {
        id: txt
        text: qsTr("Page2")
        anchors.fill: parent
    }
}
