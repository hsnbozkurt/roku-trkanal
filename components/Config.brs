
' ********** Copyright 2016 Roku Corp.  All Rights Reserved. **********
function loadConfig() as object
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
            Logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/TRT_1_logo_%282021-%29.svg/1200px-TRT_1_logo_%282021-%29.svg.png"
            Stream: "https://tv-trt1.medya.trt.com.tr/master.m3u8"
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
            Logo: "https://i.imgur.com/1l7SCCu.png"
            Stream: "https://ciner.daioncdn.net/showtv/showtv_720p.m3u8?app=4bc856ef-4c68-4a94-bc87-37dfaaa66558"
        }
        {
            Title: "Halk TV"
            streamFormat: "m3u8"
            Logo: "https://i.imgur.com/xM0HA30.png"
            Stream: "https://halktv-live.daioncdn.net/halktv/halktv.m3u8"
        }
        {
            Title: "Kanal 7"
            streamFormat: "m3u8"
            Logo: "https://i.imgur.com/0gq9xOm.png"
            Stream: "https://kanal7-live.daioncdn.net/kanal7/kanal7.m3u8"
        }
        {
            Title: "FOX TV"
            streamFormat: "m3u8"
            Logo: "https://i.imgur.com/5EYjWK7.png"
            Stream: "https://c.fulltvizle.com/fox/index.m3u8"
        }
        {
            Title: "STAR TV"
            streamFormat: "m3u8"
            Logo: "https://i.imgur.com/9O3DHRB.png"
            Stream: "https://dogus-live.daioncdn.net/startv/startv.m3u8"
        }
        {
            Title: "Teve2"
            streamFormat: "m3u8"
            Logo: "https://i.imgur.com/rsoSLih.png"
            Stream: "https://demiroren-live.daioncdn.net/teve2/teve2.m3u8"
        }
        {
            Title: "TLC"
            streamFormat: "m3u8"
            Logo: "http://assets.tvcdn.net/9871d781-b961-45cc-a287-c304f02bef1d.png"
            Stream: "http://stream.tvcdn.net/eglence/tlc.m3u8"
        }
        {
            Title: "TV8"
            streamFormat: "m3u8"
            Logo: "https://i.imgur.com/DKNwiDm.png"
            Stream: "https://tv8-live.daioncdn.net/tv8/tv8.m3u8"
        }
        {
            Title: "TV8.5"
            streamFormat: "m3u8"
            Logo: "http://assets.tvcdn.net/be26f47c-18d7-4447-971c-ca4ba60ffb4c.png"
            Stream: "http://stream.tvcdn.net/eglence/tv8-5.m3u8"
        }
        {
            Title: "Beyaz TV"
            streamFormat: "m3u8"
            Logo: "https://i.imgur.com/uykIdML.png"
            Stream: "https://beyaztv.daioncdn.net/beyaztv/beyaztv.m3u8?app=fcd5c66b-da9d-44ba-a410-4f34805c397d"
        }
        {
            Title: "360"
            streamFormat: "m3u8"
            Logo: "https://i.imgur.com/agn47sQ.png"
            Stream: "https://turkmedya-live.ercdn.net/tv360/tv360.m3u8"
        }
        '##### Make sure all Channel content is above this line #####
    ]
    return arr
end function
function LoadChildren() as object
    arr = [
        '##### Format for inputting stream info #####
        '## For each channel, enclose in brackets ##
        {
            Title: "Cartoon Network"
            streamFormat: "m3u8"
            Logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Cartoon_Network_2010_logo.svg/512px-Cartoon_Network_2010_logo.svg.png"
            Stream: "https://cartoonnetwork.blutv.com/blutv_cartoonnetwork/live.m3u8"
        }
        {
            Title: "TRT Cocuk",
            streamFormat: "m3u8",
            Logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/TRT_%C3%87ocuk_logo_%282021%29.svg/512px-TRT_%C3%87ocuk_logo_%282021%29.svg.png",
            Stream: "https://tv-trtcocuk.medya.trt.com.tr/master.m3u8"
        }
        {
            Title: "Çizgi Film TV"
            streamFormat: "m3u8"
            Logo: "http://assets.tvcdn.net/320542d3-bc8c-4e63-ba97-3b89426dda8c.png"
            Stream: "http://stream.tvcdn.net/cocuk-egitim/cizgi-film-tv.m3u8"
        }
        {
            Title: "Çocuklara Özel TV"
            streamFormat: "m3u8"
            Logo: "http://assets.tvcdn.net/222d7e52-2895-46a1-92a2-93e2ce1c8317.png"
            Stream: "http://stream.tvcdn.net/cocuk-egitim/cocuklara-ozel-tv.m3u8"
        }
    ]
    return arr
