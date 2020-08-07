Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E72C223E793
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 09:12:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C64216E063;
	Fri,  7 Aug 2020 07:12:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CDB96E063
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 07:12:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22056909-1500050 for multiple; Fri, 07 Aug 2020 08:12:37 +0100
MIME-Version: 1.0
In-Reply-To: <CAPM=9twb2jhWhwvD3HWjG04ihxnYv+EgJ0rQPwL_aHSjJn-NNQ@mail.gmail.com>
References: <20200802164412.2738-1-chris@chris-wilson.co.uk>
 <CAPM=9twmsrNehJjFZrehwORg-Nyzo_cEq8CiY5=bzsOv8G7pPA@mail.gmail.com>
 <159639701401.26228.4061968059817196468@build.alporthouse.com>
 <CAPM=9twb2jhWhwvD3HWjG04ihxnYv+EgJ0rQPwL_aHSjJn-NNQ@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Dave Airlie <airlied@gmail.com>
Date: Fri, 07 Aug 2020 08:12:36 +0100
Message-ID: <159678435631.14655.6966712365882745877@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] Time, where did it go?
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Dave Airlie (2020-08-04 22:45:25)
> On Mon, 3 Aug 2020 at 05:36, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Quoting Dave Airlie (2020-08-02 18:56:44)
> > > On Mon, 3 Aug 2020 at 02:44, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > > >
> > > > Lots of small incremental improvements to reduce execution latency
> > > > which basically offsets the small regressions incurred when compared to
> > > > 5.7. And then there are some major fixes found while staring agape at
> > > > lockstat.
> > >
> > > What introduced the 5.7 regressions? are they documented somewhere.
> >
> > No. There's a 5.8-rc1 bisect (to the merge but not into rc1) for
> > something in the core causing perf fluctuations, but I have not yet
> > reproduced that one to bisect into the rc1 merge. [The system that showed
> > the issue has historically seen strong swings from p-state setup, might
> > be that again?]. This is from measuring simulated transcode workloads that
> > we've built up to track KPI. That we can then compare against the real
> > workloads run by other groups.
> >
> > > What is the goal here, is there a benchmark or application that this
> > > benefits that you can quantify the benefits?
> >
> > Entirely motivated by not wanting to have to explain why there's even a
> > 1% regression in their client metrics. They wouldn't even notice for a
> > few releases by which point the problem is likely compounded and we
> > suddenly have crisis meetings.
> >
> > > Is the lack of userspace command submission a problem vs other vendors here?
> >
> > If you mean HW scheduling (which is the bit that we are most in dire need
> > of for replacing this series), not really, our closest equivalent has not
> > yet proven itself, at least in previous incarnations, adequate to their
> > requirements.
> 
> I don't think this sort of thing is acceptable for upstream. This is
> the platform problem going crazy.
> Something regresses in the kernel core, and you refactor the i915
> driver to get horribly more complicated to avoid fixing the core
> kernel regressions?

Far from it. We are removing the complication we added to submit to the
HW from two places and only allowing it to be done from one, with the
resulting simplification and removal of the associated locking.

The impact on v5.7 can be seen as bimodal distributions, like

+mB--------------------------------------------------------------------+
|                                                                b     |
|                                                                bbb   |
|                                                               bbbb   |
|                                                               bbbbb  |
|                                                             b bbbbb  |
|                                                             b bbbbb  |
|   a                                                 b   b   b bbbbb  |
|   aa                                                b  bb   bbbbbbb  |
|  aaa                                                b  bb  bbbbbbbbb |
|  aaa                                            b   bb bbbbbbbbbbbbb |
|a aaaa                                           b b bbbbbbbbbbbbbbbbb|
|   A_|                                                          MA_|  |
+----------------------------------------------------------------------+
    N                Min           Max        Median           Avg        Stddev
a  16( 12)      0.879662      0.889174     0.8855545    0.88558567  0.0010029988
b 224(159)      0.971574       1.00869     0.9999995     1.0005503  0.0018680506

where it took a substantial of runs to settle at the level of previous
kernels. That repeats across many different simulations.

With v5.8, the slow start is gone again
+mB--------------------------------------------------------------------+
|                                                 bbba.                |
|                                               bbb..a. aaa            |
|                                             b bb.......aabaab        |
|                                             b .b.......a.....        |
|                                      b aa  bbb...............bb      |
|            a           a a b   b  ba b aab bbb...............bb      |
|            aa     a    a aa.   b  b.bbaa.ba.b.................b  b   |
|b.a   a     .aa .  abbb ..aa.b a. ab..b...b..b....................b .b|
|                                                  |_MA____|           |
|                                               |___A___|              |
+----------------------------------------------------------------------+
    N                Min           Max        Median           Avg        Stddev
a 224(159)      0.971574       1.00869     0.9999995     1.0005503  0.0018680506
b 240(155)      0.971079       1.00927      0.999126    0.99905576  0.0016999716
Difference with 100.0% confidence: -0.00149458 (-0.15%)

As for the impact of shaving an average of 0.4us from the submission
paths?

+mB--------------------------------------------------------------------+
|                                   d                                  |
|                                   -                                  |
|                                   +.                                 |
|                                  d+. c  a                            |
|                                ..d+- c  a                           b|
|b              b      b   ab ab.-.-++-.-a.aa d         b    b        b|
|                                 |__MA____|                           |
|                                   A_|                                |
|                                   A_|                                |
|                                   A|                                 |
+----------------------------------------------------------------------+
                    Min           Max        Median           Avg        Stddev
1 client           -4.01           3.8         0.245         0.822     1.6734194
2 clients         -15.88          15.4          0.08    0.21222222    0.36365429
4 clients          -1.68          1.36         0.045    0.12916667    0.28137514
8 clients          -1.49          4.49         0.055         0.043   0.045227818
(normalized, %)

And this simulations do not even touch upon the implementation bugs that cause
quadratic worst case complexity in a linear algorithm.

> This has to stop, if Intel can't stop it internally, i.e. the GEM
> kernel team hasn't got the sort of power, then it has to stop
> upstream.
> 
> This is a hard NAK for this sort of refactoring, now and in the future.

Your assessment of the nature of the changes is flawed.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
