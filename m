Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBE3AD0399
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Jun 2025 15:57:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 367CB10EAAA;
	Fri,  6 Jun 2025 13:57:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="SNTvuPQQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 434 seconds by postgrey-1.36 at gabe;
 Fri, 06 Jun 2025 13:57:13 UTC
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96D2510EAAA
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Jun 2025 13:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metux.net;
 s=s1-ionos; t=1749218230; x=1749823030; i=info@metux.net;
 bh=pcdPiTultI8pPBPXf52ZXd1V9mMX7I/C5F1hjTnw9NI=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:From:Subject:
 Content-Type:Content-Transfer-Encoding:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=SNTvuPQQWUqBhk46AXUkLsin3jfZz0VkhTc6QV8gj5tsnw5ETQcY2R/YjxhiOoZl
 Y9+52YVcWk4paZdJN4doWUsp/ScbjDDyJIbgB5Ch5xntCzaFSpF7uGWgKg3C51DB5
 BKxKUJ0vFsVNSzZyDGrFbCVxxWrkX4+DNuH1SbbJkTwYga/zclWn8Lo34Gu6xvnSA
 wm7mFwzSbTZOC/1rYGXZSOBOL7RIf34m5jA9DKjeE3a82Bui3RcAGS4op+2eh/Jvw
 8DGXm1LLLReyw1yycwl6puGcHIpmbq6AKHtdDnrDDW015botFpoSzI8TnETFnCo/P
 hAeKGUomgA3ns3C9nA==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from [192.168.1.132] ([95.114.52.200]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MnaY1-1v6k142KI9-00gFOR; Fri, 06 Jun 2025 15:48:15 +0200
Message-ID: <1a9d25cc-6f02-4fe3-a206-3388c07ab81f@metux.net>
Date: Fri, 6 Jun 2025 15:50:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: tl
To: freebsd-x11@freebsd.org, phoronix@phoronix.com,
 Bryan Lunduke <bryanlunduke@gmail.com>, mark.filion@collabora.com,
 arek@hiler.eu, NetBSD Users's Discussion List <netbsd-users@netbsd.org>,
 illumos-discuss <discuss@lists.illumos.org>, office@linuxconsulting.ro,
 christian.linhart@clinhart.com, Xfce general discussion list
 <xfce@xfce.org>, "xorg-devel@lists.x.org" <xorg-devel@lists.x.org>,
 martin-eric.racine@iki.fi, =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, intel-gfx@lists.freedesktop.org,
 keithp@keithp.com, kusma@kusma.xyz, contact@emersion.fr, agomez@igalia.com,
 Alan Coopersmith <alan.coopersmith@oracle.com>, harry.wentland@amd.com,
 =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@lindev.ch>,
 Stefan Dirsch <sndirsch@suse.com>, neal@gompa.dev
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
Subject: History repeats: Redhat censored me on freedesktop.org - Xlibre fork
 release coming in few days
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:SQ1gJpKoFkHuu4DMDYJxHjFHEcd0EtcMDJPh5IW9VfVtNxCdqCu
 mOJFkOzjHnUJzWf3YRE4sPIvp48zaqBv4ho/E+XOZ5ru3rrD7y9E8x8YMq4pICIs8NndDzx
 qzS4zMu5Qwprs048WknJAeE9fYVK0m9PpRAqMl8Hw83eeXYKvswru/JwNGYAT0UVsnkAjFq
 TWMShJbfyRcNnkVHB04Mw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:Vu3QZGpB5oM=;AoZtNrp8E1TLlT25vJQ93Df/oAH
 wCTJA1OAduQSduB2ERNJeaqgYbkXYop+ja7JCEW1FIlEu5eQYVVv7FUt6LAtL3KCLaNm9FLm3
 oCmgoz0owTVR+jGS9/bDYnFw5UGmY5QBTJroJOE9iB96e55eDofw1VTjJ3zH/6fVqcm5lYjDT
 EYKqTuv/Wd2Q0jxcRXvvK5WcVInXe15x/3wbqLNJqelyPUySv+rK8TQy1EVS35mcqI9J/RsNX
 ufAZfnyBOV9Rq/ls+ekBEmvhDu5tnp4/j7KTBC8+6c1G5ZugYvN6JSIV8fft3CjHnf2Kt3rQi
 m6RqiyMCCQXvGAJOVxe3lI+ZunjOl5KPXQ1JfWY5P/cx5QTVHiWrPbnyhZKKLPTzW80s0s61m
 18hBfbX8jbDrmY1ZMVoEGLgxniW0agVFSZ8p85OJ0Pr0EBCDQUfwuhwo+YPQvScwlH/hdGBi6
 4+H4K/yL7f3Sgh9nN3m1JsCni0uP59sBq/tzbCkslnZCYzT45eYbKJwkA19e9i1Itg1/ZVMge
 BTQnLSIstqvZC6+dWpSbMuyvky5KX9Aw1g0P119umroIMCQvq6vXqyySjM8mFy+uMhnzIqEDs
 QkDfwQNsDEMPVtewd8kx4oZ/3cxlakvlW0aRuRXplYtmxbt/63p47WEvNDEnutoqWwsuziKJ1
 RPdpbiFacPOTqUSNEQNsLt+PiHCwJr0XIS1sYsQqtbxI5fbhGYao8lcwUmsPVhiMTF8kA+68z
 1r8JyZ+m2eMtj8il9n/3rPL/Cp6ImKr/ta95eQx2BLwQQPXszmfatYJ3Btf3a9QFJ3HgsO/l+
 4Ye/BtjoKxEchdwbvwUywa9Hljj4X+pZzgqB7CbhMHX4x/H47iSZmwHvT9pZyOAKo4tNsR5Vo
 7qHL0XH8mI6cE+ndXAESDSiMyEz1hk4FxgFu7rXU7+r1BwVO+oVPkwcuDXUWhkfIZuK7L2vu+
 YWC/yDXAY4OmeRa+eA661lkNrtwd/vWQnM4l4l0s5emcJB0b0oTanFgVF/pO6uYBhvwRg6Bjf
 DxBS6vYIrOvFRPQKkqGzUBBt/f0zb4yLkfjABI4kRAQHlmSoApwRV03GmSPvgmfvDs9VTggTl
 j6Qz6iw/3rfgWVR+QQIfcsyQePN7wgC9uq78WDXTDXwEP7pdG+7+jJ0UGZ3x21g7rq1oTJS6X
 6jF/e1tvP0FM9C80trmLQDmfpt2IYgHciX1VBo5Njy/CqGdi+HOmx16cKPovXKPOzsRiIDDi1
 PAqeyJTp7YER7d7Ms7VJ436NGvkqlrpJbhUiCfXTXeMbZkxfjmMRv9M3qgCaVhh0ZE1szcM24
 jfj5s2PjhVTQiAsqh9Mg2HUeFnryksQyRzvu551ZOyqJ5KMg6Lsuo94TPbkoytTGj8ySK7ZfE
 iiLKgh5jaLYFgVx2i2gUZmsp1cMtnfB9sSOw9GrEna0JO+oR6+g1ikB53aOdNwcpGh1TwWaTD
 WDhQwmg==
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

Hello everybody,


this morning, Redhat employees banned me from the freedesktop.org gitlab
infrastructure - so censored all my work (not just on Xorg). They killed
my account, my git repos, my tickets in Xorg and closed all my merge
requests. And then making fun on social media about it.

They fired the shot that's heared around the world.

So much for freedesktop.org being "independent" and embracing freedom.=20
Perhaps we should nominate them for the next Orwell award.

It's now clear that freedesktop.org *is* the Redskirts, and they want
to kill X. By the way, the same corporation that tied to proprietarize a
lot of FOSS code, including the Linux kernel (and I've been one of those=
=20
who warned them about terminating our license grants them).

My most evil heresies probably were:

a) forking Xorg and making *actual progress*
b) talking to a journalist whose name must not be spoken in many other
    Redhat/IBM tax evasion outlets, like GNOME (they're also banning
    honorable long time contributors for just mentioning that name)
