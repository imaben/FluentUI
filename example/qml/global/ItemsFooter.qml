pragma Singleton

import QtQuick 2.15
import FluentUI 1.0

FluObject{

    property var navigationView

    id:footer_items

    FluPaneItemSeparator{}

    FluPaneItem{
        title:lang.about
        icon:FluentIcons.Contact
        onDropped: { FluApp.navigate("/about") }
        onTapListener:function(){
            FluApp.navigate("/about")
        }
    }

    FluPaneItem{
        title:lang.settings
        icon:FluentIcons.Settings
        url:"qrc:/example/qml/page/T_Settings.qml"
        onDropped:{ FluApp.navigate("/pageWindow",{title:title,url:url}) }
        onTap:{
            navigationView.push(url)
        }
    }

}
