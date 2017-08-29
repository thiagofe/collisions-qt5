import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Dialogs 1.2

Item {

    CalcGroup {
        id: x1
        x: 10
        label1Text: "X1"
        label3Text: "cm"
    }

    CalcGroup {
        id: x2
        x: 380
        label1Text: "X2"
        label3Text: "cm"
    }

    CalcGroup {
        id: t1
        x: 10
        y: 60
        label1Text: "T1"
        label3Text: "s"
    }

    CalcGroup {
        id: t2
        x: 380
        y: 60
        label1Text: "T2"
        label3Text: "s"
    }

    CalcGroup {
        id: m1
        x: 10
        y: 180
        label1Text: "M1"
        label3Text: "kg"
    }

    CalcGroup {
        id: m2
        x: 380
        y: 180
        label1Text: "M2"
        label3Text: "kg"
    }

    Button {
        text: "Calcular"
        highlighted: true

        x: 430
        y: 240

        onClicked: {
            var x1v = x1.getValues()
            var x2v = x2.getValues()
            var t1v = t1.getValues()
            var t2v = t2.getValues()
            var m1v = m1.getValues()
            var m2v = m2.getValues()

            var all = [x1v, x2v, t1v, t2v, m1v, m2v]

            all.forEach(function (e) {
                console.log(e.a, e.b)
            })
        }
    }

    Button {
        text: "Limpar"
        highlighted: true

        x: 520
        y: 240

        onClicked: {
            x1.resetValues()
            x2.resetValues()
            t1.resetValues()
            t2.resetValues()
            m1.resetValues()
            m2.resetValues()
        }
    }

    Button {
        text: "Sobre"

        x: 620
        y: 240

        onClicked: dialog.open()
    }

    Dialog {
        id: dialog
        title: "Collisions"

        contentItem: Rectangle {
            color: "white"
            implicitWidth: 600
            implicitHeight: 300

            Text {
                text: "Irei descrever o 'sobre' ainda!"
                color: "black"
                font.pointSize: 12
                anchors.centerIn: parent

            }
        }
    }
}
