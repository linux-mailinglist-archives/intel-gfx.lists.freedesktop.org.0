Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB88173B21
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 16:15:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 542A36F406;
	Fri, 28 Feb 2020 15:15:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 214626E065
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 15:15:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20386914-1500050 for multiple; Fri, 28 Feb 2020 15:15:00 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200228082330.2411941-1-chris@chris-wilson.co.uk>
 <20200228082330.2411941-18-chris@chris-wilson.co.uk>
 <87zhd27npz.fsf@gaia.fi.intel.com>
In-Reply-To: <87zhd27npz.fsf@gaia.fi.intel.com>
Message-ID: <158290289819.24106.3163488755084337083@skylake-alporthouse-com>
Date: Fri, 28 Feb 2020 15:14:58 +0000
Subject: Re: [Intel-gfx] [PATCH 18/24] drm/i915/selftests: Wait for the
 kernel context switch
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

Quoting Mika Kuoppala (2020-02-28 15:09:28)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > As we require a context switch to ensure that the current context is
> > switched out and saved to memory, perform an explicit switch to the
> > kernel context and wait for it.
> 
> The patch subject is not incorrect. Just feels that the kernel
> context is a patsy in here.
> 
> So I would s/kernel// on subject but keep in commit msg
> 
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gt/selftest_lrc.c | 37 +++++++++++++++++++-------
> >  1 file changed, 28 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > index d7f98aada626..95da6b880e3f 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > @@ -4015,6 +4015,31 @@ static int emit_semaphore_signal(struct intel_context *ce, void *slot)
> >       return 0;
> >  }
> >  
> > +static int context_sync(struct intel_context *ce)
> > +{
> > +     struct i915_request *rq;
> > +     struct dma_fence *fence;
> > +     int err = 0;
> > +
> > +     rq = intel_engine_create_kernel_request(ce->engine);
> > +     if (IS_ERR(rq))
> > +             return PTR_ERR(rq);
> > +
> > +     fence = i915_active_fence_get(&ce->timeline->last_request);
> > +     if (fence) {
> > +             i915_request_await_dma_fence(rq, fence);
> > +             dma_fence_put(fence);
> > +     }
> > +
> > +     rq = i915_request_get(rq);
> > +     i915_request_add(rq);
> > +     if (i915_request_wait(rq, 0, HZ / 2) < 0)
> > +             err = -ETIME;
> > +     i915_request_put(rq);
> > +
> > +     return err;
> > +}
> > +
> >  static int live_lrc_layout(void *arg)
> >  {
> >       struct intel_gt *gt = arg;
> > @@ -4638,16 +4663,10 @@ static int __lrc_timestamp(const struct lrc_timestamp *arg, bool preempt)
> >               wmb();
> >       }
> >  
> > -     if (i915_request_wait(rq, 0, HZ / 2) < 0) {
> > -             err = -ETIME;
> > -             goto err;
> > -     }
> > -
> > -     /* and wait for switch to kernel */
> > -     if (igt_flush_test(arg->engine->i915)) {
> > -             err = -EIO;
> > +     /* and wait for switch to kernel (to save our context to memory) */
> > +     err = context_sync(arg->ce[0]);
> > +     if (err)
> >               goto err;
> > -     }
> >  
> >       rmb();
> 
> For me the context_sync could be context_flush and it would
> allow the rmb() to be snuck inside.

I hear you. The rmb() is really associated with the action of confirming
the switch and can justifiably be inside the context_sync/flush.

The rmb is just there to placate inner daemons, so I didn't think about
it when forcing the emission of the kernel request.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
