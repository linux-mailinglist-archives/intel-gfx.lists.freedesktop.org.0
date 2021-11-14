Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB3E44F66A
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Nov 2021 05:36:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CD816E0B7;
	Sun, 14 Nov 2021 04:36:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com
 [IPv6:2a00:1450:4864:20::132])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E1EE6E0B7
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Nov 2021 04:36:26 +0000 (UTC)
Received: by mail-lf1-x132.google.com with SMTP id c32so33528865lfv.4
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Nov 2021 20:36:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=serpentine-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=ew64f4IA7XN5QCRfx4dKOl0TcYw0Yc0LR6ewOyb1SAs=;
 b=K2ruNwr1YSG50L4Jz2qCB0wfZVx4StqJC3M5AWYtH0GWdCcxcimZadd2H40lOqlzsN
 Nknx+MLn5s4NoCPEkUMLZH8F8j+b5GXWFN2FtPJFVeurOIj68Kr5ldR01bwpqjgA9Hxo
 4HwP2+m7VIgn4KbLDBYFwKm7sZHDGrbWdQBHmBwOkcBl6NcWDgflVlEPUK58s1ewEMsx
 39pQBqgZpalZSl4e072C0cUojtkQEgPYebRc6YLFPHqZ+xfwz1H6cs0U5H09xqZwJxaL
 AUQDPs+raJQgysOAcIt8oW4xaMi5skeQlvXN74Y7MlcU0aMYK0Y7R+ZnGYptZvMkRFk+
 7K/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ew64f4IA7XN5QCRfx4dKOl0TcYw0Yc0LR6ewOyb1SAs=;
 b=FhNJQEDTntFONiGOjB/Q5rYxdE9/y1GptIpwwr9bN+IPvt3hIi0TzC725vvwqlkgLV
 e8qWb5X8SpTzoyHEAoqxRe4ghFxbp+bLswNRJPPCOJNHgeAKUEOT7kcBFfCPKnZ7J4zU
 Jkc0ZQuRQsdneXoEh2/LYJ/zCWmIDk/QqkFm0JSXt4AKRxGrrz1RZ5Q7eyDX7KEMRFP5
 JfPloqrcK331heGE/G8+kPnOAZoJewUhMrRZ8OBy4aecNzjalzFpadCAayi1gOKJ1ZfG
 1JtmNYHEXud1W2t4lpxBZrnp7fOIIXkM7lnN3yYB41Q5pnzmJmtZS1uMVbO/9m7QwD6x
 ssNA==
X-Gm-Message-State: AOAM533lVhKGDCBZFqu384K1xIhtmqGkkgf9i7KKCSylF45b8i68GhwP
 fa2ZfXZLoW29FKoR9zZ2uDV8GgMdDSu/hCg+c5zADm0IcLkQKBqg
X-Google-Smtp-Source: ABdhPJzHfQXadTgQ+M5Z5ajNMKvRax6BiwJDtpWS7o0kCoXhBvQ8oMR1YOwpZ2BrSK54Vu7LymiB/BDXIKG+VOf8eMY=
X-Received: by 2002:a05:6512:261f:: with SMTP id
 bt31mr25412811lfb.506.1636864584630; 
 Sat, 13 Nov 2021 20:36:24 -0800 (PST)
MIME-Version: 1.0
From: "Bryan O'Sullivan" <bos@serpentine.com>
Date: Sat, 13 Nov 2021 20:36:14 -0800
Message-ID: <CACw0niK_XL8P99LZQjmgaMQ12X8=LRaN4YQ1Dbu_Bta8trK3tQ@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000001cdae005d0b83c46"
Subject: [Intel-gfx] Can't drive 4K monitor at full resolution over DP
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--0000000000001cdae005d0b83c46
Content-Type: text/plain; charset="UTF-8"

I have a new Framework laptop running Fedora 35, stock kernel package
5.14.16-301, BDB version 240.

My CPU/GPU is an 11th gen i7-1165G7, connected via a USB-C-to-DP cable to a
2014-era Dell P2715Q monitor that supports 3840x2160@60Hz over DP (my Mac
drives it this way just fine).

With i915 debugging enabled, I can see the 4K modeline being detected and
discarded because CLOCK_HIGH. Here's some debug output in a paste as it's
longish and verbose: https://pastebin.com/reGcmxYF

Line 17 of that paste seems weird, where the value of everything is zero
for some reason?

Here's some output from the monitor-edid tool. If there's any more
information I can supply to track this down, I'm happy to do what I can.

Name: DELL P2715Q
EISA ID: DEL40bd
EDID version: 1.4
EDID extension blocks: 1
Screen size: 59.7 cm x 33.6 cm (26.97 inches, aspect ratio 16/9 = 1.78)
Gamma: 2.2
Digital signal
Max video bandwidth: 540 MHz

        HorizSync 31-140
        VertRefresh 29-75

        # Monitor preferred modeline (60.0 Hz vsync, 133.3 kHz hsync, ratio
16/9, 163 dpi)
        ModeLine "3840x2160" 533.25 3840 3888 3920 4000 2160 2163 2168 2222
-hsync +vsync

        # Monitor supported CEA modeline (60.0 Hz vsync, 67.5 kHz hsync,
ratio 16/9, 81 dpi)
        ModeLine "1920x1080" 148.5 1920 2008 2052 2200 1080 1084 1089 1125
+hsync +vsync

--0000000000001cdae005d0b83c46
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have a new Framework laptop running Fedora 35, stock ker=
nel package<br>5.14.16-301, BDB version 240.<br><br>My CPU/GPU is an 11th g=
en i7-1165G7, connected via a USB-C-to-DP cable to a<br>2014-era Dell P2715=
Q monitor that supports 3840x2160@60Hz over DP (my Mac<br>drives it this wa=
y just fine).<br><br>With i915 debugging enabled, I can see the 4K modeline=
 being detected and<br>discarded because CLOCK_HIGH. Here&#39;s some debug =
output in a paste as it&#39;s longish and verbose: <a href=3D"https://paste=
bin.com/reGcmxYF">https://pastebin.com/reGcmxYF</a><br><br>Line 17 of that =
paste seems weird, where the value of everything is zero<br>for some reason=
?<br><br>Here&#39;s some output from the monitor-edid tool. If there&#39;s =
any more<br>information I can supply to track this down, I&#39;m happy to d=
o what I can.<br><br>Name: DELL P2715Q<br>EISA ID: DEL40bd<br>EDID version:=
 1.4<br>EDID extension blocks: 1<br>Screen size: 59.7 cm x 33.6 cm (26.97 i=
nches, aspect ratio 16/9 =3D 1.78)<br>Gamma: 2.2<br>Digital signal<br>Max v=
ideo bandwidth: 540 MHz<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 HorizSync 31-140=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 VertRefresh 29-75<br><br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # Monitor preferred modeline (60.0 Hz vsync, 133.3 kHz hsync, ra=
tio<br>16/9, 163 dpi)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ModeLine &quot;3840x21=
60&quot; 533.25 3840 3888 3920 4000 2160 2163 2168 2222<br>-hsync +vsync<br=
><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Monitor supported CEA modeline (60.0 Hz =
vsync, 67.5 kHz hsync,<br>ratio 16/9, 81 dpi)<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ModeLine &quot;1920x1080&quot; 148.5 1920 2008 2052 2200 1080 1084 1089=
 1125<br>+hsync +vsync<br></div>

--0000000000001cdae005d0b83c46--
