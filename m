Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 550CD3FFFE3
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 14:38:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 351A36E88A;
	Fri,  3 Sep 2021 12:38:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com
 [IPv6:2a00:1450:4864:20::229])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C28016E88A
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 12:37:59 +0000 (UTC)
Received: by mail-lj1-x229.google.com with SMTP id g14so9395319ljk.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Sep 2021 05:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=technolu-st.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=pOhj5B9dNlEjnfrMpdMgK/cfU2vZwWCPCO72r+6ESYU=;
 b=i4ztKOHGhtHJhBJ9LvRh/ailczZUVpge05gQaH57cXibICfmYkHh0iZKvv7Uoa7CYK
 qj7xeLjHBPlOXPpFyeTBfJ6+5AY8v4+01sJFMtWNP4acc/Qll6mT86B2x8cMDr1KCbmL
 Efxma9jFSB0giggSn1dlIrpUUyYpnf6vCxirM3Cx7extzlRMI8y1FbcM2xmIaxKtIZPk
 RQ0Rdyl49391GDy/g9uEx2SuMM16P/JxqIaOALs1NRMjL0CaOXFzQuzt8T/47999DPEF
 cymv43LmHUIbI3RfzbMXwxYjT3xhPxBHdp1kig5lAn6C5OEfQI1u5MH+6F67uElEv4N/
 KINA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=pOhj5B9dNlEjnfrMpdMgK/cfU2vZwWCPCO72r+6ESYU=;
 b=RpZtCJUGSAjGgBNspVmqNXBCM29DOpKeQETwIqdzDCYfTY7FyyhOE9neUagg45ZGAJ
 Ht8DyNOkT+Hs9Fzzetqeh3W+u7+qrlzGRdptKpBOvmq30Zb0ShHOmYDmL/Myiqi31475
 PASPnADmh8ct832NQMgRXOa05O0aVVO4Atas95Sdl706eF/OetCtdiFrPbkZQzNErJIw
 45ViPcw+8jymULoQoq5/dO7jdMA9AkZk2lDqdGMkzxeZ82UjHTo+ITtvmU4PiYYQTxZq
 3JPbH9g5UUNdBoq9Ed8mX6T37sX24If/pA4jeawKEpvQ/xb0BmNwKI2RyyrSwX6D7mYq
 Xrrg==
X-Gm-Message-State: AOAM532jkN6kZtmIoMLnRse3+sHx6vp5xmYkL/bZO1TbKghlKy49ypWq
 iGpHuESgVx838QGDVLeqAipJj5Ulv4YkqU6tU+mZJ1WIfjHop7FuaT8=
X-Google-Smtp-Source: ABdhPJyZK9yqyiQMBl7vB5mGwWk0OmeWL9Hjf7jscSo8X6pUUOmDvlRfLGE15/SH3Qe4nl+0IawrT+Z3wkm9KjojDHI=
X-Received: by 2002:a2e:730b:: with SMTP id o11mr2698911ljc.176.1630672677843; 
 Fri, 03 Sep 2021 05:37:57 -0700 (PDT)
MIME-Version: 1.0
From: wi nk <wink@technolu.st>
Date: Fri, 3 Sep 2021 14:37:47 +0200
Message-ID: <CAHUdJJUuzSNQv4R4grM7ezwV3rn844CNM=-keYsKz9_0wYXCvQ@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] i915 with Dell XPS 9310
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

Hello all,

   I've been following recent kernels on this dell laptop for almost a
year now to work through some issues with the ath11k module.  I've
been experiencing random occasional video artifacts for most of that
time.  These artifacts would cause the i915 module to report some kind
of underrun (sorry I don't have those logs any longer).  At some point
around 5.10 the artifacts turned into full panics that needed a reboot
instead of some waiting and jiggling.  Kalle reported here:
http://lists.infradead.org/pipermail/ath11k/2021-August/001451.html
that there was a commit he could revert to fix it.  I was unable to
reproduce that fix by reverting it.

I'm now running 5.14.0 and it seems to have changed behavior again.
Instead of the machine hard locking (ie: no caps lock even), it seems
to recover after a bit and then I can see this in dmesg:

[226387.152234] DMAR: DRHD: handling fault status reg 3
[226387.152244] DMAR: [DMA Write NO_PASID] Request device
[0x00:0x02.0] fault addr 0xf0afc000 [fault reason 0x07] Next page
table ptr is invalid
[226402.058857] i915 0000:00:02.0: [drm] GPU HANG: ecode 12:0:00000000
[226402.058876] i915 0000:00:02.0: [drm] Resetting rcs0 for stopped
heartbeat on rcs0
[276353.590922] clocksource: timekeeping watchdog on CPU4: hpet
retried 2 times before success

<snip, later>

[345312.963065] DMAR: DRHD: handling fault status reg 3
[345312.963077] DMAR: [DMA Write NO_PASID] Request device
[0x00:0x02.0] fault addr 0xf21ec000 [fault reason 0x07] Next page
table ptr is invalid
[345323.814583] Asynchronous wait on fence
0000:00:02.0:gnome-shell[2707]:1a15a6 timed out
(hint:intel_atomic_commit_ready [i915])
[345327.672581] i915 0000:00:02.0: [drm] GPU HANG: ecode
12:1:85dffffb, in signal-desktop [26051]
[345327.672606] i915 0000:00:02.0: [drm] Resetting rcs0 for stopped
heartbeat on rcs0
[345327.672656] i915 0000:00:02.0: [drm] signal-desktop[26051] context
reset due to GPU hang

I'm not sure what the DMAR messages are about, I included them in case
they're relevant.  How can I debug this further?  I'll gladly enable
whatever is needed :)

Thanks!