c) inviting *anybody* to join me, without discrimination

I don't know why, but it really looks they're quite scared by one guy
that's just trying to actually bring X11 forward. Hard to find he right
words for telling how honored I'm about that.

This didn't actually surprise me, I knew this would be coming for about
a year now. Just didn't expect them to do such an extremely irrational
and dumb move. Now I'm taking great pleasure seeing the Streisand effect
kicking in (my inbox is exploding). Thanks for that great publicity.

It's not the first time this happens in FOSS world, and it's not the
first time it's happening in X: remember what Xfree86 board did to
the honorable Keith Packard, back about two decades ago - what lead to
the birth of Xorg and the death of Xfree86. Same is happening again.

History repeats itself.

And now the Redskirts placed me onto the same stage as the great
honorable Keith Packard. WOOOOW.

Just to be clear, I didn't want to fork, I tried my best to work
together with the Xorg team. But I knew for long time, this day would
come. Xorg has been captured by Redhat, in order to get rid of destroy
competition. The necessary consequence is a fork, more competition.

For those interested in bringing X forward, feel free to join the
mailing list:

https://www.freelists.org/list/xlibre

Git repo:
https://github.com/X11Libre/xserver.git

I'm expecting to be banned from whole freedesktop.org mail system, too.
Excommunication unfortunately had become a common thing in the so-called
"free software" world - GNOME is just one of many examples. So if you
don't hear anymore from me on freedesktop.org lists, you know what's
going on.

Join the xlibre mailing list to stay tuned.

Together, we'll make X great again.


have fun,
=2D-mtx

=2D-=20
=2D--
Enrico Weigelt, metux IT consult
Free software and Linux embedded engineering
info@metux.net -- +49-151-27565287

