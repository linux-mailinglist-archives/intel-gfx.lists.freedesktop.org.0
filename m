Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA9B39731A
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 14:20:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 087FB6E185;
	Tue,  1 Jun 2021 12:20:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com
 [IPv6:2607:f8b0:4864:20::c2a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E669D6E185
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Jun 2021 12:20:14 +0000 (UTC)
Received: by mail-oo1-xc2a.google.com with SMTP id
 j17-20020a4ad6d10000b02901fef5280522so3445505oot.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 01 Jun 2021 05:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QZD0tqLcr7Rb6q8Fc6VxhjbM8BQAPNxQ7LLDWAO2SO8=;
 b=Khguyi16Hdf9gCclFm2Y7WlWnKqq0HT7EwWbMdO0UTScH35iMBi4x+MkSSROrXH2ut
 JMdiZ79O2Yk0BnhM85uAIOSyDD43wsLagozBe0Jwz+sbl2NmYDOLHObY0fywavkzA5sY
 Vhx0I+VVqtOdvAUFAvGlJFNTzhShF1BdTtguM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QZD0tqLcr7Rb6q8Fc6VxhjbM8BQAPNxQ7LLDWAO2SO8=;
 b=kSal8LVjaKeiKX7nS/+sRqPV5YajsZGWFhORT2iA31LAyTQbyLPLiaUP0UJGTT/bRa
 59lGnSwA7/+Fde5YFj27rUfUh7noJrQ9HnSt5oJQfAU8DLuWta51x13faGyzzgVHvxsL
 QapH7lGSqxK3prZeOQHIyvBgL2OgkZZvppv8rQqhHjEc1vN1TVMPVNG61M+dcCtROj14
 VpGSBE84Kn7amXSiWWIShGdm83zzXpjbnKyLjZsFRsYuMK0bHX9se/CJPs9Izpq9NOn3
 /OGUi/KBtsx+snqD8Jt9E+4j0OpbjcZsT9/2PsTsgpg2pYhIt5seNW6khK8UkmfMiNkj
 V7fA==
X-Gm-Message-State: AOAM532cVoBDDrzg08KyZ0Jy6VSQb6ube2TW8JwuvE9G5Urj+S3Kwju6
 IQmqNwmN0rQPg13qnn+4vixc+GJw1AMxn5C8esRqRQ==
X-Google-Smtp-Source: ABdhPJwJZG4UNugaaZxn3LSDsBt6KqwfnauGFoc92BD4L5gMqHV90b8C/9G9Sx24RYAs+i/4udvEo4LwUYMhvuQ4JPA=
X-Received: by 2002:a4a:d4c7:: with SMTP id r7mr20514011oos.85.1622550014195; 
 Tue, 01 Jun 2021 05:20:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210520073514.314893-1-matthew.auld@intel.com>
 <YKZx/U05aRaxKw44@phenom.ffwll.local>
 <CAKMK7uE4F66O8sCovhrQKB5Lo3tdKWNhWTS4C=apyVJgqbKuPg@mail.gmail.com>
 <6bf0ebe7-f23d-aeff-c6f6-b43201212d5d@intel.com>
In-Reply-To: <6bf0ebe7-f23d-aeff-c6f6-b43201212d5d@intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 1 Jun 2021 14:20:02 +0200
Message-ID: <CAKMK7uFePn8Ys=ntUnckAxm5VLwWTSoJLrTx6rdBmRpKatk45w@mail.gmail.com>
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

On Tue, Jun 1, 2021 at 1:13 PM Matthew Auld <matthew.auld@intel.com> wrote:
> On 31/05/2021 08:53, Daniel Vetter wrote:
> > On Thu, May 20, 2021 at 4:28 PM Daniel Vetter <daniel@ffwll.ch> wrote:
> >>
> >> On Thu, May 20, 2021 at 08:35:14AM +0100, Matthew Auld wrote:
> >>> From: Chris Wilson <chris@chris-wilson.co.uk>
> >>>
> >>> The first tracepoint for a request is trace_dma_fence_init called before
> >>> we have associated the request with a device. The tracepoint uses
> >>> fence->ops->get_driver_name() as a pretty name, and as we try to report
> >>> the device name this oopses as it is then NULL. Support the early
> >>> tracepoint by reporting the DRIVER_NAME instead of the actual device
> >>> name.
> >>>
> >>> Note that rq->engine remains during the course of request recycling
> >>> (SLAB_TYPESAFE_BY_RCU). For the physical engines, the pointer remains
> >>> valid, however a virtual engine may be destroyed after the request is
> >>> retired. If we process a preempt-to-busy completed request along the
> >>> virtual engine, we should make sure we mark the request as no longer
> >>> belonging to the virtual engine to remove the dangling pointers from the
> >>> tracepoint.
> >>
> >> Why can't we assign the request beforehand? The idea behind these
> >> tracepoints is that they actually match up, if trace_dma_fence_init is
> >> different, then we're breaking that.
> >
> > Ok I looked a bit more and pondered this a bit, and the initial
> > tracepoint is called from dma_fence_init, where we haven't yet set up
> > rq->engine properly. So that part makes sense, but should have a
> > bigger comment that explains this a bit more and why we can't solve
> > this in a neater way. Probably should also drop the unlikely(), this
> > isn't a performance critical path, ever.
> >
> > The other changes thgouh feel like they should be split out into a
> > separate path, since they solve a conceptually totally different
> > issue: SLAB_TYPESAFE_BY_RCU recycling.
>
> Hmm, I thought it all stems from having to tread very carefully around
> SLAB_TYPESAFE_BY_RCU? If this were "normal" code, we would just allocate
> the rq, initialise it properly, including the rq->engine, and only then
> do the dma_fence_init? Or am I missing something?

Uh, if this is the bug it's a lot more scary. SLAB_TYPESAFE_BY_RCU
should only rear it's ugly head if we do clever tricks where we access
pointers to dma_fence under rcu alone, _without_ holding a full
dma_fence reference. As soon as we have a full reference (and checked
that the reference is to the right fence, since we could race) then
all this recycle issues are gonne since the kref_t provides the right
barrier here.

If we hit any of the dma_fence tracepoints without a full reference
held then I think that's a bug an needs to be fixed. Maybe we should
have a debug WARN_ON(!kref(dma_fence)>0)); in these tracepoints
somewhere to prevent this. Doing real dma_fence ops without a refcount
held is really too much clever imo, and even if we'd find some
microbenchmark showing that e.g. the dma_fence_get/put around some
dma_fence function we're calling is measurable, it's not worth the
cost in bugfixes like this one here.

