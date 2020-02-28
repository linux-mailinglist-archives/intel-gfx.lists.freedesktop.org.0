Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5540C173808
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 14:14:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 382F96F44A;
	Fri, 28 Feb 2020 13:14:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8B4A6F445
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 13:14:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20385304-1500050 for multiple; Fri, 28 Feb 2020 13:14:39 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <eae19a92-c807-4663-4509-f47e33f1209c@linux.intel.com>
References: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
 <20200227085723.1961649-17-chris@chris-wilson.co.uk>
 <eae19a92-c807-4663-4509-f47e33f1209c@linux.intel.com>
Message-ID: <158289567706.24106.4022755688554979855@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 28 Feb 2020 13:14:37 +0000
Subject: Re: [Intel-gfx] [PATCH 17/20] drm/i915/gt: Declare when we enabled
 timeslicing
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
Cc: Kenneth Graunke <kenneth@whitecape.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-02-28 12:45:42)
> 
> On 27/02/2020 08:57, Chris Wilson wrote:
> > Let userspace know if they can trust timeslicing by including it as part
> > of the I915_PARAM_HAS_SCHEDULER::I915_SCHEDULER_CAP_TIMESLICING
> > 
> > v2: Only declare timeslicing if we can safely preempt userspace.
> > 
> > Fixes: 8ee36e048c98 ("drm/i915/execlists: Minimalistic timeslicing")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Kenneth Graunke <kenneth@whitecape.org>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_engine.h      | 3 ++-
> >   drivers/gpu/drm/i915/gt/intel_engine_user.c | 5 +++++
> >   include/uapi/drm/i915_drm.h                 | 1 +
> >   3 files changed, 8 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> > index 29c8c03c5caa..a32dc82a90d4 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> > @@ -326,7 +326,8 @@ intel_engine_has_timeslices(const struct intel_engine_cs *engine)
> >       if (!IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
> >               return false;
> >   
> > -     return intel_engine_has_semaphores(engine);
> > +     return (intel_engine_has_semaphores(engine) &&
> > +             intel_engine_has_preemption(engine));
> 
> This could be the fixes bit.

Nah, I quite liked timeslicing between requests -- but I decided that if
we are to make a statement userspace can rely on, it has to be
timeslicing works inside userspace batches.
 
> AFAIR has_semaphores is can we preempt between batches and 
> has_preemption is can we preempt inside them. What was the consequence 
> of not considering this in has_timeslices?

Right. It meant the timeslice could only take effect in the
MI_ARB_ENABLE window in between requests. That is we could break up long
amalgamations of contexts, but not the user.

So I don't think this bit is the fixes.

> >   #endif /* _INTEL_RINGBUFFER_H_ */
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> > index 848decee9066..b84fdd722781 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> > @@ -121,6 +121,11 @@ static void set_scheduler_caps(struct drm_i915_private *i915)
> >                       else
> >                               disabled |= BIT(map[i].sched);
> >               }
> > +
> > +             if (intel_engine_has_timeslices(engine))
> > +                     enabled |= I915_SCHEDULER_CAP_TIMESLICING;
> > +             else
> > +                     disabled |= I915_SCHEDULER_CAP_TIMESLICING;
> >       }
> >   
> >       i915->caps.scheduler = enabled & ~disabled;
> > diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> > index 2813e579b480..4f903431a3fe 100644
> > --- a/include/uapi/drm/i915_drm.h
> > +++ b/include/uapi/drm/i915_drm.h
> > @@ -523,6 +523,7 @@ typedef struct drm_i915_irq_wait {
> >   #define   I915_SCHEDULER_CAP_PREEMPTION     (1ul << 2)
> >   #define   I915_SCHEDULER_CAP_SEMAPHORES     (1ul << 3)
> >   #define   I915_SCHEDULER_CAP_ENGINE_BUSY_STATS      (1ul << 4)
> > +#define   I915_SCHEDULER_CAP_TIMESLICING     (1ul << 5)
> 
> And this would be the new uapi bit.
> 
> Split into two patches?

Nah. This is the Fixes: that I need to use semaphores in iris :)
And I think CAP_TIMESLICING has to mean userspace is timesliced (to the
granularity of objects at least) for it to mean anything userspace can
take advantage of.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
