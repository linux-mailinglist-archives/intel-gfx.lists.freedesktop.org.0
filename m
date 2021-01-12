Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A482F3B92
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 21:39:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAD6389C96;
	Tue, 12 Jan 2021 20:39:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51F9889C96
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 20:39:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23577966-1500050 for multiple; Tue, 12 Jan 2021 20:39:42 +0000
MIME-Version: 1.0
In-Reply-To: <87im82klo9.fsf@gaia.fi.intel.com>
References: <20210108105608.18424-1-chris@chris-wilson.co.uk>
 <87im82klo9.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 12 Jan 2021 20:39:40 +0000
Message-ID: <161048398029.9280.6299529944985317684@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Rearrange ktime_get to
 reduce latency against CS
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

Quoting Mika Kuoppala (2021-01-12 19:19:34)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > In our tests where we measure the elapsed time on both the CPU and CS
> > using a udelay, our CS results match the udelay much more accurately
> > than the ktime (even when using ktime_get_fast_ns). With preemption
> > disabled, we can go one step lower than ktime and use local_clock.
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2919
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> > index ca080445695e..c3d965279fc3 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> > @@ -112,11 +112,11 @@ static int __measure_timestamps(struct intel_context *ce,
> >  
> >       /* Run the request for a 100us, sampling timestamps before/after */
> >       preempt_disable();
> 
> Do you need to promote this to local_irq_disable() ?

Good suggestion. Will try to remember if we still see discrepancies...

Interrupt handlers are meant to <5us, right???
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
