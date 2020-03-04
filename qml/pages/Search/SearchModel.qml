import QtQuick 2.0

import '../components/JSONListModel'

JSONListModel {
    id: jsonModel
    source: "http://scale.designcollaborate.com:3000/events/"
}
