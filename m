Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6811530F729
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 17:05:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC0B66E0D2;
	Thu,  4 Feb 2021 16:05:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54CD46E0D2
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 16:05:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23788700-1500050 for multiple; Thu, 04 Feb 2021 16:05:53 +0000
MIME-Version: 1.0
In-Reply-To: <cdbd3495-6bb5-65b1-833c-0b5aa4e5be4b@linux.intel.com>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
 <20210201085715.27435-29-chris@chris-wilson.co.uk>
 <cdbd3495-6bb5-65b1-833c-0b5aa4e5be4b@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 04 Feb 2021 16:05:52 +0000
Message-ID: <161245475235.3075.1909522034995264924@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 29/57] drm/i915: Move scheduler flags
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

Quoting Tvrtko Ursulin (2021-02-04 15:14:20)
> 
> On 01/02/2021 08:56, Chris Wilson wrote:
> > Start extracting the scheduling flags from the engine. We begin with its
> > own existence.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_engine.h        |  6 ++++++
> >   drivers/gpu/drm/i915/gt/intel_engine_types.h  | 21 +++++++------------
> >   .../drm/i915/gt/intel_execlists_submission.c  |  6 +++++-
> >   .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  2 +-
> >   drivers/gpu/drm/i915/i915_request.h           |  2 +-
> >   drivers/gpu/drm/i915/i915_scheduler.c         |  2 +-
> >   drivers/gpu/drm/i915/i915_scheduler_types.h   | 10 +++++++++
> >   7 files changed, 31 insertions(+), 18 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> > index c530839627bb..4f0163457aed 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> > @@ -261,6 +261,12 @@ intel_engine_has_heartbeat(const struct intel_engine_cs *engine)
> >       return READ_ONCE(engine->props.heartbeat_interval_ms);
> >   }
> >   
> > +static inline bool
> > +intel_engine_has_scheduler(struct intel_engine_cs *engine)
> > +{
> > +     return i915_sched_is_active(intel_engine_get_scheduler(engine));
> > +}
> > +
> >   static inline void
> >   intel_engine_kick_scheduler(struct intel_engine_cs *engine)
> >   {
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > index 6b0bde292916..a3024a0de1de 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > @@ -440,14 +440,13 @@ struct intel_engine_cs {
> >   
> >   #define I915_ENGINE_USING_CMD_PARSER BIT(0)
> >   #define I915_ENGINE_SUPPORTS_STATS   BIT(1)
> > -#define I915_ENGINE_HAS_SCHEDULER    BIT(2)
> > -#define I915_ENGINE_HAS_PREEMPTION   BIT(3)
> > -#define I915_ENGINE_HAS_SEMAPHORES   BIT(4)
> > -#define I915_ENGINE_HAS_TIMESLICES   BIT(5)
> > -#define I915_ENGINE_NEEDS_BREADCRUMB_TASKLET BIT(6)
> > -#define I915_ENGINE_IS_VIRTUAL       BIT(7)
> > -#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(8)
> > -#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(9)
> > +#define I915_ENGINE_HAS_PREEMPTION   BIT(2)
> > +#define I915_ENGINE_HAS_SEMAPHORES   BIT(3)
> > +#define I915_ENGINE_HAS_TIMESLICES   BIT(4)
> > +#define I915_ENGINE_NEEDS_BREADCRUMB_TASKLET BIT(5)
> > +#define I915_ENGINE_IS_VIRTUAL       BIT(6)
> > +#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(7)
> > +#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(8)
> >       unsigned int flags;
> >   
> >       /*
> > @@ -530,12 +529,6 @@ intel_engine_supports_stats(const struct intel_engine_cs *engine)
> >       return engine->flags & I915_ENGINE_SUPPORTS_STATS;
> >   }
> >   
> > -static inline bool
> > -intel_engine_has_scheduler(const struct intel_engine_cs *engine)
> > -{
> > -     return engine->flags & I915_ENGINE_HAS_SCHEDULER;
> > -}
> > -
> >   static inline bool
> >   intel_engine_has_preemption(const struct intel_engine_cs *engine)
> >   {
> > diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > index b1007e560527..3217cb4369ad 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > @@ -2913,7 +2913,6 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
> >                */
> >       }
> >   
> > -     engine->flags |= I915_ENGINE_HAS_SCHEDULER;
> >       engine->flags |= I915_ENGINE_SUPPORTS_STATS;
> >       if (!intel_vgpu_active(engine->i915)) {
> >               engine->flags |= I915_ENGINE_HAS_SEMAPHORES;
> > @@ -2981,6 +2980,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
> >       engine->sched.is_executing = execlists_is_executing;
> >       engine->sched.show = execlists_show;
> >       tasklet_setup(&engine->sched.tasklet, execlists_submission_tasklet);
> > +     __set_bit(I915_SCHED_ACTIVE_BIT, &engine->sched.flags);
> 
> This feels a bit dodgy - does is stay like this, with the engine setting 
> up both the tasklet and setting the bit directly? Could we say that 
> setting a tasklet via a helper could turn on the bit?

Bare with me for a few more patches. I didn't like it either. I guess I
should move that chunk earlier so we don't have the eyesore and rightful
questions over my sanity.

> > +static inline bool i915_sched_is_active(const struct i915_sched *se)
> > +{
> > +     return test_bit(I915_SCHED_ACTIVE_BIT, &se->flags);
> > +}
> 
> What do you have in mind for the distinction between "has scheduler" and 
> "scheduler is active"?

By the end, we use the i915_scheduler for everything, including legacy
ringbuffer submission for which the i915_scheduler does nothing, as it
cannot support execution reordering.

So there's a scheduler behind every i915_request, but we don't always
need to add all the dependency tracking. So for "is_active" I was
thinking along the lines of an active scheduler that supports reordering.

But i915_request_has_active_scheduler() and
intel_engine_has_active_scheduler() is something of a mouthful, when the
the inactive scheduler doesn't count for much and can be quietly
ignored.

I'll try and summarise the distinction for the inlines. I've tried to
describe the differences for the scheduling modes elsewhere (when they
eyesore is removed). If I introduce the scheduling modes here instead of
a pure ACTIVE_BIT, that should be a better story.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
