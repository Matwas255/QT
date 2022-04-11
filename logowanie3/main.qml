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

LoginScreen{
anchors.fill:parent
}
}
