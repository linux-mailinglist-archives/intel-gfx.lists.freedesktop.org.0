Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E952C30CD39
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 21:44:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CB3389C84;
	Tue,  2 Feb 2021 20:44:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F14C589C84
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 20:44:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23777115-1500050 for multiple; Tue, 02 Feb 2021 20:44:00 +0000
MIME-Version: 1.0
In-Reply-To: <20210202201044.GE66899@orsosgc001.ra.intel.com>
References: <20210202075417.28230-1-umesh.nerlige.ramappa@intel.com>
 <161225425527.704.15100937094980533411@build.alporthouse.com>
 <20210202201044.GE66899@orsosgc001.ra.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Date: Tue, 02 Feb 2021 20:44:01 +0000
Message-ID: <161229864133.28247.5042397934712917550@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/3] i915/perf: Store a mask of valid OA
 formats for a platform
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Umesh Nerlige Ramappa (2021-02-02 20:10:44)
> On Tue, Feb 02, 2021 at 08:24:15AM +0000, Chris Wilson wrote:
> >Ok, this looks as compact and readable as writing it as a bunch of
> >tables. I presume there's a reason you didn't just use generation rather
> >than platform.
> >
> >switch (gen) {
> >case 7:
> >       haswell();
> >       break;
> >case 8 .. 11:
> >       broadwell();
> >       break;
> >case 12:
> >       tigerlake();
> >       break;
> >}
> >if you wanted to stick with a switch rather than an if-else tree for the
> >ranges.
> 
> only haswell is supported on gen7 and gen12 may define new formats that 
> are platform specific.
> 
> How about a mix? -
> 
> if (gen == 7 && haswell)
>         haswell();
> else if (gen >= 8 && gen <= 11)
>         broadwell;
> else
>         gen12_formats();
> 
> gen12_formats can choose to use the switch if formats vary between 
> platforms.

I didn't mind the platform switch too much, so no need to change at the
moment. I just worry that it's more typing to maintain :)

What I thought you were going to do (from the subject) were tables with
a platform_mask for applicability,  but that I feell would be just as
much typing, now and in the future.


I thought support started at Haswell, so the other gen7 were not a
concern? But yes, if we look at how we end up doing it else where it's a
mix of gen and platform

if (gen >= 12)
	gen12_formats;
else if (gen >= 8)
	gen8_formats;
else if (IS_HSW)
	hsw_formats;
else
	MISSING_CASE(gen)

At the end of the day, you're the person who is typing this, so it's up
to you how much effort you want to spend now to save later. :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
