Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 297CA1CD39A
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 10:18:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81E0D89F99;
	Mon, 11 May 2020 08:18:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C64FD6E227
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 08:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1589185127;
 bh=J4RfFWIfCX+n/ofk7Er2DKCJneTANqazrtHYKLaoO7U=;
 h=X-UI-Sender-Class:To:From:Subject:Date;
 b=iJaxLGpOULOZjJ8k/aRmqZOcndgQ2ObReH85DP8gXxmN7Czn5Tca+G5hQDzhDnPep
 XA2EgGMrFpF+03qZhazGd8RqiYP1b23rEHjv3cKk7qyUfGbUZ2zd/9BPLSesc5s6GU
 LgzeT0JaPaDOV+STsqeY2pPitFLGSb+Qq2zI6g20=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.3.33] ([217.225.88.7]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MvK0R-1jGOL03KZF-00rHMM for
 <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 10:18:47 +0200
To: intel-gfx@lists.freedesktop.org
From: Arno <star@gmx.li>
Message-ID: <aab05507-450d-5643-20af-500dec6bc59b@gmx.li>
Date: Mon, 11 May 2020 10:18:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:ZKZH+Ty9LoLsSrD6/4//XbUpyzpoPppl9b9XABjpviHrCq1UoRw
 yjq9eLZrGZyvP/lEt1JoUQFa9a+tIt7SlwipBQWB7S2VXEVERt7icze/EKZtYzo92Etlt1p
 yqYcZ2xC1Gm39KIAmCs/rbfV2rH5+hr2CvBY8DX9d+HPYbIbbd05ShD5DMJUTw88cIOPpAp
 F1jNjVQWrnRX40upYkP6g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:n+A73Kx1Byg=:JNG7z4rzN0XTW4GtGZtyhw
 nueW7wT6pAN6PkR4byHWS9eiflur6l0BnyrigYMXXPxPnvXTfiCBlmXx0AYEW1DXuGFI4Ing1
 WOa8DRyN4PEXeuGimAIabPGUUctysKk54hJ/G8ZhjJG5fkB4zMnKI/P28H44u2kDxMC0X+zmH
 vpyw86+p9GmjEuEqMdEh9xt65c5hJOjfEyyFfMGk2IvorGIfRk+qWFzVyuPG/cKNAW8XyaGOd
 //+B1mK58aTpwyongHuF6i94LkngQVCLBKrLk4k1qdm8vSzXENUhX8AdPI9nl5/0lves+cS1P
 mnX/e7fZGbwdac4ugY7JJy4iZQEj+OY1GY99lCx3c97wu0QV1zuO9ippLIMC70iJEG7vgck/N
 vZZfuui9n72VkQ5uFzeptRCmFnHMoHNDYkDaGprQhY7edjWlnOtrEFg/N+YeUNC/WKEpfSb3i
 SQdn7Cu48V+/Y8iTKChhPg7bC4QAFRsvziibSwcWZYWU4SSPUHfH265+23UhUyc9J8Z+WJ7Lz
 f5Dim4wtQ5dNpv/Rrsi9xA/MQjFxJlATRurXAotOiP3BRQYC+bysnYirURBPzNCd4o8RnjA61
 7Zjf5nGE5+aVTgH8PjPGGAx7HmaxUimrd26GsahbPYZmQHq+3Oomzh3ny/zaTdzoyFjJH43Bo
 Qs11Ous5PiwLT27W17OzpOoNf9RcWBp45LwbX3DXt+2ZkdlVxuB6/s3OGAmeMiR3yj3ut6+hv
 JVFuhocRGO4kpLNlH2/O0gbnvr7aK+PURQ2yGBRomhrB1BaeJnY/sXd0vMgHtjr+4yITrP9Rq
 VFoV6XRSiH/aulOvJ8JSE0r1h+prwArdgl9EeYnnGd4vkRfk8JZHfZwXnVQs88ldxNYMnpy8M
 +i5o/OOYShKSh++ufdvgrqYjqiWkjfwkWLUpQX12sgnDN5DcUNRAQbGnqajwYqqaeJs2SBv92
 4yUHvTzzEPMOKVg+TaohOGUTRTeTERykcsQ63gZDrWy6sR8gZUVz3i/CEH7MW0OYftYoNIj7F
 wiXDyuUUqOTsYNie+0WVOvJxPOIm0jkwFbXHl3swID3KuYWQ2agdxufC4c4GUB8hxvA6rrYzO
 6UgTlkebDAeuHSPuWTBj2JCZlsm0MaPy/os/BnqxhuSDwuuNnhsM7kknfGH3YVUs58nG4/0YT
 io2hgI2I7GObjsdoHzMg79lxkdNFu/8tAAksbWJBVH8zBapDRNjLar3js7cjVcLyn1TAI=
Subject: [Intel-gfx] intel_cpu_fifo_underrun_irq_handler [i915]] *ERROR* CPU
 pipe A FIFO underrun
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
Content-Type: multipart/mixed; boundary="===============1886098530=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============1886098530==
Content-Type: multipart/alternative;
 boundary="------------94AC8D44052152EEF9C9990C"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------94AC8D44052152EEF9C9990C
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

My laptop (core m5-6y54) starts flickering after returning from Suspend
(to RAM) or other commands touching the video driver (xrandr, powertop
=2D-calibrate, ...)

 From kernel (tested with up to 5.7) I get the message:

[drm:intel_cpu_fifo_underrun_irq_handler [i915]] *ERROR* CPU pipe A FIFO
underrun

I added a bug with more details here:

https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1872760

but guys from Ubuntu seems not able to help (as it is an upstream bug) !?

This happend not in older kernels, but these have the problem not to go
in power save states. So I think the fix of that

https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1863489

causes this regression.

Hope someone can help. For a=C2=A0 laptop it is better to have both - stan=
dby
and power saving. Thank you.

Arno



--------------94AC8D44052152EEF9C9990C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <div class=3D"moz-text-html" lang=3D"x-unicode">
      <p>My laptop (core m5-6y54) starts flickering after returning from
        Suspend (to RAM) or other commands touching the video driver
        (xrandr, powertop --calibrate, ...)</p>
      <p>From kernel (tested with up to 5.7) I get the message:</p>
      <p id=3D"yui_3_10_3_1_1589111239449_1529">[drm:intel_<wbr>cpu_fifo_<=
wbr>underrun_<wbr>irq_handler
        [i915]] *ERROR* CPU pipe A FIFO underrun</p>
      <p>I added a bug with more details here:</p>
      <p><a class=3D"moz-txt-link-freetext"
          href=3D"https://bugs.launchpad.net/ubuntu/+source/linux/+bug/187=
2760">https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1872760</a></p>
      <p>but guys from Ubuntu seems not able to help (as it is an
        upstream bug) !?<br>
      </p>
      <p>This happend not in older kernels, but these have the problem
        not to go in power save states. So I think the fix of that=C2=A0</=
p>
      <p><a class=3D"moz-txt-link-freetext"
          href=3D"https://bugs.launchpad.net/ubuntu/+source/linux/+bug/186=
3489">https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1863489</a></p>
      <p>causes this regression. <br>
      </p>
      <p>Hope someone can help. For a=C2=A0 laptop it is better to have bo=
th
        - standby and power saving. Thank you.</p>
      <p>Arno<br>
      </p>
      <p><br>
      </p>
    </div>
  </body>
</html>

--------------94AC8D44052152EEF9C9990C--

--===============1886098530==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1886098530==--
