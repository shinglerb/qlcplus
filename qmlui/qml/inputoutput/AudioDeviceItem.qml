/*
  Q Light Controller Plus
  AudioDeviceItem.qml

  Copyright (c) Massimo Callegari

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0.txt

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
*/

import QtQuick 2.0

Rectangle
{
    width: parent.width
    height: 80
    color: "transparent"

    property var audioDevice
    property string deviceName: audioDevice ? audioDevice.name : ""
    property string privateName: audioDevice ? audioDevice.privateName : ""

    Rectangle
    {
        id: deviceBox
        width: parent.width
        height: parent.height
        z: 1
        radius: 3
        gradient: Gradient
        {
            id: bgGradient
            GradientStop { position: 0.75 ; color: "#999" }
            GradientStop { position: 1 ; color: "#333" }
        }
        border.width: 2
        border.color: "#111"

        Row
        {
            x: 8
            spacing: 3
            Image
            {
                id: deviceIcon
                y: 2
                height: deviceBox.height - 6
                width: height
                source: "qrc:/audiocard.svg"
                sourceSize: Qt.size(width, height)
                fillMode: Image.Stretch
            }
            RobotoText
            {
                height: deviceBox.height
                width: deviceBox.width - deviceIcon.width - 6
                label: deviceName
                labelColor: "black"
                wrapText: true
            }
        }
    }
}
