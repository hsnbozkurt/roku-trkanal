
' ********** Copyright 2016 Roku Corp.  All Rights Reserved. **********

sub init()
    m.count = 0
    m.AdTimer = m.top.findNode("AdTimer")
    m.Video = m.top.findNode("Video")
    m.RowList = m.top.findNode("RowList")
    m.BottomBar = m.top.findNode("BottomBar")
    m.ShowBar = m.top.findNode("ShowBar")
    m.HideBar = m.top.findNode("HideBar")
    m.Hint = m.top.findNode("Hint")
    m.Timer = m.top.findNode("Timer")

    m.Hint.font.size = "20"
    showHint()

    m.array = loadConfig()
    m.LoadTask = createObject("roSGNode", "LoadATVTask")
    m.LoadTask.observeField("content", "rowListContentChanged") ' 'content' değiştiğinde bir fonksiyon çalıştırılacak
    m.LoadTask.control = "RUN" ' Task'ı başlatıyoruz

    if m.array.count() = 1
        m.BottomBar.visible = false
        m.Video.setFocus(true)
    end if

    m.AdTimer.control = "start"

    ' RowList'e focus veriyoruz
    m.RowList.setFocus(true)
    m.RowList.rowLabelFont.size = "24"

    ' Timer ile 'fire' olayını izliyoruz
    m.Timer.observeField("fire", "hideHint")

    ' AdTimer'ın 'fire' olayını izliyoruz
    m.AdTimer.observeField("fire", "change")

    ' RowList'teki seçilen öğe değiştiğinde 'ChannelChange' fonksiyonunu çağırıyoruz
    m.RowList.observeField("rowItemSelected", "ChannelChange")
end sub


sub change()
    m.global.Adtracker = 0
end sub

sub hideHint()
    m.Hint.visible = false
end sub

sub showHint()
    m.Hint.visible = true
    m.Timer.control = "start"
end sub

sub optionsMenu()
    if m.global.Options = 0
        m.ShowBar.control = "start"
        m.RowList.setFocus(true)
        hideHint()
    else
        m.HideBar.control = "start"
        m.Video.setFocus(true)
        showHint()
    end if
end sub

function onKeyEvent(key as string, press as boolean) as boolean
    handled = false
    if press
        if key = "up" or key = "down"
            if m.global.Options = 0
                m.global.Options = 1
                optionsMenu()
            else
                m.global.Options = 0
                optionsMenu()
            end if
            handled = true
        end if
    end if
    return handled
end function

function ChannelChange()
    m.Video.content = m.RowList.content.getChild(m.RowList.rowItemFocused[0]).getChild(m.RowList.rowItemFocused[1])
    m.Video.control = "play"
end function

sub rowListContentChanged()
    m.RowList.content = m.LoadTask.content
    if m.count = 0
        m.Video.content = m.RowList.content.getChild(0).getChild(0)
        m.Video.control = "play"
        m.count = 1
    end if
end sub

