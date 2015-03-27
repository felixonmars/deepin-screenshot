import QtQuick 2.1
import QtGraphicalEffects 1.0
import Deepin.Widgets 1.0
import QtQuick.Window 2.1

DWindow {
    x: (Screen.desktopAvailableWidth - width) / 2
    y: (Screen.desktopAvailableHeight - height) / 2
    width: effect.width
    height: effect.height
    flags: Qt.Popup
    color: "transparent"
    shadowWidth: (width - content.width) / 2

    DRectangularGlow {
        id: effect
        glowRadius: 8.0
        spread: 0
        color: Qt.rgba(0, 0, 0, 0.6)

        anchors.fill: content
    }

    Rectangle {
        id: content
        width: 980
        height: 560
        radius: 3
        color: Qt.rgba(0, 0, 0, 0.8)
        border.width: 1
        border.color: Qt.rgba(1, 1, 1, 0.6)

        anchors.centerIn: parent

        Item {
            anchors.fill: parent
            anchors.margins: { 50, 50, 50, 50}

            Row {
                height: parent.height

                Column {
                    spacing: 30

                    ShortcutsSection {
                        title: dsTr("Start/Screenshot")

                        ShortcutsLabel {
                            title: dsTr("Quick start")
                            shortcut: "Ctrl+Alt+A"
                        }
                        ShortcutsLabel {
                            title: dsTr("Full screenshot")
                            shortcut: "Print"
                        }
                        ShortcutsLabel {
                            title: dsTr("Delay screenshot")
                            shortcut: "Ctrl+Print"
                        }
                        ShortcutsLabel {
                            title: dsTr("Smart identifying window")
                            shortcut: "Ctrl+Alt+Print"
                        }
                        ShortcutsLabel {
                            title: dsTr("Exit")
                            shortcut: "Esc"
                        }
                    }

                    ShortcutsSection {
                        title: dsTr("Save/Share")

                        ShortcutsLabel {
                            title: dsTr("Save")
                            shortcut: "Ctrl+S"
                        }
                        ShortcutsLabel {
                            title: dsTr("Share")
                            shortcut: "Ctrl+Enter"
                        }
                    }
                }

                Column {
                    ShortcutsSection {
                        title: dsTr("Painting")

                        ShortcutsLabel {
                            title: dsTr("Rectangle")
                            shortcut: "Alt+1"
                        }
                        ShortcutsLabel {
                            title: dsTr("Ellipse")
                            shortcut: "Alt+2"
                        }
                        ShortcutsLabel {
                            title: dsTr("Arrow")
                            shortcut: "Alt+3"
                        }
                        ShortcutsLabel {
                            title: dsTr("Brush")
                            shortcut: "Alt+4"
                        }
                        ShortcutsLabel {
                            title: dsTr("Text")
                            shortcut: "Alt+5"
                        }
                        ShortcutsLabel {
                            title: dsTr("Color")
                            shortcut: "Alt+6"
                        }

                    }
                }

                Column {
                    ShortcutsSection {
                        title: dsTr("Size Adjustment")

                        ShortcutsLabel {
                            title: dsTr("Adjust height up")
                            shortcut: "Ctrl+Up"
                        }

                        ShortcutsLabel {
                            title: dsTr("Adjust height down")
                            shortcut: "Ctrl+Down"
                        }

                        ShortcutsLabel {
                            title: dsTr("Adjust width left")
                            shortcut: "Ctrl+Left"
                        }

                        ShortcutsLabel {
                            title: dsTr("Adjust width right")
                            shortcut: "Ctrl+Right"
                        }
                    }
                }
            }
        }
    }
}
