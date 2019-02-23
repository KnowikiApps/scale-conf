import QtQuick 2.0
import QtQuick.Layouts 1.3

Grid {
    id: grid
    width: window.width
    height: window.height

    columns: 3
    spacing: 10

    Thumbnail{
        Layout.fillHeight: true
        Layout.fillWidth: true
        source: "https://1kvji02qicdj3gx383wkmt91-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2014/08/pasadena-convention-center-map.jpg"
    }
}
