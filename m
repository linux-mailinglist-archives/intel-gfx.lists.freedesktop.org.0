Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA3A395684
	for <lists+intel-gfx@lfdr.de>; Mon, 31 May 2021 09:53:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57EC86E879;
	Mon, 31 May 2021 07:53:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com
 [IPv6:2607:f8b0:4864:20::333])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 435686E879
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 May 2021 07:53:37 +0000 (UTC)
Received: by mail-ot1-x333.google.com with SMTP id
 r26-20020a056830121ab02902a5ff1c9b81so10328795otp.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 May 2021 00:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yhP9uCIfezgPuDP0zjF7b1LYIU8n1+Ee0zGhQh/v/+s=;
 b=ZLkm8zmUSD7kDO7dRVCRMvwx0+Jg3sOzM62ZdeWrLEETpBNkrMTqxoM3o+stLTHI76
 PGaF6OKPhNdrTDvMS+6J5p0zGXYso49FfqbyYnWKDXQ9QQMzxtPmJnlzoajlVBoW7pXM
 wB3IHYIbHUzJPJTaDmvH+/sPo/hagXlrjWYf0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yhP9uCIfezgPuDP0zjF7b1LYIU8n1+Ee0zGhQh/v/+s=;
 b=SB8RTcOFEHrZYOfYCMHkwQBAYKp0hLflABzwk5/P5cAVeCSZzE4uTAXGILYHpA5aWM
 BLc3cEB1MBQXgTheHo2cBH43cP0mA8oEbuiXc93hmQU9DSN+LwaiAkolhrQXdmBqIb07
 nmVsRzDG5TuJfpWY4biaIXLUGCMni22PWQSPtIhLJ0WnCGAQkFYB2TSI7Yg/sGFDGXGB
 eK8HsVok/ober6dCRJvCtsqrMwc2EJrpfx/yZpreiK5aR5LMoqrEIj8cH+Shl0ojfSZ7
 7I+o+K8tVjPbUOXLo/b5jtI2NKIhxdBRHU1y3tz/IFBoQ7N8JmERanExAiBme7aaxrU4
 whYQ==
X-Gm-Message-State: AOAM530KEICd/Kc3ZKPqWbZhDxZmVAZRt928K5za8PwiJpgmtUFvWFCV
 sUGMmZx3m9aFPx6QM1Hbyt0KmOLPwaecY9GWC+8TgA==
X-Google-Smtp-Source: ABdhPJz2LKll0x8TfGRo6ZnaBUj5dpTLX0uYYlpQdWAH4vSo7YlvFfRFwrSr3nr0je12iCxVUkMSQ8bzaRGc3yPWzCI=
X-Received: by 2002:a9d:27a4:: with SMTP id c33mr15153027otb.281.1622447616408; 
 Mon, 31 May 2021 00:53:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210520073514.314893-1-matthew.auld@intel.com>
 <YKZx/U05aRaxKw44@phenom.ffwll.local>
In-Reply-To: <YKZx/U05aRaxKw44@phenom.ffwll.local>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 31 May 2021 09:53:25 +0200
Message-ID: <CAKMK7uE4F66O8sCovhrQKB5Lo3tdKWNhWTS4C=apyVJgqbKuPg@mail.gmail.com>
To: Matthew Auld <matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use DRIVER_NAME for tracing
 unattached requests
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 stable <stable@vger.kernel.org>, Chris Wilson <chris@chris-wilson.co.uk>,
 Chintan M Patel <chintan.m.patel@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 20, 2021 at 4:28 PM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Thu, May 20, 2021 at 08:35:14AM +0100, Matthew Auld wrote:
> > From: Chris Wilson <chris@chris-wilson.co.uk>
> >
> > The first tracepoint for a request is trace_dma_fence_init called before
> > we have associated the request with a device. The tracepoint uses
> > fence->ops->get_driver_name() as a pretty name, and as we try to report
> > the device name this oopses as it is then NULL. Support the early
> > tracepoint by reporting the DRIVER_NAME instead of the actual device
> > name.
> >
> > Note that rq->engine remains during the course of request recycling
> > (SLAB_TYPESAFE_BY_RCU). For the physical engines, the pointer remains
> > valid, however a virtual engine may be destroyed after the request is
> > retired. If we process a preempt-to-busy completed request along the
> > virtual engine, we should make sure we mark the request as no longer
> > belonging to the virtual engine to remove the dangling pointers from the
> > tracepoint.
>
> Why can't we assign the request beforehand? The idea behind these
> tracepoints is that they actually match up, if trace_dma_fence_init is
> different, then we're breaking that.