And when we do hold a full reference, then the only problem I've found
is that we call dma_fence_init before the request is fully set up,
which is at least semi-reasonable and can easily be checked for and
explained with a comment. I thought I looked at the code, and
reordering the request init to not have this problem looked tricky.

Another issue which would also be very questionable design that we
need to re-analyze would be if the engine can disappear before the
last reference for the dma_fence has been dropped. I'd also just call
this a bug in our refcounting, this should be impossible, but I
haven't checked.

In all these cases SLAB_TYPESAFE_BY_RCU shouldn't make the situation
worse, and if it does, it's a separate issue really.

> I'm happy to split it though. And I think that bit at least fixes the
> user reported issue I think.

So thinking about this some more, if you think this can be easily
fixed by pushing the dma_fence_init past the initialization of
rq->engine, then that would probably be the cleanest fix of all of
them. Assuming none of the above consideration point at further
trouble (but then further trouble probably needs separate patches to
address them).

> > And I'm honestly not sure about
> > that one whether it's even correct, there's another patch floating
> > around that sprinkles rcu_read_lock around some of these accesssors,
> > and that would be a breakage of dma_fence interaces where outside of
> > i915 rcu isn't required for this stuff. So imo should be split out,
> > and come with a wider analysis of what's going on there and why and
> > how exactly i915 works.
> >
> > In generally SLAB_TYPESAFE_BY_RCU is extremely dangerous and I'm
> > frankly not sure we have the perf data (outside of contrived
> > microbenchmarks) showing that it's needed and justifies all the costs
> > it's encurring.
>
> Right, I can try to search the git history.

Yeah might be good to dig that out too while we're at it. I think i915
is the only driver that recycles it's dma_fence without an rcu
barrier. We're also the only driver that does lots of very clever
tricks which are protected by rcu only, and not grabbing a full
dma_fence reference. Or at least I've seen a bunch of those.
-Daniel

