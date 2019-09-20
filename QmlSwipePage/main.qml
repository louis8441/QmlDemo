import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.2

//使用Loader呈現換頁機制

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("use <Loader> to swipe page")

    Item {
        id: item1
        width: parent.width
        height: parent.height

        Loader{
            id:pageLoader
            source: "qrc:/page1.qml"
            focus: true
        }
        Button{
            id: btn_to_swipe
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            text: "click to swipe page"
        }
        MouseArea{
            property bool isFirstClick:false
            anchors.fill: btn_to_swipe
            onClicked: {
                if( isFirstClick){
                    pageLoader.source = "qrc:/page1.qml"
                }
                else{pageLoader.source="qrc:/page2.qml"}
                isFirstClick = !isFirstClick
            }
        }
    }
}
