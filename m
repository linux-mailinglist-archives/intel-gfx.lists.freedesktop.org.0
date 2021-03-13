Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A38343C57
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 10:10:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DE6189DE6;
	Mon, 22 Mar 2021 09:10:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 306 seconds by postgrey-1.36 at gabe;
 Sat, 13 Mar 2021 21:31:18 UTC
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F6FB6E091
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Mar 2021 21:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1615671075;
 bh=/LnjI6MxOSKQOpnbvDth5WmSDythBgfIOy/wJXZlo+w=;
 h=X-UI-Sender-Class:Subject:From:To:Cc:Date;
 b=Ac0JdxaC9ffqeiXIHTMl4hR+7b+RTxwEcPeRDn11Ewfq0a5BKCbgUbubLngOL0YYQ
 oZA2SleO6M7ud54stvuMAMAAdrPRovC2mekcPCLhv1iQ64wUc4SCvP+94AsAZRyNEj
 GOf4Y+RHbQ+nfwvjTmChD1FE3MgVYPpf4jVGy2SI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.0.4] ([84.155.190.211]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M9Wuq-1lOVA2338m-005bPu; Sat, 13
 Mar 2021 22:26:06 +0100
Message-ID: <042237f49ed1fd719126a3407d7c909e49addbea.camel@gmx.net>
From: Mario =?ISO-8859-1?Q?H=FCttel?= <mario.huettel@gmx.net>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 13 Mar 2021 22:26:05 +0100
User-Agent: Evolution 3.38.4 
MIME-Version: 1.0
X-Provags-ID: V03:K1:ZFfHUbvavtj6gHHjNICSFWrFyxTV5TdOvEHsCemudYP19iZi8AS
 taJtPSRqRVAI8DaEACn+VnFmsYv+6mhPRYRqgOwkOobYWhr4xnXewX+QqSdJfUkAi//ZLf+
 v42sEBoQ8s9Vw+GesgA/GF9Ozv9mMGXgm9ae4X7KC30iy7FK+l/xRWLUyr+mj1qZzUwB5ht
 rQDAN82ioP/vK60YElcJw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1IgzVpy6cIU=:miWV3O8LJ6Q5b9OMMNn21J
 VcySQDCTNcyB1/zKYp9IImcjpTNXZAYptaMV6jXEQvgKnwBDrhM2JyeOWGwQrZoIWGksZZvWa
 uHI5oImtamDzMZOZhIR7jGAtk4bdhzbgd6uMKK4GHjwUdgEeg6kplDJpT2M8GHuVJ1zdGeJVf
 Xg9lO6DUrvWLdlpzjYHdXmHvGtWnqw418bi39JXH7CnQatbcFt4lK/ZxGdUjJ0WMsPjb1s0sD
 33AgYPzMODO1WqCYVFBhVHZ+nQUTHleAaQ/ZRoL03XWObVQ/d+K/Asg8g7RZ7trMw2tNS6boR
 kc1zr5RBemJeSQYNz5U5c6bpoJajjx9PADPy0dEWUuV0H3nTp1T0OgwT/b5c5JDXFZpTXG/Jj
 dkV/JFZUHq0B2oY04oltW4pUutjWsyEBQx2AqUQDguwVpUclJwGPQOzl09As2PhUGFuCektht
 CEQ3yXWuXMibZ9qOHe3upRRxH9Qj6A8ilZ9MSJGY22LVCRLLuCsiHjqAqWwqkvQvoWFCJ//H5
 QmCNq0pH7TRfxRzGqTLeLcj4oLMbxRQ71KJ9YGaS/Nu2F4fFy0HWqdKyvZOPRKze1Muj7x0HW
 +dFkVbTJ76s/GHjg4yQKJeHYYtt71H2+rie1SUCe1jvsWdhSa3CCRmhkRYw2hYn8093THxR32
 gmGfaTpKTEniWB0SrV/weX9mfpsKxo03/iScArscBjk8op195vWccSSh25yjUW7dirI0aTS8M
 Vtp6RcbXCLllFL01fI97NRnXuHm4Sr3NpuJHqmV1RNcsIO/gTvBRV9OpdDDOXYP6SAJnWywDX
 x5F6gbNnUc0VF+KVX5kmdOsrg2bgkW7+gD6WCZXbWzRyzUkKaI85eTyEsXADbpuQrDdQruNoX
 XPUBXwJAlcVkvyhKZL/w==
X-Mailman-Approved-At: Mon, 22 Mar 2021 09:10:09 +0000
Subject: [Intel-gfx] BUG in i915/i915_pci.c, commit fe0f1e3
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello,

I want to report a bug. I have a PC with Intel i7-6700K processor (with
integrated graphics) and an AsRock Fatal1ty Z170 Gaming K6 mainboard. I
use the CPU's integrated graphics.
My system is Archlinux with Kernel v5.11.6.

Using this setup, my PC works normally. However, when I shut it down,
the power is not cut. Fans and LEDs keep spinning. I couldn't detect
any other problem when shutting down. Drives etc. stop as expected and
the video is blank. Even after waiting several hours, the system
doesn't power down.
I haven't yet found any other people on the internet that have the same
bug.

I used git bisect to find the commit that causes this behavior on my
machine. The result is: fe0f1e3bfdfeb53e18f1206aea4f40b9bd1f291c is the
first bad commit.

I hope this is the correct mailing list for this issue.

Let me know if you need more information or someone to test it.

Thanks

Mario


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
