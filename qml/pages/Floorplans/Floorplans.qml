import QtQuick 2.0
import QtQuick.Layouts 1.3

Grid {
    id: grid
    width: window.width
    height: window.height

    columns: 3
    spacing: 10

    Rectangle {
        width: (parent.width - parent.spacing)/parent.columns
        height: width
        Layout.fillHeight: true
        Layout.fillWidth: true
//        Layout.columnSpan: 1
//        Layout.rowSpan: 1

        border.color: "black"
        border.width: 2
        Image {
            id: img
            height: parent.height - txt.height
            width: height
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit

            source: "https://1kvji02qicdj3gx383wkmt91-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2014/08/pasadena-convention-center-map.jpg"
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
}
