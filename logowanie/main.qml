import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.2

Window {
    width: 800
    height: 800
    visible: true
    title: qsTr("Hello World")
    color: 'pink'

    Column{
        width: 700
        height: 700
        spacing: 20
        anchors.centerIn: parent
        anchors.verticalCenter:parent.verticalCenter

        Text {
            text: 'Login'
            font.pointSize: 30
            anchors.horizontalCenter: parent.horizontalCenter
        }

        TextField{
            placeholderText: 'wpisz login'
            font.pointSize: 15
            anchors.horizontalCenter: parent.horizontalCenter
            width: 300
            height: 50
        }

        Text {
            text: 'Haslo'
            font.pointSize: 30
            anchors.horizontalCenter: parent.horizontalCenter
            topPadding: 20
        }

        TextField{
            placeholderText: 'wpisz haslo'
            font.pointSize: 15
            anchors.horizontalCenter: parent.horizontalCenter
            width: 300
            height: 50
        }

        Button{
        text: 'Zaloguj'
        anchors.horizontalCenter: parent.horizontalCenter
        width: 300
        height: 50
        style: ButtonStyle {
              label: Text {
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Helvetica"
                font.pointSize: 15
                color: "black"
                text: control.text
              }
            }
        }
    }
}
