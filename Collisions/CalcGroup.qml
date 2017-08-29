import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    property string label1Text: ""
    property string label3Text: ""
    property alias varA: a
    property alias varB: b

    Row {

        Text {
            text: "<br>" + label1Text + " ( "
            font.pointSize: 12
            Layout.fillHeight: true
        }

        TextField {
            id: a
            placeholderText: ""
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignBottom
            inputMethodHints: Qt.ImhFormattedNumbersOnly
            padding: 5
            Layout.fillWidth: true

            validator: DoubleValidator {}
        }

        Text {
            text: "<br>±"
            font.pointSize: 10
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }

        TextField {
            id: b
            placeholderText: ""
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignBottom
            inputMethodHints: Qt.ImhFormattedNumbersOnly
            padding: 5
            Layout.fillWidth: true

            validator: DoubleValidator {}
        }

        Text {
            text: "<br> ) " + label3Text
            font.pointSize: 12
            Layout.fillHeight: true
        }
    }

    function getValues() {
        return {a: Number(a.text), b: Number(b.text)}
    }

    function resetValues() {
        a.text = ""
        b.text = ""
    }
}
