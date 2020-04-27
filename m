Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE521BA3BA
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 14:40:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF5646E29D;
	Mon, 27 Apr 2020 12:40:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1D816E29D
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 12:40:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21034984-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 13:40:47 +0100
MIME-Version: 1.0
In-Reply-To: <20200427085408.13879-9-chris@chris-wilson.co.uk>
References: <20200427085408.13879-1-chris@chris-wilson.co.uk>
 <20200427085408.13879-9-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Message-ID: <158799124667.17035.5417544090527568555@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 27 Apr 2020 13:40:46 +0100
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915/gt: Restore aggressive
 post-boost downclocking
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

Quoting Chris Wilson (2020-04-27 09:54:08)
> We reduced the clocks slowly after a boost event based on the
> observation that the smoothness of animations suffered. However, since
> reducing the evalution intervals, we should be able to respond to the
> rapidly fluctuating workload of a simple desktop animation and so
> restore the more aggressive downclocking.
> 
> References: 2a8862d2f3da ("drm/i915: Reduce the RPS shock")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

*** ANECDOTAL ***

In measurements on Icelake, the chrome power test [frankly a horrible
test that is mostly idle, and has no feedback on UX quality metrics]:

before:
7214.52,Joules,power/energy-pkg/,2302922017998,100.00,,
2927.24,Joules,power/energy-cores/,2302922022934,100.00,,
840.42,Joules,power/energy-gpu/,2302922024419,100.00,,
166620,M,i915/actual-frequency/,2302922026977,100.00,,
1905549106177,ns,i915/rc6-residency/,2302922028812,100.00,,
290532899942,ns,i915/rcs0-busy/,2302922032428,100.00,,
0,ns,i915/bcs0-busy/,2302922034987,100.00,,
0,ns,i915/vcs0-busy/,2302922034237,100.00,,

after:
6713.43,Joules,power/energy-pkg/,2228832095923,100.00,,
2802.07,Joules,power/energy-cores/,2228832104461,100.00,,
587.04,Joules,power/energy-gpu/,2228832106940,100.00,,
132124,M,i915/actual-frequency/,2228832095439,100.00,,
1957236452947,ns,i915/rc6-residency/,2228832089455,100.00,,
265365231893,ns,i915/rcs0-busy/,2228832089043,100.00,,
0,ns,i915/bcs0-busy/,2228832085764,100.00,,
0,ns,i915/vcs0-busy/,2228832084838,100.00,,

Some video playback (which is mostly pushing GL textures through to the
compositor, nothing uses libva):

before:
9512.58,Joules,power/energy-pkg/,995287278884,100.00,,
2631.12,Joules,power/energy-cores/,995287289129,100.00,,
3661.46,Joules,power/energy-gpu/,995287294283,100.00,,
715924,M,i915/actual-frequency/,995287298748,100.00,,
389009635708,ns,i915/rc6-residency/,995287303131,100.00,,
409781702935,ns,i915/rcs0-busy/,995287305584,100.00,,
0,ns,i915/bcs0-busy/,995287310428,100.00,,
0,ns,i915/vcs0-busy/,995287314214,100.00,,

after:
8013.46,Joules,power/energy-pkg/,994173360392,100.00,,
2077.22,Joules,power/energy-cores/,994173366417,100.00,,
2518.69,Joules,power/energy-gpu/,994173370072,100.00,,
464025,M,i915/actual-frequency/,994173363951,100.00,,
351530351036,ns,i915/rc6-residency/,994173363398,100.00,,
632114323426,ns,i915/rcs0-busy/,994173364895,100.00,,
0,ns,i915/bcs0-busy/,994173367723,100.00,,
0,ns,i915/vcs0-busy/,994173369162,100.00,,

I spot checked a few games during scenes where the GPU was not capped
out, and it was drawing about ~100MHz less for ~1W less.

*** ANECDOTAL ***

The other data point is a happy user in #1698 who was wise enough to
demand both smooth UX and low power.

We do have a huge issue in that we have no insight into P&P in CI.
Not even a single machine running a desktop config and playing back a
move and reporting power usage vs dropped frames. Nor even running the
battery tests to check that we do suspend in S3.

I spent some time trying to find some benchmarks we could use to measure
jank and power used and found nothing useful. The closest would be
wrapping rapl around gnome-shell-perf-tool, but that is still a long way
from capturing enough use cases.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
