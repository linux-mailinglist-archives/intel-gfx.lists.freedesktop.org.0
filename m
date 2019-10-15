Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C52D78CB
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 16:38:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08AB56E826;
	Tue, 15 Oct 2019 14:38:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com
 [IPv6:2607:f8b0:4864:20::233])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D82456E826
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 14:38:02 +0000 (UTC)
Received: by mail-oi1-x233.google.com with SMTP id i185so16960843oif.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 07:38:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=KUlm7OB2VstjStTTQIiDctPEHhA2WBY/GJ0wTbaeokE=;
 b=k2nMAeZLBGmnRg3KFpsJ23Bc3smseznCzzcg+xQYosYjn8vwPxdqj9asHapaRgF75w
 yKTc3OuKiuv+Hfd4Kq/dEwAQc5LtOOLmgDDDHhxLjBbtzl/uHoU7dZa61CJD1qVFM7/O
 4QIvwjtKYd+iPSJqK+LGB8kq2ZKzR87pwlfJAX9fsyTkJI+TSNGhGVbdgVP1P+EHcU+S
 9qrv12H9cQvS6dpzlEnR868tfiCgph+5Jo1pCwB8spSjSd1+P0MgBjQ8lgoQgZgGLl/B
 VPxe8PjKedGtEidIf2+npwSUeRv9NTvhXQ7Iew1GLTzifi6yS58Db1j7vql+7lbOOTtZ
 czXw==
X-Gm-Message-State: APjAAAXDMV5AIyPlLO19Vg4BqWcbmyicVCHwkaJGaSZ0m3wNBqgJeldE
 AhS9OIjGQAKJ51f57UPdu3MdiafJr6s030LZXwbbwEThmGA=
X-Google-Smtp-Source: APXvYqyFMgKTIXOWcDb+SOubmBIRmfKThoa86lkLdvKZkSSF+wcdqHf5W4bkWcbw5sfMyW2pfGgodXj1jldcm4qpa0o=
X-Received: by 2002:aca:ad53:: with SMTP id w80mr28058186oie.43.1571150281618; 
 Tue, 15 Oct 2019 07:38:01 -0700 (PDT)
MIME-Version: 1.0
From: Seba Kerckhof <seba.kerckhof@gmail.com>
Date: Tue, 15 Oct 2019 16:37:50 +0200
Message-ID: <CALxFCKmBPLs2w+ow=p1W+BV09xhrKxAFTdbymoynXP+LXqDOhw@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=KUlm7OB2VstjStTTQIiDctPEHhA2WBY/GJ0wTbaeokE=;
 b=kvj/IfSFUjM77MSoz9cSBB6ZYQjm3WjPEpG5dfQ471z+KfrbM6JhVNz+GHvaLNMfp9
 5Yo5JbNOwvgD8ifS9pqU7PTqk0xtVO7f5N+Fr9j5y9MUeeQmwtxHd7sWZLZ4f4bC3Ram
 yyAEL4dfCWKnGPU2oTNO3RMTB/HMk/DNam3/mjRMvT5WRAYy+SDud9mvDr5es1K/mzyx
 EEKXOTGvQnJPuxrTW1yLl+1kZZRWQkecSe8h1fNQDrpepCsdlp01UxX72MhbeDs+Wqiq
 1acfsDXaDEHts7xtirUSzpfBTnIwmMDq2PZX0vL9BrCdBrJ0ep3skWXPEDxzllcmWHIX
 miqw==
Subject: [Intel-gfx] Using Intel GPU "TearFree" option changes my detected
 screens / edid information
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0810277519=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0810277519==
Content-Type: multipart/alternative; boundary="0000000000006cbb930594f3eeea"

--0000000000006cbb930594f3eeea
Content-Type: text/plain; charset="UTF-8"

I was experiencing tearing on my Debian system. I read about the intel
driver "TearFree" option and configured it as explained here:
https://wiki.archlinux.org/index.php/Intel_graphics#Tearing

While it does seem to help with the tearing, it changes my detected
screens. By this I mean if I run xrandr, my display ports have a different
name and the detected screens have a different EDID (model/vendor),
different resolutions etc.

