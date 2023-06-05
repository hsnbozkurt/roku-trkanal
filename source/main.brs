
'********** Copyright 2016 Roku Corp.  All Rights Reserved. **********

Library "Roku_Ads.brs"

sub Main()
    screen = CreateObject("roSGScreen")
    m.port = CreateObject("roMessagePort")
    screen.setMessagePort(m.port)
    
    m.global = screen.getGlobalNode()
    m.global.addField("Model", "int", true)
    m.global.Model = 0
    m.global.addField("Options", "int", true)
    m.global.Options = 2
    
    dev = createObject("roDeviceInfo")
    model = (Left(dev.GetModel(),1)).toInt()
    if model < 4
        m.global.Model = 1
    end if
    
    scene = screen.CreateScene("HomeScene")
    screen.show()
    
    m.RowList = scene.findNode("RowList")
    m.RowList.observeField("rowItemSelected", m.port)
    
    
    
    m.Video = scene.findNode("Video")
    RAF()

    while(true)
       msg = wait(0, m.port)
	   msgType = type(msg)
       if msgType = "roSGScreenEvent"
            print msg
            if msg.isScreenClosed() then return
       end if
    end while
end sub

Sub RAF()
    curPos = m.Video.position
    m.Video.control = "stop"
    playContent = true

    if playContent then 
        m.video.visible = true
        'stop
        m.video.content.PlayStart = curPos
        m.video.control = "play"
    end if
End Sub