end function
function loadThirdRow() as object
    arr = [
        {
            Title: "TRT 2"
            streamFormat: "m3u8"
            Logo: "https://i.imgur.com/iOCQdyD.png"
            Stream: "https://tv-trt2.medya.trt.com.tr/master.m3u8"
        }
        {
            Title: "TV 4"
            streamFormat: "m3u8"
            Logo: "https://i.imgur.com/UpsQsbd.png"
            Stream: "https://turkmedya-live.ercdn.net/tv4/tv4.m3u8"
        }
        {
            Title: "Ilahiler TV"
            streamFormat: "m3u8"
            Logo: "http://assets.tvcdn.net/51a438e2-9c50-45fc-afd3-2764cc8714a8.png"
            Stream: "http://stream.tvcdn.net/dini/ilahiler-tv.m3u8"
        }
        {
            Title: "Dizi Film TV"
            streamFormat: "m3u8"
            Logo: "http://assets.tvcdn.net/2b0e5b6e-3c75-4d34-b392-90330b629bbb.png"
            Stream: "http://stream.tvcdn.net/eglence/dizi-film-tv.m3u8"
        }
        {
            Title: "Belgesel TV"
            streamFormat: "m3u8"
            Logo: "http://assets.tvcdn.net/6982e864-f429-4e6e-b3ba-d064ae84ff13.png"
            Stream: "http://stream.tvcdn.net/eglence/belgesel-tv.m3u8"
        }
        {
            Title: "TRT Muzik"
            streamFormat: "m3u8"
            Logo: "https://i.imgur.com/JgUzRH8.png"
            Stream: "https://tv-trtmuzik.medya.trt.com.tr/master.m3u8"
        }
        {
            Title: "Cine 5"
            streamFormat: "m3u8"
            Logo: "https://i.imgur.com/AmcOAIY.png"
            Stream: "https://cdn-cine5tv.yayin.com.tr/cine5tv/cine5tv/playlist.m3u8"
        }
        {
            title: "Damar Web TV",
            streamFormat: "m3u8",
            logo: "http://assets.tvcdn.net/ff9bad51-26ca-40cb-8c05-071f1c775546.png",
            stream: "http://stream.tvcdn.net/diger-muzik/damar-web-tv.m3u8"
        }
        {
            Title: "Arabesk Web TV"
            streamFormat: "m3u8"
            Logo: "http://assets.tvcdn.net/372149bf-3045-43ea-9794-dfea243bfb0e.png"
            Stream: "http://stream.tvcdn.net/diger-muzik/arabesk-web-tv.m3u8"
        }
        {
            Title: "Sıla TV"
            streamFormat: "m3u8"
            Logo: "http://assets.tvcdn.net/92b15cce-55df-4138-a88e-e1c222eab7c9.png"
            Stream: "http://stream.tvcdn.net/diger-muzik/sila-tv.m3u8"
        }
        {
            Title: "Zeyno"
            streamFormat: "m3u8"
            Logo: "http://assets.tvcdn.net/21718aa9-5ff3-4620-acd8-68fbc544508d.png"
            Stream: "http://stream.tvcdn.net/diger-muzik/zeyno.m3u8"
        }
        {
            Title: "TV 5"
            streamFormat: "m3u8"
            Logo: "http://assets.tvcdn.net/3df2642a-042c-45b6-b292-01600c5590cd.png"
            Stream: "http://stream.tvcdn.net/dini/tv-5.m3u8"
        }
        {
            Title: "TRT Haber"
            streamFormat: "m3u8"
            Logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/TRT_Haber_Eyl%C3%BCl_2020_Logo.svg/512px-TRT_Haber_Eyl%C3%BCl_2020_Logo.svg.png"
            Stream: "https://tv-trthaber.medya.trt.com.tr/master.m3u8"
        }
        {
            Title: "TGRT HABER"
            streamFormat: "m3u8"
            Logo: "https://i.imgur.com/PrxwKDw.png"
            Stream: "https://canli.tgrthaber.com/tgrt.m3u8"
        }
        {
            Title: "Aksu TV"
            streamFormat: "m3u8"
            Logo: "https://i.imgur.com/mgDCKiy.png"
            Stream: "https://live.artidijitalmedya.com/artidijital_aksutv/aksutv/playlist.m3u8"
        }
        {
            Title: "ÇAY TV"
            streamFormat: "m3u8"
            Logo: "https://i.imgur.com/ndupxwu.png"
            Stream: "https://edge1.socialsmart.tv/caytv/bant1/playlist.m3u8"
        }
        {
            Title: "Elmas TV"
            streamFormat: "m3u8"
            Logo: "https://i.imgur.com/czuCrzW.png"
            Stream: "https://edge1.socialsmart.tv/elmastv/bant1/playlist.m3u8"
        }
    ]
    return arr
end function