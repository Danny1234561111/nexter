import QtQuick
import Felgo

import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2
Page{    id:root
        property alias backgroundColor:back_fon.color
        property alias buttonText:batton_nav.text
        property alias button3: back
        signal buttonClicked();
        Row {
            id: header
            height: 100
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            spacing: 10
            Button {
                id: back
                text: "<-Назад"
                onClicked: {
                    back.buttonClicked()
                }            }
        }
        background: Rectangle{
            id:back_fon
        }
        Button {
            id:batton_nav
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.margins: defMargin // look into main.qml
            onClicked: {
                root.buttonClicked()            }
        }
}

