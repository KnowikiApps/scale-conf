import QtQuick 2.0

Rectangle {
    property string source: ""

    width: (parent.width - parent.spacing)/parent.columns
    height: width

    border.color: "black"
    border.width: 2

    Image {
        id: img
        height: parent.height - txt.height
        width: height
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
        source: parent.source
    }

    Text{
        id: txt
        text: "Convention Center"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        anchors.top: img.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