This is the xrandr output without the intel configuration file:
```
Screen 0: minimum 8 x 8, current 1920 x 1080, maximum 16384 x 16384
DVI-I-0 disconnected primary (normal left inverted right x axis y axis)
        Identifier: 0x2de
        Timestamp:  113294
        Subpixel:   unknown
        Clones:
        CRTCs:      0 1 2 3
        Transform:  1.000000 0.000000 0.000000
                    0.000000 1.000000 0.000000
                    0.000000 0.000000 1.000000
                   filter:
        CscMatrix: 65536 0 0 0 0 65536 0 0 0 0 65536 0
        BorderDimensions: 4
                supported: 4
        Border: 0 0 0 0
                range: (0, 65535)
        SignalFormat: VGA
                supported: VGA
        ConnectorType: DVI-I
        ConnectorNumber: 0
        _ConnectorLocation: 0
DVI-I-1 disconnected (normal left inverted right x axis y axis)
        Identifier: 0x2df
        Timestamp:  113294
        Subpixel:   unknown
        Clones:
        CRTCs:      0 1 2 3
        Transform:  1.000000 0.000000 0.000000
                    0.000000 1.000000 0.000000
                    0.000000 0.000000 1.000000
                   filter:
        CscMatrix: 65536 0 0 0 0 65536 0 0 0 0 65536 0
        BorderDimensions: 4
                supported: 4
        Border: 0 0 0 0
                range: (0, 65535)
        SignalFormat: TMDS
                supported: TMDS
        ConnectorType: DVI-I
        ConnectorNumber: 0
        _ConnectorLocation: 0
DP-0 disconnected (normal left inverted right x axis y axis)
        Identifier: 0x2e0
        Timestamp:  113294
        Subpixel:   unknown
        Clones:
        CRTCs:      0 1 2 3
        Transform:  1.000000 0.000000 0.000000
                    0.000000 1.000000 0.000000
                    0.000000 0.000000 1.000000
                   filter:
        CscMatrix: 65536 0 0 0 0 65536 0 0 0 0 65536 0
        BorderDimensions: 4
                supported: 4
        Border: 0 0 0 0
                range: (0, 65535)
        SignalFormat: TMDS
                supported: TMDS
        ConnectorType: DisplayPort
        ConnectorNumber: 2
        _ConnectorLocation: 2
DP-1 connected 1920x1080+0+0 (0x2f4) normal (normal left inverted right x
axis y axis) 0mm x 0mm
        Identifier: 0x2e1
        Timestamp:  113294
        Subpixel:   unknown
        Gamma:      1.0:1.0:1.0
        Brightness: 1.0
        Clones:
        CRTC:       0
        CRTCs:      0 1 2 3
        Transform:  1.000000 0.000000 0.000000
                    0.000000 1.000000 0.000000
                    0.000000 0.000000 1.000000
                   filter:
        EDID:
                00ffffffffffff004249696301000000
                08190103800000780acf74a3574cb023
                09484c21080081804540614095000101
                010101010101023a801871382d40582c
                4500c48e2100001e662150b051001b30
                40703600c48e2100001e000000fc004c
                45442d4d4f4e49544f520a20000000fd
                00324b1e5017000a20202020202001a9
                02032cf24d010304050790121314169f
                202226090707111750830100006e030c
                001000b844200080010203048c0ad08a
                20e02d10103e9600c48e210000188c0a
                d090204031200c405500c48e21000018
                011d00bc52d01e20b8285540c48e2100
                001e011d80d0721c1620102c2580c48e
                2100009e00000000000000000000007d
        CscMatrix: 65536 0 0 0 0 65536 0 0 0 0 65536 0
        BorderDimensions: 4
                supported: 4
        Border: 0 0 0 0
                range: (0, 65535)
        SignalFormat: TMDS
                supported: TMDS
        ConnectorType: DisplayPort
        ConnectorNumber: 1
        _ConnectorLocation: 1
  1920x1080 (0x2f4) 148.500MHz +HSync +VSync *current +preferred
        h: width  1920 start 2008 end 2052 total 2200 skew    0 clock
 67.50KHz
        v: height 1080 start 1084 end 1089 total 1125           clock
 60.00Hz
  1920x1080 (0x2f5) 148.350MHz +HSync +VSync
        h: width  1920 start 2008 end 2052 total 2200 skew    0 clock
 67.43KHz
        v: height 1080 start 1084 end 1089 total 1125           clock
 59.94Hz
  1920x1080 (0x2f6) 148.500MHz +HSync +VSync
        h: width  1920 start 2448 end 2492 total 2640 skew    0 clock
 56.25KHz
        v: height 1080 start 1084 end 1089 total 1125           clock
 50.00Hz
  1920x1080 (0x2f7) 74.180MHz +HSync +VSync
        h: width  1920 start 2008 end 2052 total 2200 skew    0 clock
 33.72KHz
        v: height 1080 start 1084 end 1089 total 1125           clock
 29.97Hz
  1920x1080 (0x2f8) 74.160MHz +HSync +VSync
        h: width  1920 start 2558 end 2602 total 2750 skew    0 clock
 26.97KHz
        v: height 1080 start 1084 end 1089 total 1125           clock
 23.97Hz
  1920x1080 (0x2f9) 74.180MHz +HSync +VSync Interlace
        h: width  1920 start 2008 end 2052 total 2200 skew    0 clock
 33.72KHz
        v: height 1080 start 1084 end 1094 total 1124           clock
 60.00Hz
  1920x1080 (0x2fa) 74.250MHz +HSync +VSync Interlace
        h: width  1920 start 2448 end 2492 total 2640 skew    0 clock
 28.12KHz
        v: height 1080 start 1084 end 1094 total 1124           clock
 50.04Hz
  1440x900 (0x2fb) 106.500MHz -HSync +VSync
        h: width  1440 start 1520 end 1672 total 1904 skew    0 clock
 55.93KHz
        v: height  900 start  903 end  909 total  934           clock
 59.89Hz
  1360x768 (0x2fc) 85.500MHz +HSync +VSync
        h: width  1360 start 1424 end 1536 total 1792 skew    0 clock
 47.71KHz
        v: height  768 start  771 end  777 total  795           clock
 60.02Hz
  1280x1024 (0x2fd) 108.000MHz +HSync +VSync
        h: width  1280 start 1328 end 1440 total 1688 skew    0 clock
 63.98KHz
        v: height 1024 start 1025 end 1028 total 1066           clock
 60.02Hz
  1280x720 (0x2fe) 74.180MHz +HSync +VSync
        h: width  1280 start 1390 end 1430 total 1650 skew    0 clock
 44.96KHz
        v: height  720 start  725 end  730 total  750           clock
 59.94Hz
  1280x720 (0x2ff) 74.250MHz +HSync +VSync
        h: width  1280 start 1720 end 1760 total 1980 skew    0 clock
 37.50KHz
        v: height  720 start  725 end  730 total  750           clock
 50.00Hz
  1024x768 (0x300) 65.000MHz -HSync -VSync
        h: width  1024 start 1048 end 1184 total 1344 skew    0 clock
 48.36KHz
        v: height  768 start  771 end  777 total  806           clock
 60.00Hz
  800x600 (0x301) 40.000MHz +HSync +VSync
        h: width   800 start  840 end  968 total 1056 skew    0 clock
 37.88KHz
        v: height  600 start  601 end  605 total  628           clock
 60.32Hz
  720x576 (0x302) 27.000MHz -HSync -VSync
        h: width   720 start  732 end  796 total  864 skew    0 clock
 31.25KHz
        v: height  576 start  581 end  586 total  625           clock
 50.00Hz
  720x480 (0x303) 27.000MHz -HSync -VSync
        h: width   720 start  736 end  798 total  858 skew    0 clock
 31.47KHz
        v: height  480 start  489 end  495 total  525           clock
 59.94Hz
  640x480 (0x304) 25.175MHz -HSync -VSync
        h: width   640 start  656 end  752 total  800 skew    0 clock
 31.47KHz
        v: height  480 start  490 end  492 total  525           clock
 59.94Hz
  640x480 (0x305) 25.170MHz -HSync -VSync
        h: width   640 start  656 end  752 total  800 skew    0 clock
 31.46KHz
        v: height  480 start  490 end  492 total  525           clock
 59.93Hz
DP-2 disconnected (normal left inverted right x axis y axis)
        Identifier: 0x2e2
        Timestamp:  113294
        Subpixel:   unknown
        Clones:
        CRTCs:      0 1 2 3
        Transform:  1.000000 0.000000 0.000000
                    0.000000 1.000000 0.000000
                    0.000000 0.000000 1.000000
                   filter:
        CscMatrix: 65536 0 0 0 0 65536 0 0 0 0 65536 0
        BorderDimensions: 4
                supported: 4
        Border: 0 0 0 0
                range: (0, 65535)
        SignalFormat: DisplayPort
                supported: DisplayPort
        ConnectorType: DisplayPort
        ConnectorNumber: 2
        _ConnectorLocation: 2
DP-3 disconnected (normal left inverted right x axis y axis)
        Identifier: 0x2e3
        Timestamp:  113294
        Subpixel:   unknown
        Clones:
        CRTCs:      0 1 2 3
        Transform:  1.000000 0.000000 0.000000
                    0.000000 1.000000 0.000000
                    0.000000 0.000000 1.000000
                   filter:
        CscMatrix: 65536 0 0 0 0 65536 0 0 0 0 65536 0
        BorderDimensions: 4
                supported: 4
        Border: 0 0 0 0
                range: (0, 65535)
        SignalFormat: DisplayPort
                supported: DisplayPort
        ConnectorType: DisplayPort
        ConnectorNumber: 1
        _ConnectorLocation: 1
```

This is the xrandr output with the intel configuration file:
```
Screen 0: minimum 8 x 8, current 1920 x 1200, maximum 32767 x 32767
DP1 disconnected primary (normal left inverted right x axis y axis)
        Identifier: 0x43
        Timestamp:  14646
        Subpixel:   unknown
        Clones:
        CRTCs:      0 1 2
        Transform:  1.000000 0.000000 0.000000
                    0.000000 1.000000 0.000000
                    0.000000 0.000000 1.000000
                   filter:
        Broadcast RGB: Automatic
                supported: Automatic, Full, Limited 16:235
        audio: auto
                supported: force-dvi, off, auto, on
DP2 disconnected (normal left inverted right x axis y axis)
        Identifier: 0x44
        Timestamp:  14646
        Subpixel:   unknown
        Clones:
        CRTCs:      0 1 2
        Transform:  1.000000 0.000000 0.000000
                    0.000000 1.000000 0.000000
                    0.000000 0.000000 1.000000
                   filter:
        Broadcast RGB: Automatic
                supported: Automatic, Full, Limited 16:235
        audio: auto
                supported: force-dvi, off, auto, on
DP3 connected 1920x1200+0+0 (0x4c) normal (normal left inverted right x
axis y axis) 0mm x 0mm
        Identifier: 0x45
        Timestamp:  14646
        Subpixel:   unknown
        Gamma:      1.0:1.0:1.0
        Brightness: 1.0
        Clones:
        CRTC:       0
        CRTCs:      0 1 2
        Transform:  1.000000 0.000000 0.000000
                    0.000000 1.000000 0.000000
                    0.000000 0.000000 1.000000
                   filter:
        EDID:
                00ffffffffffff000d12117570030000
                15150104a5000078e28042ac5130b425
                10505300000001010101010101010101
                010101010101283c80a070b023403020
                360007442100001a213280a070b02340
                3020360007442100001a000000fd0038
                4c1e5311000a202020202020000000fc
                00434837353131420a20202020200012
        Broadcast RGB: Automatic
                supported: Automatic, Full, Limited 16:235
        audio: auto
                supported: force-dvi, off, auto, on
  1920x1200 (0x4c) 154.000MHz +HSync -VSync *current +preferred
        h: width  1920 start 1968 end 2000 total 2080 skew    0 clock
 74.04KHz
        v: height 1200 start 1203 end 1209 total 1235           clock
 59.95Hz
  1920x1200 (0x83) 128.330MHz +HSync -VSync
        h: width  1920 start 1968 end 2000 total 2080 skew    0 clock
 61.70KHz
        v: height 1200 start 1203 end 1209 total 1235           clock
 49.96Hz
HDMI1 disconnected (normal left inverted right x axis y axis)
        Identifier: 0x46
        Timestamp:  14646
        Subpixel:   unknown
        Clones:     VGA1
        CRTCs:      0 1 2
        Transform:  1.000000 0.000000 0.000000
                    0.000000 1.000000 0.000000
                    0.000000 0.000000 1.000000
                   filter:
        aspect ratio: Automatic
                supported: Automatic, 4:3, 16:9
        Broadcast RGB: Automatic
                supported: Automatic, Full, Limited 16:235
        audio: auto
                supported: force-dvi, off, auto, on
HDMI2 disconnected (normal left inverted right x axis y axis)
        Identifier: 0x47
        Timestamp:  14646
        Subpixel:   unknown
        Clones:     VGA1
        CRTCs:      0 1 2
        Transform:  1.000000 0.000000 0.000000
                    0.000000 1.000000 0.000000
                    0.000000 0.000000 1.000000
                   filter:
        aspect ratio: Automatic
                supported: Automatic, 4:3, 16:9
        Broadcast RGB: Automatic
                supported: Automatic, Full, Limited 16:235
        audio: auto
                supported: force-dvi, off, auto, on
HDMI3 disconnected (normal left inverted right x axis y axis)
        Identifier: 0x48
        Timestamp:  14646
        Subpixel:   unknown
        Clones:     VGA1
        CRTCs:      0 1 2
        Transform:  1.000000 0.000000 0.000000
                    0.000000 1.000000 0.000000
                    0.000000 0.000000 1.000000
                   filter:
        aspect ratio: Automatic
                supported: Automatic, 4:3, 16:9
        Broadcast RGB: Automatic
                supported: Automatic, Full, Limited 16:235
        audio: auto
                supported: force-dvi, off, auto, on
VGA1 disconnected (normal left inverted right x axis y axis)
        Identifier: 0x49
        Timestamp:  14646
        Subpixel:   unknown
        Clones:     HDMI1 HDMI2 HDMI3
        CRTCs:      0 1 2
        Transform:  1.000000 0.000000 0.000000
                    0.000000 1.000000 0.000000
                    0.000000 0.000000 1.000000
                   filter:
VIRTUAL1 disconnected (normal left inverted right x axis y axis)
        Identifier: 0x4a
        Timestamp:  14646
        Subpixel:   no subpixels
        Clones:
        CRTCs:      3
        Transform:  1.000000 0.000000 0.000000
                    0.000000 1.000000 0.000000
                    0.000000 0.000000 1.000000
                   filter:
```

