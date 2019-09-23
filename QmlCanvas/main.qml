import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0

Window {
    visible: true
    width: 600
    height: 600
    title: qsTr("canvas")

    Row{
        id: tools

        Button{
            id: clear
            text: "clear"
            onClicked: {

            }
        }
        Button{

            id: save
            text: "save"
            onClicked: {

                }

        }

    }
}
