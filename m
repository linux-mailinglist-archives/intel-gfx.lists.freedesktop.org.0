Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2518B1CDD68
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 16:41:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B537893EA;
	Mon, 11 May 2020 14:41:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8087E89BDB
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 May 2020 11:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1589111904;
 bh=HaolsulA2iA1jIHGPOSHuu3xMwW4WQUwjAJ4P0d+tb4=;
 h=X-UI-Sender-Class:To:From:Subject:Date;
 b=BL1HMv8Q4xOWv7F7qxrSl1GHRSpkAO9pDglfXijkaROJa+LYzlf5stuts0H3Uqzjy
 WyczXQCF7sieprlNXGAk+DRTZpiIIvlMwED+bppuEzkG3PccelFzYRBHNgYK1/4BSh
 ZP6+hkBBw6H9UYbohBXlGiskgkGA8UVLU6tNJEeo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.179.23] ([217.225.88.7]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MA7GS-1jQYn42nQg-00BaMy for
 <intel-gfx@lists.freedesktop.org>; Sun, 10 May 2020 13:58:24 +0200
To: intel-gfx@lists.freedesktop.org
From: Arno <star@gmx.li>
Message-ID: <06e3677e-1aae-dca5-6315-85591a12a14f@gmx.li>
Date: Sun, 10 May 2020 13:58:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:acRaxVoGgNxVYzULLVm1e61OaiXze7HVVsU9Yd32ch8k8panfMt
 vwnpmkDYlR3n2xWPJivN7QmzVKwhkk/zggrDabeyovMpYYYPZ1SO5O6GAcHeGT3VUipO+Nh
 10wQCWnay8TwYrRbdqfNlzkbDWo3CsbnKSJiteLeMpsG55SNa3pGPZUeSj0bVh+hcELy2W6
 i6XSrioBDkExznHxjwA+g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:m0xzog+sUBs=:QtVTb2g4fLz2wIxYVKlJ34
 Tl51msA97rPnD1rCPyYSHKea10S8v9cSSW7Ae2EdGfjNyzSUoLcPz85VWv7m5TRCJYPi4EEdU
 EOPHDASm9vTTKdodpaHPpTC9AXMFR8ssTzVFqwbUqIaPvOE+yFhfxQsWyDSvR/HG9MaY0pvCO
 us+yzcRdqJPYogbOV4x0chwqFon/KllJgdY3Lvo77a6oGwAhtJiigUzbhsRsWnLXwBnW6TyUP
 Ej22pf/ctAKTDUoQoaL3wV5ZePJ1qXTfizK4+Y+a/aISk1JsqkrRZ6e1rMuDqVJG/eY47P21g
 Yx6M4pPwC0qPN5DE1/yykOrs5V2vq1h1GhIDhSw9cvC6oX5R5Wb2dVFRae67nAD8jZY2H8VoX
 lKZW0Y5FwvLnnhVLYdCrOqlt3ygp4m+x4nw/Zk/6eC24xM2Ja+TwptqZrB+SWFJgD8B6MDhqQ
 cJOgjwUMKpDL9ClXWeUQQQG8HGSTMzP4LkiOfQ7Hfm6nyK8eF8Fhbf+Y+6xT/kisYySKEGWXf
 YDyCmOtD3ks1GCHI09gkx/wPcOqMLssNAmGTzfmLoOjjlNwIEt1Wol0002SCCSL9Gff48qpdu
 Gq18LpNvQE5TVz2VNOJV2P3fbCSMez/9JWA+caatifaXDayNTBJXbE72/NueRWBpVNneaZEPr
 5rJah81/YSPIuOXxkZLmwKcLv4OYerPATfq0M5HucKupGsn8zaARI7NnHeiBID40W29Gi2gVh
 nYmYckH2NepJjV/TMkdlWdpiymVoUGPLOUYgVNb24aRDrH9p2oZ6zc7SisY2BLa5zS9k3CCkV
 mb98eZDx/TSsFi9/BEtcprsY7vS0py94jUzMhfBQxSJiA8N8AVD9CBiIXxSp+oxvRIgI+/zr/
 OHAEEHzG8BUyotBVwB+imgUPYivXCUWOyktwXOGgSsEyPLjpRTVUozpUbbgyCsruSO04XpST3
 mMGKZ/nwjUlULj7VBpLZIhQlD9zF/ur2rNhGvyMH4FCWq0kJu/xJ3HlmyTfCoLpel1/cx72uE
 lrmKNxgFmVFlGHZCJHzSTogqqau/YyEUnIq0u/jH0Gr/IJpcnixtv4RLUgE4cfLMzrkqMcviw
 Z78kiDqJuMeBURLmxyCcefaV8kw36h9VV610WyT0awWhygFE7rzbOuVnaeh1PXERGZ423N/bS
 BOaFmosiX8kV7b1FSxtazOOSiB3X8ZTsNhsyzFW86g+BObNc0a2ObUsURnYGu665DK0gs=
X-Mailman-Approved-At: Mon, 11 May 2020 14:41:08 +0000
Subject: [Intel-gfx] i915 flickers after return from suspend
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
Content-Type: multipart/mixed; boundary="===============1369779917=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============1369779917==
Content-Type: multipart/alternative;
 boundary="------------E3874F6BCA20E82069C2BBC5"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------E3874F6BCA20E82069C2BBC5
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

My laptop (core m5-6y54) starts flickering after returning from Suspend
(to RAM) or other commands touching the video driver (xrandr ...)

 From kernel (tested with up to 5.7) I get the message:

[drm:intel_cpu_fifo_underrun_irq_handler [i915]] *ERROR* CPU pipe A FIFO
underrun

I added a bug with more details here:

https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1872760

but guys from Ubuntu seems not able to help.

This happend not in older kernels, but these have the problem not to go
in power save states. So I think the fix of that

https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1863489

causes this regression.

Hope someone can help. For a=C2=A0 laptop it is better to have both - stan=
dby
and power saving. Thank you.

Arno



--------------E3874F6BCA20E82069C2BBC5
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p>My laptop (core m5-6y54) starts flickering after returning from
      Suspend (to RAM) or other commands touching the video driver
      (xrandr ...)</p>
    <p>From kernel (tested with up to 5.7) I get the message:</p>
    <p id=3D"yui_3_10_3_1_1589111239449_1529">[drm:intel_<wbr>cpu_fifo_<wb=
r>underrun_<wbr>irq_handler
      [i915]] *ERROR* CPU pipe A FIFO underrun</p>
    <p>I added a bug with more details here:</p>
    <p><a class=3D"moz-txt-link-freetext" href=3D"https://bugs.launchpad.n=
et/ubuntu/+source/linux/+bug/1872760">https://bugs.launchpad.net/ubuntu/+s=
ource/linux/+bug/1872760</a></p>
    <p>but guys from Ubuntu seems not able to help.</p>
    <p>This happend not in older kernels, but these have the problem not
      to go in power save states. So I think the fix of that=C2=A0</p>
    <p><a class=3D"moz-txt-link-freetext" href=3D"https://bugs.launchpad.n=
et/ubuntu/+source/linux/+bug/1863489">https://bugs.launchpad.net/ubuntu/+s=
ource/linux/+bug/1863489</a></p>
    <p>causes this regression. <br>
    </p>
    <p>Hope someone can help. For a=C2=A0 laptop it is better to have both=
 -
      standby and power saving. Thank you.</p>
    <p>Arno<br>
    </p>
    <p><br>
    </p>
  </body>
</html>

--------------E3874F6BCA20E82069C2BBC5--

--===============1369779917==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1369779917==--
