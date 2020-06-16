Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9A91FABEB
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 11:09:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 949C86E871;
	Tue, 16 Jun 2020 09:09:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 715076E871
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 09:09:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21510384-1500050 for multiple; Tue, 16 Jun 2020 10:09:16 +0100
MIME-Version: 1.0
In-Reply-To: <87a713s847.fsf@gaia.fi.intel.com>
References: <20200616084141.3722-1-chris@chris-wilson.co.uk>
 <87a713s847.fsf@gaia.fi.intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159229855527.18308.214917781408344749@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 16 Jun 2020 10:09:15 +0100
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915/selftests: Exercise far
 preemption rollbacks
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

Quoting Mika Kuoppala (2020-06-16 09:55:04)
> 
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Not too long ago, we realised we had issues with a rolling back a
> > context so far for a preemption request we considered the resubmit not
> > to be a rollback but a forward roll. This means we would issue a lite
> > restore instead of forcing a full restore, continuing execution of the
> > old requests rather than causing a preemption. Add a selftest to
> > exercise such a far rollback, such that if we were to skip the full
> > restore, we would execute invalid instructions in the ring and hang.
> >
> > Note that while I was able to confirm that this causes us to do a
> > lite-restore preemption rollback (with commit e36ba817fa96 ("drm/i915/gt:
> > Incrementally check for rewinding") disabled), it did not trick the HW
> > into rolling past the old RING_TAIL. Myybe on other HW.
> >
> > References: e36ba817fa96 ("drm/i915/gt: Incrementally check for rewinding")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/selftest_lrc.c | 150 +++++++++++++++++++++++++
> >  1 file changed, 150 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > index 91543494f595..3d088116a055 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > @@ -363,6 +363,155 @@ static int live_unlite_preempt(void *arg)
> >       return live_unlite_restore(arg, I915_USER_PRIORITY(I915_PRIORITY_MAX));
> >  }
> >  
> > +static int live_unlite_ring(void *arg)
> > +{
> > +     struct intel_gt *gt = arg;
> > +     struct intel_engine_cs *engine;
> > +     struct igt_spinner spin;
> > +     enum intel_engine_id id;
> > +     int err = 0;
> > +
> > +     /*
> > +      * Setup a preemption event that will cause almost the entire ring
> > +      * to be unwound, potentially fooling our intel_ring_direction()
> > +      * into emitting a forward lite-restore instead of the rollback.
> > +      */
> > +
> > +     if (igt_spinner_init(&spin, gt))
> > +             return -ENOMEM;
> > +
> > +     for_each_engine(engine, gt, id) {
> > +             struct intel_context *ce[2] = {};
> > +             struct i915_request *rq;
> > +             struct igt_live_test t;
> > +             int n;
> > +
> > +             if (!intel_engine_has_preemption(engine))
> > +                     continue;
> > +
> > +             if (!intel_engine_can_store_dword(engine))
> > +                     continue;
> > +
> > +             if (igt_live_test_begin(&t, gt->i915, __func__, engine->name)) {
> > +                     err = -EIO;
> > +                     break;
> > +             }
> > +             engine_heartbeat_disable(engine);
> > +
> > +             for (n = 0; n < ARRAY_SIZE(ce); n++) {
> > +                     struct intel_context *tmp;
> > +
> > +                     tmp = intel_context_create(engine);
> > +                     if (IS_ERR(tmp)) {
> > +                             err = PTR_ERR(tmp);
> > +                             goto err_ce;
> > +                     }
> > +
> > +                     err = intel_context_pin(tmp);
> > +                     if (err) {
> > +                             intel_context_put(tmp);
> > +                             goto err_ce;
> > +                     }
> > +
> > +                     memset32(tmp->ring->vaddr,
> > +                              0xdeadbeef, /* trigger a hang if executed */
> > +                              tmp->ring->vma->size / sizeof(u32));
> > +
> > +                     ce[n] = tmp;
> > +             }
> > +
> > +             rq = igt_spinner_create_request(&spin, ce[0], MI_ARB_CHECK);
> > +             if (IS_ERR(rq)) {
> > +                     err = PTR_ERR(rq);
> > +                     goto err_ce;
> > +             }
> > +
> > +             i915_request_get(rq);
> > +             rq->sched.attr.priority = I915_PRIORITY_BARRIER;
> > +             i915_request_add(rq);
> > +
> > +             if (!igt_wait_for_spinner(&spin, rq)) {
> > +                     intel_gt_set_wedged(gt);
> > +                     i915_request_put(rq);
> > +                     err = -ETIME;
> > +                     goto err_ce;
> > +             }
> > +
> > +             /* Fill the ring, until we will cause a wrap */
> > +             n = 0;
> > +             while (intel_ring_direction(ce[0]->ring,
> > +                                         rq->wa_tail,
> > +                                         ce[0]->ring->tail) <= 0) {
> > +                     struct i915_request *tmp;
> 
> I got that you tested it with revert of incremental, but
> 
> can we make 2 versions of this test so that the half ring size
> is honoured and then another where we do few requests past the half?

We have examples of normal preemption. This chooses to focus on the
impact of intel_ring_direction().
 
> Just would like to see the hardware get confused according
> to our assertions. 

I haven't tricked the HW into doing anything unexpected. I've tried
switching the spinner out for a semaphore in the ring (in case that
would keep the ring registers primed) and I've tried releasing the
spinner at the same time as trying to submit the preemption (though that
will be incredibly timing dependent) with the aim of having it process
the request tail at the same time as the ELSP.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
