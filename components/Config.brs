
' ********** Copyright 2016 Roku Corp.  All Rights Reserved. **********

Function loadConfig() as Object
    arr = [
'##### Format for inputting stream info #####
'## For each channel, enclose in brackets ## 
'{
'   Title: Channel Title
'   streamFormat: Channel stream type (ex. "hls", "ism", "mp4", etc..)
'   Logo: Channel Logo (ex. "http://Roku.com/Roku.jpg)
'   Stream: URL to stream (ex. http://hls.Roku.com/talks/xxx.m3u8)
'}
    
{
    Title: "TRT 1"
    streamFormat: "m3u8"
    Logo: "https://www.tv-direct.fr/assets/logo/chaines/trt-1.jpg"
    Stream: "https://trt1.persona.video/master.m3u8?hls=1"
}
{
    Title: "KANAL D"
    streamFormat: "m3u8"
    Logo: "https://4.bp.blogspot.com/-SGB-7EzeWvg/U_FLyDCYSuI/AAAAAAAABLs/N4FDCG1B8G0/s1600/kanald.jpg"
    Stream: "https://demiroren.daioncdn.net/kanald/kanald_480p.m3u8?app=da2109ea-5dfe-4107-89ab-23593336ed61"
}
{
    Title: "SHOW TV"
    streamFormat: "m3u8"
    Logo: "https://www.showtv.com.tr/favicon.ico"
    Stream: "https://ciner.daioncdn.net/showtv/showtv_720p.m3u8?app=4bc856ef-4c68-4a94-bc87-37dfaaa66558"
}
{
    Title: "TGRT HABER"
    streamFormat: "m3u8"
    Logo: "https://2.bp.blogspot.com/-EtAcLT-YaUA/VDWPLymR_PI/AAAAAAAAJnM/noVkOzicCWo/s1600/TGRT_Haber_logosu.png"
    Stream: "https://b01c02nl.mediatriple.net/videoonlylive/mtsxxkzwwuqtglive/broadcast_5fe4598be8e5d.smil/playlist.m3u8"
}
{
    Title: "Roku Example Five"
    streamFormat: "mp4"
    Logo: "https://placeholdit.imgix.net/~text?txtsize=33&txt=channel+logo&w=267&h=150"
    Stream: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4"
}
{
    Title: "Roku Example Six"
    streamFormat: "mp4"
    Logo: "https://placeholdit.imgix.net/~text?txtsize=33&txt=channel+logo&w=267&h=150"
    Stream: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4"
}
    
    
    
'##### Make sure all Channel content is above this line #####    
    ] 
    return arr
End Function