>
>
> > -Daniel
> >
> >> -Daniel
> >>
> >>>
> >>> Fixes: 855e39e65cfc ("drm/i915: Initialise basic fence before acquiring seqno")
> >>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> >>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> >>> Cc: Chintan M Patel <chintan.m.patel@intel.com>
> >>> Cc: Andi Shyti <andi.shyti@intel.com>
> >>> Cc: <stable@vger.kernel.org> # v5.7+
> >>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> >>> ---
> >>>   .../drm/i915/gt/intel_execlists_submission.c  | 20 ++++++++++++++-----
> >>>   drivers/gpu/drm/i915/i915_request.c           |  7 ++++++-
> >>>   2 files changed, 21 insertions(+), 6 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> >>> index de124870af44..75604e927d34 100644
> >>> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> >>> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> >>> @@ -3249,6 +3249,18 @@ static struct list_head *virtual_queue(struct virtual_engine *ve)
> >>>        return &ve->base.execlists.default_priolist.requests;
> >>>   }
> >>>
> >>> +static void
> >>> +virtual_submit_completed(struct virtual_engine *ve, struct i915_request *rq)
> >>> +{
> >>> +     GEM_BUG_ON(!__i915_request_is_complete(rq));
> >>> +     GEM_BUG_ON(rq->engine != &ve->base);
> >>> +
> >>> +     __i915_request_submit(rq);
> >>> +
> >>> +     /* Remove the dangling pointer to the stale virtual engine */
> >>> +     WRITE_ONCE(rq->engine, ve->siblings[0]);
> >>> +}
> >>> +
> >>>   static void rcu_virtual_context_destroy(struct work_struct *wrk)
> >>>   {
> >>>        struct virtual_engine *ve =
> >>> @@ -3265,8 +3277,7 @@ static void rcu_virtual_context_destroy(struct work_struct *wrk)
> >>>
> >>>                old = fetch_and_zero(&ve->request);
> >>>                if (old) {
> >>> -                     GEM_BUG_ON(!__i915_request_is_complete(old));
> >>> -                     __i915_request_submit(old);
> >>> +                     virtual_submit_completed(ve, old);
> >>>                        i915_request_put(old);
> >>>                }
> >>>
> >>> @@ -3538,13 +3549,12 @@ static void virtual_submit_request(struct i915_request *rq)
> >>>
> >>>        /* By the time we resubmit a request, it may be completed */
> >>>        if (__i915_request_is_complete(rq)) {
> >>> -             __i915_request_submit(rq);
> >>> +             virtual_submit_completed(ve, rq);
> >>>                goto unlock;
> >>>        }
> >>>
> >>>        if (ve->request) { /* background completion from preempt-to-busy */
> >>> -             GEM_BUG_ON(!__i915_request_is_complete(ve->request));
> >>> -             __i915_request_submit(ve->request);
> >>> +             virtual_submit_completed(ve, ve->request);
> >>>                i915_request_put(ve->request);
> >>>        }
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> >>> index 970d8f4986bb..aa124adb1051 100644
> >>> --- a/drivers/gpu/drm/i915/i915_request.c
> >>> +++ b/drivers/gpu/drm/i915/i915_request.c
> >>> @@ -61,7 +61,12 @@ static struct i915_global_request {
> >>>
> >>>   static const char *i915_fence_get_driver_name(struct dma_fence *fence)
> >>>   {
> >>> -     return dev_name(to_request(fence)->engine->i915->drm.dev);
> >>> +     struct i915_request *rq = to_request(fence);
> >>> +
> >>> +     if (unlikely(!rq->engine)) /* not yet attached to any device */
> >>> +             return DRIVER_NAME;
> >>> +
> >>> +     return dev_name(rq->engine->i915->drm.dev);
> >>>   }
> >>>
> >>>   static const char *i915_fence_get_timeline_name(struct dma_fence *fence)
> >>> --
> >>> 2.26.3
> >>>
> >>
> >> --
> >> Daniel Vetter
> >> Software Engineer, Intel Corporation
> >> http://blog.ffwll.ch
> >
> >
> >



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
