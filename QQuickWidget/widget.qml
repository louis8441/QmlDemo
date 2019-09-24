import QtQuick 2.0

Item {
    width: 500
    height: 500
    Component.onCompleted: {
        myLV.model.append({myColor:'#FFFFBB', myText:'Hello'});
        myLV.model.append({myColor:'#CCFF99', myText:'Qml'});
         myLV.model.append({myColor:'#BBFFEE', myText:'With'});
         myLV.model.append({myColor:'#99FFFF', myText:'Qwidget'});
         myLV.model.append({myColor:'#CCDDFF', myText:'Haha'});

    }
    ListView{
        id:myLV
        anchors.fill:parent
        model: ListModel{}
        delegate: Rectangle{
            width: parent.width
            height: 60
            color: myColor
            Text {
                anchors.centerIn: parent
                text: myText
                color: "White"
                font.pointSize: 36
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    mainWidget.printTextColor(myText);
                }
            }
        }
    }

}
