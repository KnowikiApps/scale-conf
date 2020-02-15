import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.0

import "qrc:/js/utils.js" as Utils

ColumnLayout{
    spacing: 0
    FontLoader { id: sourceCodeProBlack; source: "qrc:/fonts/SourceCodePro-Black" }

    Rectangle{
        id: header
        width: window.width
        height: window.height * 0.05

        Text{
            text: "SPEAKERS"
            font.family: sourceCodeProBlack.name
            color: "#EB6C4B"

            width: header.width*0.9
            height: header.height*0.6
            anchors.right: header.right
            anchors.centerIn: parent
            verticalAlignment: Text.AlignVCenter

            fontSizeMode: Text.VerticalFit
            minimumPixelSize: 10
            font.pixelSize: 72
            font.weight: Font.ExtraBold

        }
    }

    GridView{
        id: speakerList
        width: window.width
        height: window.height
        model: speakerModel.model
        cellWidth: width/2
        cellHeight: cellWidth

        SpeakersModel{
            id: speakerModel
        }

        delegate: Rectangle{
            id: delegateRoot
            width: speakerList.cellWidth; height: speakerList.cellHeight

            Image{
                source: photo.src
                width: speakerList.cellWidth
                height: width
                fillMode: Image.PreserveAspectCrop
            }

            Rectangle{
                property string boxColor: "#1D3261"
                property string textColor: "#ffffff"

                Component.onCompleted: {
                    var rand = Utils.randomNumber(0, 4);
                    switch(rand){
                    case 0:
                        boxColor = "#E9F2F9";
                        textColor = Utils.randomNumber(0, 9) % 2 ? "#ffffff" : "#1d3561";
                        break;
                    case 1:
                        boxColor = "#8CADC8";
                        textColor = Utils.randomNumber(0, 9) % 2 ? "#ffffff" : "#1d3561";
                        break;
                    case 2:
                        boxColor = "#EB6C4B";
                        textColor = Utils.randomNumber(0, 9) % 2 ? "#ffffff" : "#1d3561";
                        break;
                    default:
                        break;
                    }
                }

                id: textBox
                width: speakerList.cellWidth * 0.5
                height: width
                anchors.bottom: delegateRoot.bottom
                anchors.right: delegateRoot.right
                color: boxColor

                Text{
                    FontLoader { id: daFont; source: "qrc:/fonts/AnonymousPro-Bold.ttf" }
                    font.family: daFont.name
                    text: name.replace(" ", "\n")
                    fontSizeMode: Text.Fit
                    width: parent.width - (parent.width*0.20); height: width
                    minimumPixelSize: 10
                    font.pixelSize: 72
                    horizontalAlignment: Text.AlignRight
                    anchors.centerIn: parent
                    font.weight: Font.ExtraBold
                    color: parent.textColor
                    wrapMode: Text.WordWrap
                }
            }
        }
    }
}