I tested this on multiple machines and on both Debian 9 and 10 (with X11,
not wayland). Is this a bug, or why does this happen?

--0000000000006cbb930594f3eeea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+SSB3YXMgZXhwZXJpZW5jaW5nIHRlYXJpbmcgb24gbXkgRGViaWFuIHN5
c3RlbS4gSSByZWFkIGFib3V0IHRoZSBpbnRlbCBkcml2ZXIgJnF1b3Q7VGVhckZyZWUmcXVvdDsg
b3B0aW9uIGFuZCBjb25maWd1cmVkIGl0IGFzIGV4cGxhaW5lZCBoZXJlOiA8YSBocmVmPSJodHRw
czovL3dpa2kuYXJjaGxpbnV4Lm9yZy9pbmRleC5waHAvSW50ZWxfZ3JhcGhpY3MjVGVhcmluZyI+
aHR0cHM6Ly93aWtpLmFyY2hsaW51eC5vcmcvaW5kZXgucGhwL0ludGVsX2dyYXBoaWNzI1RlYXJp
bmc8L2E+PGJyPjxicj5XaGlsZSBpdCBkb2VzIHNlZW0gdG8gaGVscCB3aXRoIHRoZSB0ZWFyaW5n
LCBpdCBjaGFuZ2VzIG15IGRldGVjdGVkIHNjcmVlbnMuIEJ5IHRoaXMgSSBtZWFuIGlmIEkgcnVu
IHhyYW5kciwgbXkgZGlzcGxheSBwb3J0cyBoYXZlIGEgZGlmZmVyZW50IG5hbWUgYW5kIHRoZSBk
ZXRlY3RlZCBzY3JlZW5zIGhhdmUgYSBkaWZmZXJlbnQgRURJRCAobW9kZWwvdmVuZG9yKSwgZGlm
ZmVyZW50IHJlc29sdXRpb25zIGV0Yy48YnI+PGJyPlRoaXMgaXMgdGhlIHhyYW5kciBvdXRwdXQg
d2l0aG91dCB0aGUgaW50ZWwgY29uZmlndXJhdGlvbiBmaWxlOjxicj5gYGA8YnI+U2NyZWVuIDA6
IG1pbmltdW0gOCB4IDgsIGN1cnJlbnQgMTkyMCB4IDEwODAsIG1heGltdW0gMTYzODQgeCAxNjM4
NDxicj5EVkktSS0wIGRpc2Nvbm5lY3RlZCBwcmltYXJ5IChub3JtYWwgbGVmdCBpbnZlcnRlZCBy
aWdodCB4IGF4aXMgeSBheGlzKTxicj7CoCDCoCDCoCDCoCBJZGVudGlmaWVyOiAweDJkZTxicj7C
oCDCoCDCoCDCoCBUaW1lc3RhbXA6IMKgMTEzMjk0PGJyPsKgIMKgIMKgIMKgIFN1YnBpeGVsOiDC
oCB1bmtub3duPGJyPsKgIMKgIMKgIMKgIENsb25lczogwqAgwqA8YnI+wqAgwqAgwqAgwqAgQ1JU
Q3M6IMKgIMKgIMKgMCAxIDIgMzxicj7CoCDCoCDCoCDCoCBUcmFuc2Zvcm06IMKgMS4wMDAwMDAg
MC4wMDAwMDAgMC4wMDAwMDA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgMC4wMDAw
MDAgMS4wMDAwMDAgMC4wMDAwMDA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgMC4w
MDAwMDAgMC4wMDAwMDAgMS4wMDAwMDA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBm
aWx0ZXI6IDxicj7CoCDCoCDCoCDCoCBDc2NNYXRyaXg6IDY1NTM2IDAgMCAwIDAgNjU1MzYgMCAw
IDAgMCA2NTUzNiAwIDxicj7CoCDCoCDCoCDCoCBCb3JkZXJEaW1lbnNpb25zOiA0IDxicj7CoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCBzdXBwb3J0ZWQ6IDQ8YnI+wqAgwqAgwqAgwqAgQm9yZGVyOiAw
IDAgMCAwIDxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCByYW5nZTogKDAsIDY1NTM1KTxicj7C
oCDCoCDCoCDCoCBTaWduYWxGb3JtYXQ6IFZHQSA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
c3VwcG9ydGVkOiBWR0E8YnI+wqAgwqAgwqAgwqAgQ29ubmVjdG9yVHlwZTogRFZJLUkgPGJyPsKg
IMKgIMKgIMKgIENvbm5lY3Rvck51bWJlcjogMCA8YnI+wqAgwqAgwqAgwqAgX0Nvbm5lY3Rvckxv
Y2F0aW9uOiAwIDxicj5EVkktSS0xIGRpc2Nvbm5lY3RlZCAobm9ybWFsIGxlZnQgaW52ZXJ0ZWQg
cmlnaHQgeCBheGlzIHkgYXhpcyk8YnI+wqAgwqAgwqAgwqAgSWRlbnRpZmllcjogMHgyZGY8YnI+
wqAgwqAgwqAgwqAgVGltZXN0YW1wOiDCoDExMzI5NDxicj7CoCDCoCDCoCDCoCBTdWJwaXhlbDog
wqAgdW5rbm93bjxicj7CoCDCoCDCoCDCoCBDbG9uZXM6IMKgIMKgPGJyPsKgIMKgIMKgIMKgIENS
VENzOiDCoCDCoCDCoDAgMSAyIDM8YnI+wqAgwqAgwqAgwqAgVHJhbnNmb3JtOiDCoDEuMDAwMDAw
IDAuMDAwMDAwIDAuMDAwMDAwPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDAuMDAw
MDAwIDEuMDAwMDAwIDAuMDAwMDAwPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDAu
MDAwMDAwIDAuMDAwMDAwIDEuMDAwMDAwPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
ZmlsdGVyOiA8YnI+wqAgwqAgwqAgwqAgQ3NjTWF0cml4OiA2NTUzNiAwIDAgMCAwIDY1NTM2IDAg
MCAwIDAgNjU1MzYgMCA8YnI+wqAgwqAgwqAgwqAgQm9yZGVyRGltZW5zaW9uczogNCA8YnI+wqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgc3VwcG9ydGVkOiA0PGJyPsKgIMKgIMKgIMKgIEJvcmRlcjog
MCAwIDAgMCA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgcmFuZ2U6ICgwLCA2NTUzNSk8YnI+
wqAgwqAgwqAgwqAgU2lnbmFsRm9ybWF0OiBUTURTIDxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCBzdXBwb3J0ZWQ6IFRNRFM8YnI+wqAgwqAgwqAgwqAgQ29ubmVjdG9yVHlwZTogRFZJLUkgPGJy
PsKgIMKgIMKgIMKgIENvbm5lY3Rvck51bWJlcjogMCA8YnI+wqAgwqAgwqAgwqAgX0Nvbm5lY3Rv
ckxvY2F0aW9uOiAwIDxicj5EUC0wIGRpc2Nvbm5lY3RlZCAobm9ybWFsIGxlZnQgaW52ZXJ0ZWQg
cmlnaHQgeCBheGlzIHkgYXhpcyk8YnI+wqAgwqAgwqAgwqAgSWRlbnRpZmllcjogMHgyZTA8YnI+
wqAgwqAgwqAgwqAgVGltZXN0YW1wOiDCoDExMzI5NDxicj7CoCDCoCDCoCDCoCBTdWJwaXhlbDog
wqAgdW5rbm93bjxicj7CoCDCoCDCoCDCoCBDbG9uZXM6IMKgIMKgPGJyPsKgIMKgIMKgIMKgIENS
VENzOiDCoCDCoCDCoDAgMSAyIDM8YnI+wqAgwqAgwqAgwqAgVHJhbnNmb3JtOiDCoDEuMDAwMDAw
IDAuMDAwMDAwIDAuMDAwMDAwPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDAuMDAw
MDAwIDEuMDAwMDAwIDAuMDAwMDAwPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDAu
MDAwMDAwIDAuMDAwMDAwIDEuMDAwMDAwPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
ZmlsdGVyOiA8YnI+wqAgwqAgwqAgwqAgQ3NjTWF0cml4OiA2NTUzNiAwIDAgMCAwIDY1NTM2IDAg
MCAwIDAgNjU1MzYgMCA8YnI+wqAgwqAgwqAgwqAgQm9yZGVyRGltZW5zaW9uczogNCA8YnI+wqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgc3VwcG9ydGVkOiA0PGJyPsKgIMKgIMKgIMKgIEJvcmRlcjog
MCAwIDAgMCA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgcmFuZ2U6ICgwLCA2NTUzNSk8YnI+
wqAgwqAgwqAgwqAgU2lnbmFsRm9ybWF0OiBUTURTIDxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCBzdXBwb3J0ZWQ6IFRNRFM8YnI+wqAgwqAgwqAgwqAgQ29ubmVjdG9yVHlwZTogRGlzcGxheVBv
cnQgPGJyPsKgIMKgIMKgIMKgIENvbm5lY3Rvck51bWJlcjogMiA8YnI+wqAgwqAgwqAgwqAgX0Nv
bm5lY3RvckxvY2F0aW9uOiAyIDxicj5EUC0xIGNvbm5lY3RlZCAxOTIweDEwODArMCswICgweDJm
NCkgbm9ybWFsIChub3JtYWwgbGVmdCBpbnZlcnRlZCByaWdodCB4IGF4aXMgeSBheGlzKSAwbW0g
eCAwbW08YnI+wqAgwqAgwqAgwqAgSWRlbnRpZmllcjogMHgyZTE8YnI+wqAgwqAgwqAgwqAgVGlt
ZXN0YW1wOiDCoDExMzI5NDxicj7CoCDCoCDCoCDCoCBTdWJwaXhlbDogwqAgdW5rbm93bjxicj7C
oCDCoCDCoCDCoCBHYW1tYTogwqAgwqAgwqAxLjA6MS4wOjEuMDxicj7CoCDCoCDCoCDCoCBCcmln
aHRuZXNzOiAxLjA8YnI+wqAgwqAgwqAgwqAgQ2xvbmVzOiDCoCDCoDxicj7CoCDCoCDCoCDCoCBD
UlRDOiDCoCDCoCDCoCAwPGJyPsKgIMKgIMKgIMKgIENSVENzOiDCoCDCoCDCoDAgMSAyIDM8YnI+
wqAgwqAgwqAgwqAgVHJhbnNmb3JtOiDCoDEuMDAwMDAwIDAuMDAwMDAwIDAuMDAwMDAwPGJyPsKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDAuMDAwMDAwIDEuMDAwMDAwIDAuMDAwMDAwPGJy
PsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDAuMDAwMDAwIDAuMDAwMDAwIDEuMDAwMDAw
PGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZmlsdGVyOiA8YnI+wqAgwqAgwqAgwqAg
RURJRDogPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDAwZmZmZmZmZmZmZmZmMDA0MjQ5Njk2
MzAxMDAwMDAwPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDA4MTkwMTAzODAwMDAwNzgwYWNm
NzRhMzU3NGNiMDIzPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDA5NDg0YzIxMDgwMDgxODA0
NTQwNjE0MDk1MDAwMTAxPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDAxMDEwMTAxMDEwMTAy
M2E4MDE4NzEzODJkNDA1ODJjPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDQ1MDBjNDhlMjEw
MDAwMWU2NjIxNTBiMDUxMDAxYjMwPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDQwNzAzNjAw
YzQ4ZTIxMDAwMDFlMDAwMDAwZmMwMDRjPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDQ1NDQy
ZDRkNGY0ZTQ5NTQ0ZjUyMGEyMDAwMDAwMGZkPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDAw
MzI0YjFlNTAxNzAwMGEyMDIwMjAyMDIwMjAwMWE5PGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IDAyMDMyY2YyNGQwMTAzMDQwNTA3OTAxMjEzMTQxNjlmPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIDIwMjIyNjA5MDcwNzExMTc1MDgzMDEwMDAwNmUwMzBjPGJyPsKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIDAwMTAwMGI4NDQyMDAwODAwMTAyMDMwNDhjMGFkMDhhPGJyPsKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIDIwZTAyZDEwMTAzZTk2MDBjNDhlMjEwMDAwMTg4YzBhPGJyPsKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIGQwOTAyMDQwMzEyMDBjNDA1NTAwYzQ4ZTIxMDAwMDE4PGJyPsKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIDAxMWQwMGJjNTJkMDFlMjBiODI4NTU0MGM0OGUyMTAwPGJyPsKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIDAwMWUwMTFkODBkMDcyMWMxNjIwMTAyYzI1ODBjNDhlPGJyPsKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIDIxMDAwMDllMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDdkPGJy
PsKgIMKgIMKgIMKgIENzY01hdHJpeDogNjU1MzYgMCAwIDAgMCA2NTUzNiAwIDAgMCAwIDY1NTM2
IDAgPGJyPsKgIMKgIMKgIMKgIEJvcmRlckRpbWVuc2lvbnM6IDQgPGJyPsKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIHN1cHBvcnRlZDogNDxicj7CoCDCoCDCoCDCoCBCb3JkZXI6IDAgMCAwIDAgPGJy
PsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHJhbmdlOiAoMCwgNjU1MzUpPGJyPsKgIMKgIMKgIMKg
IFNpZ25hbEZvcm1hdDogVE1EUyA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgc3VwcG9ydGVk
OiBUTURTPGJyPsKgIMKgIMKgIMKgIENvbm5lY3RvclR5cGU6IERpc3BsYXlQb3J0IDxicj7CoCDC
oCDCoCDCoCBDb25uZWN0b3JOdW1iZXI6IDEgPGJyPsKgIMKgIMKgIMKgIF9Db25uZWN0b3JMb2Nh
dGlvbjogMSA8YnI+wqAgMTkyMHgxMDgwICgweDJmNCkgMTQ4LjUwME1IeiArSFN5bmMgK1ZTeW5j
ICpjdXJyZW50ICtwcmVmZXJyZWQ8YnI+wqAgwqAgwqAgwqAgaDogd2lkdGggwqAxOTIwIHN0YXJ0
IDIwMDggZW5kIDIwNTIgdG90YWwgMjIwMCBza2V3IMKgIMKgMCBjbG9jayDCoDY3LjUwS0h6PGJy
PsKgIMKgIMKgIMKgIHY6IGhlaWdodCAxMDgwIHN0YXJ0IDEwODQgZW5kIDEwODkgdG90YWwgMTEy
NSDCoCDCoCDCoCDCoCDCoCBjbG9jayDCoDYwLjAwSHo8YnI+wqAgMTkyMHgxMDgwICgweDJmNSkg
MTQ4LjM1ME1IeiArSFN5bmMgK1ZTeW5jPGJyPsKgIMKgIMKgIMKgIGg6IHdpZHRoIMKgMTkyMCBz
dGFydCAyMDA4IGVuZCAyMDUyIHRvdGFsIDIyMDAgc2tldyDCoCDCoDAgY2xvY2sgwqA2Ny40M0tI
ejxicj7CoCDCoCDCoCDCoCB2OiBoZWlnaHQgMTA4MCBzdGFydCAxMDg0IGVuZCAxMDg5IHRvdGFs
IDExMjUgwqAgwqAgwqAgwqAgwqAgY2xvY2sgwqA1OS45NEh6PGJyPsKgIDE5MjB4MTA4MCAoMHgy
ZjYpIDE0OC41MDBNSHogK0hTeW5jICtWU3luYzxicj7CoCDCoCDCoCDCoCBoOiB3aWR0aCDCoDE5
MjAgc3RhcnQgMjQ0OCBlbmQgMjQ5MiB0b3RhbCAyNjQwIHNrZXcgwqAgwqAwIGNsb2NrIMKgNTYu
MjVLSHo8YnI+wqAgwqAgwqAgwqAgdjogaGVpZ2h0IDEwODAgc3RhcnQgMTA4NCBlbmQgMTA4OSB0
b3RhbCAxMTI1IMKgIMKgIMKgIMKgIMKgIGNsb2NrIMKgNTAuMDBIejxicj7CoCAxOTIweDEwODAg
KDB4MmY3KSA3NC4xODBNSHogK0hTeW5jICtWU3luYzxicj7CoCDCoCDCoCDCoCBoOiB3aWR0aCDC
oDE5MjAgc3RhcnQgMjAwOCBlbmQgMjA1MiB0b3RhbCAyMjAwIHNrZXcgwqAgwqAwIGNsb2NrIMKg
MzMuNzJLSHo8YnI+wqAgwqAgwqAgwqAgdjogaGVpZ2h0IDEwODAgc3RhcnQgMTA4NCBlbmQgMTA4
OSB0b3RhbCAxMTI1IMKgIMKgIMKgIMKgIMKgIGNsb2NrIMKgMjkuOTdIejxicj7CoCAxOTIweDEw
ODAgKDB4MmY4KSA3NC4xNjBNSHogK0hTeW5jICtWU3luYzxicj7CoCDCoCDCoCDCoCBoOiB3aWR0
aCDCoDE5MjAgc3RhcnQgMjU1OCBlbmQgMjYwMiB0b3RhbCAyNzUwIHNrZXcgwqAgwqAwIGNsb2Nr
IMKgMjYuOTdLSHo8YnI+wqAgwqAgwqAgwqAgdjogaGVpZ2h0IDEwODAgc3RhcnQgMTA4NCBlbmQg
MTA4OSB0b3RhbCAxMTI1IMKgIMKgIMKgIMKgIMKgIGNsb2NrIMKgMjMuOTdIejxicj7CoCAxOTIw
eDEwODAgKDB4MmY5KSA3NC4xODBNSHogK0hTeW5jICtWU3luYyBJbnRlcmxhY2U8YnI+wqAgwqAg
wqAgwqAgaDogd2lkdGggwqAxOTIwIHN0YXJ0IDIwMDggZW5kIDIwNTIgdG90YWwgMjIwMCBza2V3
IMKgIMKgMCBjbG9jayDCoDMzLjcyS0h6PGJyPsKgIMKgIMKgIMKgIHY6IGhlaWdodCAxMDgwIHN0
YXJ0IDEwODQgZW5kIDEwOTQgdG90YWwgMTEyNCDCoCDCoCDCoCDCoCDCoCBjbG9jayDCoDYwLjAw
SHo8YnI+wqAgMTkyMHgxMDgwICgweDJmYSkgNzQuMjUwTUh6ICtIU3luYyArVlN5bmMgSW50ZXJs
YWNlPGJyPsKgIMKgIMKgIMKgIGg6IHdpZHRoIMKgMTkyMCBzdGFydCAyNDQ4IGVuZCAyNDkyIHRv
dGFsIDI2NDAgc2tldyDCoCDCoDAgY2xvY2sgwqAyOC4xMktIejxicj7CoCDCoCDCoCDCoCB2OiBo
ZWlnaHQgMTA4MCBzdGFydCAxMDg0IGVuZCAxMDk0IHRvdGFsIDExMjQgwqAgwqAgwqAgwqAgwqAg
Y2xvY2sgwqA1MC4wNEh6PGJyPsKgIDE0NDB4OTAwICgweDJmYikgMTA2LjUwME1IeiAtSFN5bmMg
K1ZTeW5jPGJyPsKgIMKgIMKgIMKgIGg6IHdpZHRoIMKgMTQ0MCBzdGFydCAxNTIwIGVuZCAxNjcy
IHRvdGFsIDE5MDQgc2tldyDCoCDCoDAgY2xvY2sgwqA1NS45M0tIejxicj7CoCDCoCDCoCDCoCB2
OiBoZWlnaHQgwqA5MDAgc3RhcnQgwqA5MDMgZW5kIMKgOTA5IHRvdGFsIMKgOTM0IMKgIMKgIMKg
IMKgIMKgIGNsb2NrIMKgNTkuODlIejxicj7CoCAxMzYweDc2OCAoMHgyZmMpIDg1LjUwME1IeiAr
SFN5bmMgK1ZTeW5jPGJyPsKgIMKgIMKgIMKgIGg6IHdpZHRoIMKgMTM2MCBzdGFydCAxNDI0IGVu
ZCAxNTM2IHRvdGFsIDE3OTIgc2tldyDCoCDCoDAgY2xvY2sgwqA0Ny43MUtIejxicj7CoCDCoCDC
oCDCoCB2OiBoZWlnaHQgwqA3Njggc3RhcnQgwqA3NzEgZW5kIMKgNzc3IHRvdGFsIMKgNzk1IMKg
IMKgIMKgIMKgIMKgIGNsb2NrIMKgNjAuMDJIejxicj7CoCAxMjgweDEwMjQgKDB4MmZkKSAxMDgu
MDAwTUh6ICtIU3luYyArVlN5bmM8YnI+wqAgwqAgwqAgwqAgaDogd2lkdGggwqAxMjgwIHN0YXJ0
IDEzMjggZW5kIDE0NDAgdG90YWwgMTY4OCBza2V3IMKgIMKgMCBjbG9jayDCoDYzLjk4S0h6PGJy
PsKgIMKgIMKgIMKgIHY6IGhlaWdodCAxMDI0IHN0YXJ0IDEwMjUgZW5kIDEwMjggdG90YWwgMTA2
NiDCoCDCoCDCoCDCoCDCoCBjbG9jayDCoDYwLjAySHo8YnI+wqAgMTI4MHg3MjAgKDB4MmZlKSA3
NC4xODBNSHogK0hTeW5jICtWU3luYzxicj7CoCDCoCDCoCDCoCBoOiB3aWR0aCDCoDEyODAgc3Rh
cnQgMTM5MCBlbmQgMTQzMCB0b3RhbCAxNjUwIHNrZXcgwqAgwqAwIGNsb2NrIMKgNDQuOTZLSHo8
YnI+wqAgwqAgwqAgwqAgdjogaGVpZ2h0IMKgNzIwIHN0YXJ0IMKgNzI1IGVuZCDCoDczMCB0b3Rh
bCDCoDc1MCDCoCDCoCDCoCDCoCDCoCBjbG9jayDCoDU5Ljk0SHo8YnI+wqAgMTI4MHg3MjAgKDB4
MmZmKSA3NC4yNTBNSHogK0hTeW5jICtWU3luYzxicj7CoCDCoCDCoCDCoCBoOiB3aWR0aCDCoDEy
ODAgc3RhcnQgMTcyMCBlbmQgMTc2MCB0b3RhbCAxOTgwIHNrZXcgwqAgwqAwIGNsb2NrIMKgMzcu
NTBLSHo8YnI+wqAgwqAgwqAgwqAgdjogaGVpZ2h0IMKgNzIwIHN0YXJ0IMKgNzI1IGVuZCDCoDcz
MCB0b3RhbCDCoDc1MCDCoCDCoCDCoCDCoCDCoCBjbG9jayDCoDUwLjAwSHo8YnI+wqAgMTAyNHg3
NjggKDB4MzAwKSA2NS4wMDBNSHogLUhTeW5jIC1WU3luYzxicj7CoCDCoCDCoCDCoCBoOiB3aWR0
aCDCoDEwMjQgc3RhcnQgMTA0OCBlbmQgMTE4NCB0b3RhbCAxMzQ0IHNrZXcgwqAgwqAwIGNsb2Nr
IMKgNDguMzZLSHo8YnI+wqAgwqAgwqAgwqAgdjogaGVpZ2h0IMKgNzY4IHN0YXJ0IMKgNzcxIGVu
ZCDCoDc3NyB0b3RhbCDCoDgwNiDCoCDCoCDCoCDCoCDCoCBjbG9jayDCoDYwLjAwSHo8YnI+wqAg
ODAweDYwMCAoMHgzMDEpIDQwLjAwME1IeiArSFN5bmMgK1ZTeW5jPGJyPsKgIMKgIMKgIMKgIGg6
IHdpZHRoIMKgIDgwMCBzdGFydCDCoDg0MCBlbmQgwqA5NjggdG90YWwgMTA1NiBza2V3IMKgIMKg
MCBjbG9jayDCoDM3Ljg4S0h6PGJyPsKgIMKgIMKgIMKgIHY6IGhlaWdodCDCoDYwMCBzdGFydCDC
oDYwMSBlbmQgwqA2MDUgdG90YWwgwqA2MjggwqAgwqAgwqAgwqAgwqAgY2xvY2sgwqA2MC4zMkh6
PGJyPsKgIDcyMHg1NzYgKDB4MzAyKSAyNy4wMDBNSHogLUhTeW5jIC1WU3luYzxicj7CoCDCoCDC
oCDCoCBoOiB3aWR0aCDCoCA3MjAgc3RhcnQgwqA3MzIgZW5kIMKgNzk2IHRvdGFsIMKgODY0IHNr
ZXcgwqAgwqAwIGNsb2NrIMKgMzEuMjVLSHo8YnI+wqAgwqAgwqAgwqAgdjogaGVpZ2h0IMKgNTc2
IHN0YXJ0IMKgNTgxIGVuZCDCoDU4NiB0b3RhbCDCoDYyNSDCoCDCoCDCoCDCoCDCoCBjbG9jayDC
oDUwLjAwSHo8YnI+wqAgNzIweDQ4MCAoMHgzMDMpIDI3LjAwME1IeiAtSFN5bmMgLVZTeW5jPGJy
PsKgIMKgIMKgIMKgIGg6IHdpZHRoIMKgIDcyMCBzdGFydCDCoDczNiBlbmQgwqA3OTggdG90YWwg
wqA4NTggc2tldyDCoCDCoDAgY2xvY2sgwqAzMS40N0tIejxicj7CoCDCoCDCoCDCoCB2OiBoZWln
aHQgwqA0ODAgc3RhcnQgwqA0ODkgZW5kIMKgNDk1IHRvdGFsIMKgNTI1IMKgIMKgIMKgIMKgIMKg
IGNsb2NrIMKgNTkuOTRIejxicj7CoCA2NDB4NDgwICgweDMwNCkgMjUuMTc1TUh6IC1IU3luYyAt
VlN5bmM8YnI+wqAgwqAgwqAgwqAgaDogd2lkdGggwqAgNjQwIHN0YXJ0IMKgNjU2IGVuZCDCoDc1
MiB0b3RhbCDCoDgwMCBza2V3IMKgIMKgMCBjbG9jayDCoDMxLjQ3S0h6PGJyPsKgIMKgIMKgIMKg
IHY6IGhlaWdodCDCoDQ4MCBzdGFydCDCoDQ5MCBlbmQgwqA0OTIgdG90YWwgwqA1MjUgwqAgwqAg
wqAgwqAgwqAgY2xvY2sgwqA1OS45NEh6PGJyPsKgIDY0MHg0ODAgKDB4MzA1KSAyNS4xNzBNSHog
LUhTeW5jIC1WU3luYzxicj7CoCDCoCDCoCDCoCBoOiB3aWR0aCDCoCA2NDAgc3RhcnQgwqA2NTYg
ZW5kIMKgNzUyIHRvdGFsIMKgODAwIHNrZXcgwqAgwqAwIGNsb2NrIMKgMzEuNDZLSHo8YnI+wqAg
wqAgwqAgwqAgdjogaGVpZ2h0IMKgNDgwIHN0YXJ0IMKgNDkwIGVuZCDCoDQ5MiB0b3RhbCDCoDUy
NSDCoCDCoCDCoCDCoCDCoCBjbG9jayDCoDU5LjkzSHo8YnI+RFAtMiBkaXNjb25uZWN0ZWQgKG5v
cm1hbCBsZWZ0IGludmVydGVkIHJpZ2h0IHggYXhpcyB5IGF4aXMpPGJyPsKgIMKgIMKgIMKgIElk
ZW50aWZpZXI6IDB4MmUyPGJyPsKgIMKgIMKgIMKgIFRpbWVzdGFtcDogwqAxMTMyOTQ8YnI+wqAg
wqAgwqAgwqAgU3VicGl4ZWw6IMKgIHVua25vd248YnI+wqAgwqAgwqAgwqAgQ2xvbmVzOiDCoCDC
oDxicj7CoCDCoCDCoCDCoCBDUlRDczogwqAgwqAgwqAwIDEgMiAzPGJyPsKgIMKgIMKgIMKgIFRy
YW5zZm9ybTogwqAxLjAwMDAwMCAwLjAwMDAwMCAwLjAwMDAwMDxicj7CoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCAwLjAwMDAwMCAxLjAwMDAwMCAwLjAwMDAwMDxicj7CoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCAwLjAwMDAwMCAwLjAwMDAwMCAxLjAwMDAwMDxicj7CoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoGZpbHRlcjogPGJyPsKgIMKgIMKgIMKgIENzY01hdHJpeDogNjU1
MzYgMCAwIDAgMCA2NTUzNiAwIDAgMCAwIDY1NTM2IDAgPGJyPsKgIMKgIMKgIMKgIEJvcmRlckRp
bWVuc2lvbnM6IDQgPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHN1cHBvcnRlZDogNDxicj7C
oCDCoCDCoCDCoCBCb3JkZXI6IDAgMCAwIDAgPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHJh
bmdlOiAoMCwgNjU1MzUpPGJyPsKgIMKgIMKgIMKgIFNpZ25hbEZvcm1hdDogRGlzcGxheVBvcnQg
PGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHN1cHBvcnRlZDogRGlzcGxheVBvcnQ8YnI+wqAg
wqAgwqAgwqAgQ29ubmVjdG9yVHlwZTogRGlzcGxheVBvcnQgPGJyPsKgIMKgIMKgIMKgIENvbm5l
Y3Rvck51bWJlcjogMiA8YnI+wqAgwqAgwqAgwqAgX0Nvbm5lY3RvckxvY2F0aW9uOiAyIDxicj5E
UC0zIGRpc2Nvbm5lY3RlZCAobm9ybWFsIGxlZnQgaW52ZXJ0ZWQgcmlnaHQgeCBheGlzIHkgYXhp
cyk8YnI+wqAgwqAgwqAgwqAgSWRlbnRpZmllcjogMHgyZTM8YnI+wqAgwqAgwqAgwqAgVGltZXN0
YW1wOiDCoDExMzI5NDxicj7CoCDCoCDCoCDCoCBTdWJwaXhlbDogwqAgdW5rbm93bjxicj7CoCDC
oCDCoCDCoCBDbG9uZXM6IMKgIMKgPGJyPsKgIMKgIMKgIMKgIENSVENzOiDCoCDCoCDCoDAgMSAy
IDM8YnI+wqAgwqAgwqAgwqAgVHJhbnNmb3JtOiDCoDEuMDAwMDAwIDAuMDAwMDAwIDAuMDAwMDAw
PGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDAuMDAwMDAwIDEuMDAwMDAwIDAuMDAw
MDAwPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDAuMDAwMDAwIDAuMDAwMDAwIDEu
MDAwMDAwPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZmlsdGVyOiA8YnI+wqAgwqAg
wqAgwqAgQ3NjTWF0cml4OiA2NTUzNiAwIDAgMCAwIDY1NTM2IDAgMCAwIDAgNjU1MzYgMCA8YnI+
wqAgwqAgwqAgwqAgQm9yZGVyRGltZW5zaW9uczogNCA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgc3VwcG9ydGVkOiA0PGJyPsKgIMKgIMKgIMKgIEJvcmRlcjogMCAwIDAgMCA8YnI+wqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgcmFuZ2U6ICgwLCA2NTUzNSk8YnI+wqAgwqAgwqAgwqAgU2lnbmFs
Rm9ybWF0OiBEaXNwbGF5UG9ydCA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgc3VwcG9ydGVk
OiBEaXNwbGF5UG9ydDxicj7CoCDCoCDCoCDCoCBDb25uZWN0b3JUeXBlOiBEaXNwbGF5UG9ydCA8
YnI+wqAgwqAgwqAgwqAgQ29ubmVjdG9yTnVtYmVyOiAxIDxicj7CoCDCoCDCoCDCoCBfQ29ubmVj
dG9yTG9jYXRpb246IDEgPGJyPmBgYDxicj48YnI+VGhpcyBpcyB0aGUgeHJhbmRyIG91dHB1dCB3
aXRoIHRoZSBpbnRlbCBjb25maWd1cmF0aW9uIGZpbGU6PGJyPmBgYDxicj5TY3JlZW4gMDogbWlu
aW11bSA4IHggOCwgY3VycmVudCAxOTIwIHggMTIwMCwgbWF4aW11bSAzMjc2NyB4IDMyNzY3PGJy
PkRQMSBkaXNjb25uZWN0ZWQgcHJpbWFyeSAobm9ybWFsIGxlZnQgaW52ZXJ0ZWQgcmlnaHQgeCBh
eGlzIHkgYXhpcyk8YnI+wqAgwqAgwqAgwqAgSWRlbnRpZmllcjogMHg0Mzxicj7CoCDCoCDCoCDC
oCBUaW1lc3RhbXA6IMKgMTQ2NDY8YnI+wqAgwqAgwqAgwqAgU3VicGl4ZWw6IMKgIHVua25vd248
YnI+wqAgwqAgwqAgwqAgQ2xvbmVzOiDCoCDCoDxicj7CoCDCoCDCoCDCoCBDUlRDczogwqAgwqAg
wqAwIDEgMjxicj7CoCDCoCDCoCDCoCBUcmFuc2Zvcm06IMKgMS4wMDAwMDAgMC4wMDAwMDAgMC4w
MDAwMDA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgMC4wMDAwMDAgMS4wMDAwMDAg
MC4wMDAwMDA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgMC4wMDAwMDAgMC4wMDAw
MDAgMS4wMDAwMDA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBmaWx0ZXI6IDxicj7C
oCDCoCDCoCDCoCBCcm9hZGNhc3QgUkdCOiBBdXRvbWF0aWMgPGJyPsKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIHN1cHBvcnRlZDogQXV0b21hdGljLCBGdWxsLCBMaW1pdGVkIDE2OjIzNTxicj7CoCDC
oCDCoCDCoCBhdWRpbzogYXV0byA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgc3VwcG9ydGVk
OiBmb3JjZS1kdmksIG9mZiwgYXV0bywgb248YnI+RFAyIGRpc2Nvbm5lY3RlZCAobm9ybWFsIGxl
ZnQgaW52ZXJ0ZWQgcmlnaHQgeCBheGlzIHkgYXhpcyk8YnI+wqAgwqAgwqAgwqAgSWRlbnRpZmll
cjogMHg0NDxicj7CoCDCoCDCoCDCoCBUaW1lc3RhbXA6IMKgMTQ2NDY8YnI+wqAgwqAgwqAgwqAg
U3VicGl4ZWw6IMKgIHVua25vd248YnI+wqAgwqAgwqAgwqAgQ2xvbmVzOiDCoCDCoDxicj7CoCDC
oCDCoCDCoCBDUlRDczogwqAgwqAgwqAwIDEgMjxicj7CoCDCoCDCoCDCoCBUcmFuc2Zvcm06IMKg
MS4wMDAwMDAgMC4wMDAwMDAgMC4wMDAwMDA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgMC4wMDAwMDAgMS4wMDAwMDAgMC4wMDAwMDA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgMC4wMDAwMDAgMC4wMDAwMDAgMS4wMDAwMDA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqBmaWx0ZXI6IDxicj7CoCDCoCDCoCDCoCBCcm9hZGNhc3QgUkdCOiBBdXRvbWF0aWMg
PGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHN1cHBvcnRlZDogQXV0b21hdGljLCBGdWxsLCBM
aW1pdGVkIDE2OjIzNTxicj7CoCDCoCDCoCDCoCBhdWRpbzogYXV0byA8YnI+wqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgc3VwcG9ydGVkOiBmb3JjZS1kdmksIG9mZiwgYXV0bywgb248YnI+RFAzIGNv
bm5lY3RlZCAxOTIweDEyMDArMCswICgweDRjKSBub3JtYWwgKG5vcm1hbCBsZWZ0IGludmVydGVk
IHJpZ2h0IHggYXhpcyB5IGF4aXMpIDBtbSB4IDBtbTxicj7CoCDCoCDCoCDCoCBJZGVudGlmaWVy
OiAweDQ1PGJyPsKgIMKgIMKgIMKgIFRpbWVzdGFtcDogwqAxNDY0Njxicj7CoCDCoCDCoCDCoCBT
dWJwaXhlbDogwqAgdW5rbm93bjxicj7CoCDCoCDCoCDCoCBHYW1tYTogwqAgwqAgwqAxLjA6MS4w
OjEuMDxicj7CoCDCoCDCoCDCoCBCcmlnaHRuZXNzOiAxLjA8YnI+wqAgwqAgwqAgwqAgQ2xvbmVz
OiDCoCDCoDxicj7CoCDCoCDCoCDCoCBDUlRDOiDCoCDCoCDCoCAwPGJyPsKgIMKgIMKgIMKgIENS
VENzOiDCoCDCoCDCoDAgMSAyPGJyPsKgIMKgIMKgIMKgIFRyYW5zZm9ybTogwqAxLjAwMDAwMCAw
LjAwMDAwMCAwLjAwMDAwMDxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAwLjAwMDAw
MCAxLjAwMDAwMCAwLjAwMDAwMDxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAwLjAw
MDAwMCAwLjAwMDAwMCAxLjAwMDAwMDxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGZp
bHRlcjogPGJyPsKgIMKgIMKgIMKgIEVESUQ6IDxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAw
MGZmZmZmZmZmZmZmZjAwMGQxMjExNzU3MDAzMDAwMDxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCAxNTE1MDEwNGE1MDAwMDc4ZTI4MDQyYWM1MTMwYjQyNTxicj7CoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCAxMDUwNTMwMDAwMDAwMTAxMDEwMTAxMDEwMTAxMDEwMTxicj7CoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCAwMTAxMDEwMTAxMDEyODNjODBhMDcwYjAyMzQwMzAyMDxicj7CoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCAzNjAwMDc0NDIxMDAwMDFhMjEzMjgwYTA3MGIwMjM0MDxicj7CoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCAzMDIwMzYwMDA3NDQyMTAwMDAxYTAwMDAwMGZkMDAzODxicj7CoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCA0YzFlNTMxMTAwMGEyMDIwMjAyMDIwMjAwMDAwMDBmYzxicj7CoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCAwMDQzNDgzNzM1MzEzMTQyMGEyMDIwMjAyMDIwMDAxMjxicj7C
oCDCoCDCoCDCoCBCcm9hZGNhc3QgUkdCOiBBdXRvbWF0aWMgPGJyPsKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIHN1cHBvcnRlZDogQXV0b21hdGljLCBGdWxsLCBMaW1pdGVkIDE2OjIzNTxicj7CoCDC
oCDCoCDCoCBhdWRpbzogYXV0byA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgc3VwcG9ydGVk
OiBmb3JjZS1kdmksIG9mZiwgYXV0bywgb248YnI+wqAgMTkyMHgxMjAwICgweDRjKSAxNTQuMDAw
TUh6ICtIU3luYyAtVlN5bmMgKmN1cnJlbnQgK3ByZWZlcnJlZDxicj7CoCDCoCDCoCDCoCBoOiB3
aWR0aCDCoDE5MjAgc3RhcnQgMTk2OCBlbmQgMjAwMCB0b3RhbCAyMDgwIHNrZXcgwqAgwqAwIGNs
b2NrIMKgNzQuMDRLSHo8YnI+wqAgwqAgwqAgwqAgdjogaGVpZ2h0IDEyMDAgc3RhcnQgMTIwMyBl
bmQgMTIwOSB0b3RhbCAxMjM1IMKgIMKgIMKgIMKgIMKgIGNsb2NrIMKgNTkuOTVIejxicj7CoCAx
OTIweDEyMDAgKDB4ODMpIDEyOC4zMzBNSHogK0hTeW5jIC1WU3luYzxicj7CoCDCoCDCoCDCoCBo
OiB3aWR0aCDCoDE5MjAgc3RhcnQgMTk2OCBlbmQgMjAwMCB0b3RhbCAyMDgwIHNrZXcgwqAgwqAw
IGNsb2NrIMKgNjEuNzBLSHo8YnI+wqAgwqAgwqAgwqAgdjogaGVpZ2h0IDEyMDAgc3RhcnQgMTIw
MyBlbmQgMTIwOSB0b3RhbCAxMjM1IMKgIMKgIMKgIMKgIMKgIGNsb2NrIMKgNDkuOTZIejxicj5I
RE1JMSBkaXNjb25uZWN0ZWQgKG5vcm1hbCBsZWZ0IGludmVydGVkIHJpZ2h0IHggYXhpcyB5IGF4
aXMpPGJyPsKgIMKgIMKgIMKgIElkZW50aWZpZXI6IDB4NDY8YnI+wqAgwqAgwqAgwqAgVGltZXN0
YW1wOiDCoDE0NjQ2PGJyPsKgIMKgIMKgIMKgIFN1YnBpeGVsOiDCoCB1bmtub3duPGJyPsKgIMKg
IMKgIMKgIENsb25lczogwqAgwqAgVkdBMTxicj7CoCDCoCDCoCDCoCBDUlRDczogwqAgwqAgwqAw
IDEgMjxicj7CoCDCoCDCoCDCoCBUcmFuc2Zvcm06IMKgMS4wMDAwMDAgMC4wMDAwMDAgMC4wMDAw
MDA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgMC4wMDAwMDAgMS4wMDAwMDAgMC4w
MDAwMDA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgMC4wMDAwMDAgMC4wMDAwMDAg
MS4wMDAwMDA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBmaWx0ZXI6IDxicj7CoCDC
oCDCoCDCoCBhc3BlY3QgcmF0aW86IEF1dG9tYXRpYyA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgc3VwcG9ydGVkOiBBdXRvbWF0aWMsIDQ6MywgMTY6OTxicj7CoCDCoCDCoCDCoCBCcm9hZGNh
c3QgUkdCOiBBdXRvbWF0aWMgPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHN1cHBvcnRlZDog
QXV0b21hdGljLCBGdWxsLCBMaW1pdGVkIDE2OjIzNTxicj7CoCDCoCDCoCDCoCBhdWRpbzogYXV0
byA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgc3VwcG9ydGVkOiBmb3JjZS1kdmksIG9mZiwg
YXV0bywgb248YnI+SERNSTIgZGlzY29ubmVjdGVkIChub3JtYWwgbGVmdCBpbnZlcnRlZCByaWdo
dCB4IGF4aXMgeSBheGlzKTxicj7CoCDCoCDCoCDCoCBJZGVudGlmaWVyOiAweDQ3PGJyPsKgIMKg
IMKgIMKgIFRpbWVzdGFtcDogwqAxNDY0Njxicj7CoCDCoCDCoCDCoCBTdWJwaXhlbDogwqAgdW5r
bm93bjxicj7CoCDCoCDCoCDCoCBDbG9uZXM6IMKgIMKgIFZHQTE8YnI+wqAgwqAgwqAgwqAgQ1JU
Q3M6IMKgIMKgIMKgMCAxIDI8YnI+wqAgwqAgwqAgwqAgVHJhbnNmb3JtOiDCoDEuMDAwMDAwIDAu
MDAwMDAwIDAuMDAwMDAwPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDAuMDAwMDAw
IDEuMDAwMDAwIDAuMDAwMDAwPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDAuMDAw
MDAwIDAuMDAwMDAwIDEuMDAwMDAwPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZmls
dGVyOiA8YnI+wqAgwqAgwqAgwqAgYXNwZWN0IHJhdGlvOiBBdXRvbWF0aWMgPGJyPsKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIHN1cHBvcnRlZDogQXV0b21hdGljLCA0OjMsIDE2Ojk8YnI+wqAgwqAg
wqAgwqAgQnJvYWRjYXN0IFJHQjogQXV0b21hdGljIDxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCBzdXBwb3J0ZWQ6IEF1dG9tYXRpYywgRnVsbCwgTGltaXRlZCAxNjoyMzU8YnI+wqAgwqAgwqAg
wqAgYXVkaW86IGF1dG8gPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHN1cHBvcnRlZDogZm9y
Y2UtZHZpLCBvZmYsIGF1dG8sIG9uPGJyPkhETUkzIGRpc2Nvbm5lY3RlZCAobm9ybWFsIGxlZnQg
aW52ZXJ0ZWQgcmlnaHQgeCBheGlzIHkgYXhpcyk8YnI+wqAgwqAgwqAgwqAgSWRlbnRpZmllcjog
MHg0ODxicj7CoCDCoCDCoCDCoCBUaW1lc3RhbXA6IMKgMTQ2NDY8YnI+wqAgwqAgwqAgwqAgU3Vi
cGl4ZWw6IMKgIHVua25vd248YnI+wqAgwqAgwqAgwqAgQ2xvbmVzOiDCoCDCoCBWR0ExPGJyPsKg
IMKgIMKgIMKgIENSVENzOiDCoCDCoCDCoDAgMSAyPGJyPsKgIMKgIMKgIMKgIFRyYW5zZm9ybTog
wqAxLjAwMDAwMCAwLjAwMDAwMCAwLjAwMDAwMDxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCAwLjAwMDAwMCAxLjAwMDAwMCAwLjAwMDAwMDxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCAwLjAwMDAwMCAwLjAwMDAwMCAxLjAwMDAwMDxicj7CoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoGZpbHRlcjogPGJyPsKgIMKgIMKgIMKgIGFzcGVjdCByYXRpbzogQXV0b21hdGlj
IDxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBzdXBwb3J0ZWQ6IEF1dG9tYXRpYywgNDozLCAx
Njo5PGJyPsKgIMKgIMKgIMKgIEJyb2FkY2FzdCBSR0I6IEF1dG9tYXRpYyA8YnI+wqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgc3VwcG9ydGVkOiBBdXRvbWF0aWMsIEZ1bGwsIExpbWl0ZWQgMTY6MjM1
PGJyPsKgIMKgIMKgIMKgIGF1ZGlvOiBhdXRvIDxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBz
dXBwb3J0ZWQ6IGZvcmNlLWR2aSwgb2ZmLCBhdXRvLCBvbjxicj5WR0ExIGRpc2Nvbm5lY3RlZCAo
bm9ybWFsIGxlZnQgaW52ZXJ0ZWQgcmlnaHQgeCBheGlzIHkgYXhpcyk8YnI+wqAgwqAgwqAgwqAg
SWRlbnRpZmllcjogMHg0OTxicj7CoCDCoCDCoCDCoCBUaW1lc3RhbXA6IMKgMTQ2NDY8YnI+wqAg
wqAgwqAgwqAgU3VicGl4ZWw6IMKgIHVua25vd248YnI+wqAgwqAgwqAgwqAgQ2xvbmVzOiDCoCDC
oCBIRE1JMSBIRE1JMiBIRE1JMzxicj7CoCDCoCDCoCDCoCBDUlRDczogwqAgwqAgwqAwIDEgMjxi
cj7CoCDCoCDCoCDCoCBUcmFuc2Zvcm06IMKgMS4wMDAwMDAgMC4wMDAwMDAgMC4wMDAwMDA8YnI+
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgMC4wMDAwMDAgMS4wMDAwMDAgMC4wMDAwMDA8
YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgMC4wMDAwMDAgMC4wMDAwMDAgMS4wMDAw
MDA8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBmaWx0ZXI6IDxicj5WSVJUVUFMMSBk
aXNjb25uZWN0ZWQgKG5vcm1hbCBsZWZ0IGludmVydGVkIHJpZ2h0IHggYXhpcyB5IGF4aXMpPGJy
PsKgIMKgIMKgIMKgIElkZW50aWZpZXI6IDB4NGE8YnI+wqAgwqAgwqAgwqAgVGltZXN0YW1wOiDC
oDE0NjQ2PGJyPsKgIMKgIMKgIMKgIFN1YnBpeGVsOiDCoCBubyBzdWJwaXhlbHM8YnI+wqAgwqAg
wqAgwqAgQ2xvbmVzOiDCoCDCoDxicj7CoCDCoCDCoCDCoCBDUlRDczogwqAgwqAgwqAzPGJyPsKg
IMKgIMKgIMKgIFRyYW5zZm9ybTogwqAxLjAwMDAwMCAwLjAwMDAwMCAwLjAwMDAwMDxicj7CoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAwLjAwMDAwMCAxLjAwMDAwMCAwLjAwMDAwMDxicj7C
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAwLjAwMDAwMCAwLjAwMDAwMCAxLjAwMDAwMDxi
cj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGZpbHRlcjogPGJyPmBgYDxicj48YnI+SSB0
ZXN0ZWQgdGhpcyBvbiBtdWx0aXBsZSBtYWNoaW5lcyBhbmQgb24gYm90aCBEZWJpYW4gOSBhbmQg
MTAgKHdpdGggWDExLCBub3Qgd2F5bGFuZCkuIElzIHRoaXMgYSBidWcsIG9yIHdoeSBkb2VzIHRo
aXMgaGFwcGVuPzxicj48L2Rpdj4NCg==
--0000000000006cbb930594f3eeea--

--===============0810277519==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0810277519==--