Ok I looked a bit more and pondered this a bit, and the initial
tracepoint is called from dma_fence_init, where we haven't yet set up
rq->engine properly. So that part makes sense, but should have a
bigger comment that explains this a bit more and why we can't solve
this in a neater way. Probably should also drop the unlikely(), this
isn't a performance critical path, ever.

The other changes thgouh feel like they should be split out into a
separate path, since they solve a conceptually totally different
issue: SLAB_TYPESAFE_BY_RCU recycling. And I'm honestly not sure about
that one whether it's even correct, there's another patch floating
around that sprinkles rcu_read_lock around some of these accesssors,
and that would be a breakage of dma_fence interaces where outside of
i915 rcu isn't required for this stuff. So imo should be split out,
and come with a wider analysis of what's going on there and why and
how exactly i915 works.

In generally SLAB_TYPESAFE_BY_RCU is extremely dangerous and I'm
frankly not sure we have the perf data (outside of contrived
microbenchmarks) showing that it's needed and justifies all the costs
it's encurring.
-Daniel

> -Daniel
>
> >
> > Fixes: 855e39e65cfc ("drm/i915: Initialise basic fence before acquiring seqno")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > Cc: Chintan M Patel <chintan.m.patel@intel.com>
> > Cc: Andi Shyti <andi.shyti@intel.com>
> > Cc: <stable@vger.kernel.org> # v5.7+
> > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > ---
> >  .../drm/i915/gt/intel_execlists_submission.c  | 20 ++++++++++++++-----
> >  drivers/gpu/drm/i915/i915_request.c           |  7 ++++++-
> >  2 files changed, 21 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > index de124870af44..75604e927d34 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > @@ -3249,6 +3249,18 @@ static struct list_head *virtual_queue(struct virtual_engine *ve)
> >       return &ve->base.execlists.default_priolist.requests;
> >  }
> >
> > +static void
> > +virtual_submit_completed(struct virtual_engine *ve, struct i915_request *rq)
> > +{
> > +     GEM_BUG_ON(!__i915_request_is_complete(rq));
> > +     GEM_BUG_ON(rq->engine != &ve->base);
> > +
> > +     __i915_request_submit(rq);
> > +
> > +     /* Remove the dangling pointer to the stale virtual engine */
> > +     WRITE_ONCE(rq->engine, ve->siblings[0]);
> > +}
> > +
> >  static void rcu_virtual_context_destroy(struct work_struct *wrk)
> >  {
> >       struct virtual_engine *ve =
> > @@ -3265,8 +3277,7 @@ static void rcu_virtual_context_destroy(struct work_struct *wrk)
> >
> >               old = fetch_and_zero(&ve->request);
> >               if (old) {
> > -                     GEM_BUG_ON(!__i915_request_is_complete(old));
> > -                     __i915_request_submit(old);
> > +                     virtual_submit_completed(ve, old);
> >                       i915_request_put(old);
> >               }
> >
> > @@ -3538,13 +3549,12 @@ static void virtual_submit_request(struct i915_request *rq)
> >
> >       /* By the time we resubmit a request, it may be completed */
> >       if (__i915_request_is_complete(rq)) {
> > -             __i915_request_submit(rq);
> > +             virtual_submit_completed(ve, rq);
> >               goto unlock;
> >       }
> >
> >       if (ve->request) { /* background completion from preempt-to-busy */
> > -             GEM_BUG_ON(!__i915_request_is_complete(ve->request));
> > -             __i915_request_submit(ve->request);
> > +             virtual_submit_completed(ve, ve->request);
> >               i915_request_put(ve->request);
> >       }
> >
> > diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> > index 970d8f4986bb..aa124adb1051 100644
> > --- a/drivers/gpu/drm/i915/i915_request.c
> > +++ b/drivers/gpu/drm/i915/i915_request.c
> > @@ -61,7 +61,12 @@ static struct i915_global_request {
> >
> >  static const char *i915_fence_get_driver_name(struct dma_fence *fence)
> >  {
> > -     return dev_name(to_request(fence)->engine->i915->drm.dev);
> > +     struct i915_request *rq = to_request(fence);
> > +
> > +     if (unlikely(!rq->engine)) /* not yet attached to any device */
> > +             return DRIVER_NAME;
> > +
> > +     return dev_name(rq->engine->i915->drm.dev);
> >  }
> >
> >  static const char *i915_fence_get_timeline_name(struct dma_fence *fence)
> > --
> > 2.26.3
> >
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
