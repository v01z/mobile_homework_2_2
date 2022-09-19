import QtQuick 2.15
import QtQuick.Window 2.15

Window
{
    width: 330
    height: 330

    maximumHeight: height
    maximumWidth: width
    minimumHeight: height
    minimumWidth: width

    visible: true
    title: qsTr("Homework_2_part_2")

    function get_random_color()
    {
        return '#' + (0x1000000 + Math.random() * 0xFFFFFF).toString(16).substr(1,6)
    }

    Rectangle
    {
        width: parent.width/1.5
        height: parent.height/1.5
        anchors.centerIn: parent
        color: "green"


        MouseArea
        {
            anchors.fill: parent
            acceptedButtons: Qt.AllButtons

            onClicked:
            {
                parent.color = get_random_color()
            }
            onDoubleClicked:
            {
                if(mouse.button == Qt.LeftButton)
                    parent.radius = parent.height / 2
                else
                    parent.radius = 0
            }
        }
    }
}
