import QtQuick 2.12
import QtQuick.Controls 2.8
import QtQuick.Layouts 1.8

import "qrc:/js/nav.js" as NavHelper
import "qrc:/js/database.js" as Database
import "qrc:/js/feed.js" as Feed
import "qrc:/js/utils.js" as Utils

ColumnLayout {
    spacing: 4

    FontLoader {
        id: anonymousProBold
        source: "qrc:/fonts/AnonymousPro-Bold.ttf"
    }

    FontLoader {
        id: anonymousProRegular
        source: "qrc:/fonts/AnonymousPro-Regular.ttf"
    }

    FontLoader {
        id: sourceCodeProBlack
        source: "qrc:/fonts/SourceCodePro-Black.ttf"
    }

    TextInput{
        id: searchBar
        text: "Text"
//        height: window.height * 0.1
//        width: window.width

    }

    SearchModel {
        id: searchModel
    }

    ListView {
        id: schedule
        width: window.width
        height: window.height - parent.spacing*1.75
        model: searchModel.model

        delegate: Rectangle {
            height: isRowVis()? searchBar.height : 0
            width: searchBar.width

            visible: isRowVis()

            Text{
                text: title
            }

            function isRowVis(){
                return Utils.searchText(searchBar.text, title);
//                return Utils.searchText(speakers.toString().replace(',', ' '))
//                        || Utils.searchText(title) || Utils.searchText(topic)
//                        || Utils.searchText(shortAbstract);
            }
        }
    }
}
