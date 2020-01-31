Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 202BC14ED5C
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 14:31:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B05C6E214;
	Fri, 31 Jan 2020 13:31:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A97156E214
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 13:31:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20072983-1500050 for multiple; Fri, 31 Jan 2020 13:31:15 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87r1zf92w1.fsf@gaia.fi.intel.com>
References: <20200131130319.2998318-1-chris@chris-wilson.co.uk>
 <87r1zf92w1.fsf@gaia.fi.intel.com>
Message-ID: <158047747307.2430.14069031628069455881@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 31 Jan 2020 13:31:13 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Disable heartbeat
 around hang tests
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mika Kuoppala (2020-01-31 13:22:38)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > If the heartbeat fires in the middle of the preempt-hang test, it
> > consumes our forced hang disrupting the test.
> >
> > Reported-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gt/selftest_lrc.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > index 5e04ecb61dcc..f5214a374fb7 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > @@ -2452,15 +2452,19 @@ static int live_preempt_hang(void *arg)
> >               I915_USER_PRIORITY(I915_CONTEXT_MIN_USER_PRIORITY);
> >  
> >       for_each_engine(engine, gt, id) {
> > +             unsigned long heartbeat;
> >               struct i915_request *rq;
> >  
> >               if (!intel_engine_has_preemption(engine))
> >                       continue;
> >  
> > +             engine_heartbeat_disable(engine, &heartbeat);
> > +
> >               rq = spinner_create_request(&spin_lo, ctx_lo, engine,
> >                                           MI_ARB_CHECK);
> >               if (IS_ERR(rq)) {
> >                       err = PTR_ERR(rq);
> > +                     engine_heartbeat_enable(engine, heartbeat);
> 
> Was thinking that you could grab the engine and abuse then the error
> path to enable.
> 
> But too hairy.

Yeah, we've done staggered error paths, but both look ugly, So I took
the easy approach. Move the inner loop to its own test function usually
helps though.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
