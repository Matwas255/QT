import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.2


 Item{
     NumberAnimation on opacity {to: 0; duration: 2000; id: zanikanie; running: false}

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
                id: login
            }

            Text {
                text: 'Haslo'
                font.pointSize: 30
                anchors.horizontalCenter: parent.horizontalCenter
                topPadding: 20
            }

            TextField{
                echoMode : TextInput.Password
                placeholderText: 'Wpisz haslo'
                font.pointSize: 15
                anchors.horizontalCenter: parent.horizontalCenter
                width: 300
                height: 50
                id: haslo
            }

            Button{
            text: 'Zaloguj'
            anchors.horizontalCenter: parent.horizontalCenter
            width: 300
            height: 50
            onClicked:
            {
                if (login.displayText === "matwas" && haslo.text === "1234")
                {
                    zanikanie.running = true
                    zalogowano.opacity = 100
                    zalogowano.text = "Zalogowano"

                }
                else
                {
                    zalogowano.opacity = 100
                    zalogowano.text = "Nie zalogowano"
                }

            }

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

            Text
            {
                opacity: 0
                text: 'Zalogowano'
                anchors.horizontalCenter: parent.horizontalCenter
                id: zalogowano
                font.pointSize: 15
            }
        }
    }
