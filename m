Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FC23D661C
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 19:56:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 402936E998;
	Mon, 26 Jul 2021 17:56:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 132BC6E8E4;
 Mon, 26 Jul 2021 17:56:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="234150083"
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="234150083"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 10:56:38 -0700
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="662188617"
Received: from dut151-iclu.fm.intel.com ([10.105.23.43])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 10:56:38 -0700
Date: Mon, 26 Jul 2021 17:56:36 +0000
From: Matthew Brost <matthew.brost@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20210726175636.GA44233@DUT151-ICLU.fm.intel.com>
References: <20210722235426.31831-1-matthew.brost@intel.com>
 <20210722235426.31831-26-matthew.brost@intel.com>
 <94fd8610-644b-2df3-92fd-1731db5cf30c@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <94fd8610-644b-2df3-92fd-1731db5cf30c@intel.com>
Subject: Re: [Intel-gfx] [PATCH 25/33] drm/i915/guc: Support request
 cancellation
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 26, 2021 at 10:49:37AM -0700, Daniele Ceraolo Spurio wrote:
> 
> 
> On 7/22/2021 4:54 PM, Matthew Brost wrote:
> > This adds GuC backend support for i915_request_cancel(), which in turn
> > makes CONFIG_DRM_I915_REQUEST_TIMEOUT work.
> > 
> > This implemenation makes use of fence while there is likely simplier
> > options. A fence was choosen because of another feature coming soon
> > which requires a user to block on a context until scheduling is
> > disabled. In that case we return the fence to the user and the user can
> > wait on that fence.
> > 
> > v2:
> >   (Daniele)
> >    - A comment about locking the blocked incr / decr
> >    - A comments about the use of the fence
> >    - Update commit message explaining why fence
> >    - Delete redundant check blocked count in unblock function
> >    - Ring buffer implementation
> >    - Comment about blocked in submission path
> >    - Shorter rpm path
> > 
> > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_context.c       |  13 ++
> >   drivers/gpu/drm/i915/gt/intel_context.h       |   7 +
> >   drivers/gpu/drm/i915/gt/intel_context_types.h |   7 +
> >   .../drm/i915/gt/intel_execlists_submission.c  |  18 ++
> >   .../gpu/drm/i915/gt/intel_ring_submission.c   |  16 ++
> >   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 175 ++++++++++++++++++
> >   drivers/gpu/drm/i915/i915_request.c           |  14 +-
> >   7 files changed, 237 insertions(+), 13 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> > index 237b70e98744..477c42d7d693 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_context.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> > @@ -366,6 +366,12 @@ static int __intel_context_active(struct i915_active *active)
> >   	return 0;
> >   }
> > +static int sw_fence_dummy_notify(struct i915_sw_fence *sf,
> > +				 enum i915_sw_fence_notify state)
> > +{
> > +	return NOTIFY_DONE;
> > +}
> > +
> >   void
> >   intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
> >   {
> > @@ -399,6 +405,13 @@ intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
> >   	ce->guc_id = GUC_INVALID_LRC_ID;
> >   	INIT_LIST_HEAD(&ce->guc_id_link);
> > +	/*
> > +	 * Initialize fence to be complete as this is expected to be complete
> > +	 * unless there is a pending schedule disable outstanding.
> > +	 */
> > +	i915_sw_fence_init(&ce->guc_blocked, sw_fence_dummy_notify);
> > +	i915_sw_fence_commit(&ce->guc_blocked);
> > +
> >   	i915_active_init(&ce->active,
> >   			 __intel_context_active, __intel_context_retire, 0);
> >   }
> > diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
> > index 814d9277096a..876bdb08303c 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_context.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_context.h
> > @@ -70,6 +70,13 @@ intel_context_is_pinned(struct intel_context *ce)
> >   	return atomic_read(&ce->pin_count);
> >   }
> > +static inline void intel_context_cancel_request(struct intel_context *ce,
> > +						struct i915_request *rq)
> > +{
> > +	GEM_BUG_ON(!ce->ops->cancel_request);
> > +	return ce->ops->cancel_request(ce, rq);
> > +}
> > +
> >   /**
> >    * intel_context_unlock_pinned - Releases the earlier locking of 'pinned' status
> >    * @ce - the context
> > diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> > index 57c19ee3e313..005a64f2afa7 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> > @@ -13,6 +13,7 @@
> >   #include <linux/types.h>
> >   #include "i915_active_types.h"
> > +#include "i915_sw_fence.h"
> >   #include "i915_utils.h"
> >   #include "intel_engine_types.h"
> >   #include "intel_sseu.h"
> > @@ -42,6 +43,9 @@ struct intel_context_ops {
> >   	void (*unpin)(struct intel_context *ce);
> >   	void (*post_unpin)(struct intel_context *ce);
> > +	void (*cancel_request)(struct intel_context *ce,
> > +			       struct i915_request *rq);
> > +
> >   	void (*enter)(struct intel_context *ce);
> >   	void (*exit)(struct intel_context *ce);
> > @@ -184,6 +188,9 @@ struct intel_context {
> >   	 * GuC ID link - in list when unpinned but guc_id still valid in GuC
> >   	 */
> >   	struct list_head guc_id_link;
> > +
> > +	/* GuC context blocked fence */
> > +	struct i915_sw_fence guc_blocked;
> >   };
> >   #endif /* __INTEL_CONTEXT_TYPES__ */
> > diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > index 60427b106bad..e7b42222b71d 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > @@ -114,6 +114,7 @@
> >   #include "gen8_engine_cs.h"
> >   #include "intel_breadcrumbs.h"
> >   #include "intel_context.h"
> > +#include "intel_engine_heartbeat.h"
> >   #include "intel_engine_pm.h"
> >   #include "intel_engine_stats.h"
> >   #include "intel_execlists_submission.h"
> > @@ -2587,11 +2588,26 @@ static int execlists_context_alloc(struct intel_context *ce)
> >   	return lrc_alloc(ce, ce->engine);
> >   }
> > +static void execlists_context_cancel_request(struct intel_context *ce,
> > +					     struct i915_request *rq)
> > +{
> > +	struct intel_engine_cs *engine = NULL;
> > +
> > +	i915_request_active_engine(rq, &engine);
> > +
> > +	if (engine && intel_engine_pulse(engine))
> > +		intel_gt_handle_error(engine->gt, engine->mask, 0,
> > +				      "request cancellation by %s",
> > +				      current->comm);
> > +}
> > +
> >   static const struct intel_context_ops execlists_context_ops = {
> >   	.flags = COPS_HAS_INFLIGHT,
> >   	.alloc = execlists_context_alloc,
> > +	.cancel_request = execlists_context_cancel_request,
> > +
> >   	.pre_pin = execlists_context_pre_pin,
> >   	.pin = execlists_context_pin,
> >   	.unpin = lrc_unpin,
> > @@ -3604,6 +3620,8 @@ static const struct intel_context_ops virtual_context_ops = {
> >   	.alloc = virtual_context_alloc,
> > +	.cancel_request = execlists_context_cancel_request,
> > +
> >   	.pre_pin = virtual_context_pre_pin,
> >   	.pin = virtual_context_pin,
> >   	.unpin = lrc_unpin,
> > diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > index 05bb9f449df1..2958e2fae380 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > @@ -16,6 +16,7 @@
> >   #include "intel_reset.h"
> >   #include "intel_ring.h"
> >   #include "shmem_utils.h"
> > +#include "intel_engine_heartbeat.h"
> >   /* Rough estimate of the typical request size, performing a flush,
> >    * set-context and then emitting the batch.
> > @@ -604,9 +605,24 @@ static void ring_context_ban(struct intel_context *ce,
> >   		}
> >   }
> > +static void ring_context_cancel_request(struct intel_context *ce,
> > +					struct i915_request *rq)
> > +{
> > +	struct intel_engine_cs *engine = NULL;
> > +
> > +	i915_request_active_engine(rq, &engine);
> > +
> > +	if (engine && intel_engine_pulse(engine))
> > +		intel_gt_handle_error(engine->gt, engine->mask, 0,
> > +				      "request cancellation by %s",
> > +				      current->comm);
> > +}
> > +
> >   static const struct intel_context_ops ring_context_ops = {
> >   	.alloc = ring_context_alloc,
> > +	.cancel_request = ring_context_cancel_request,
> > +
> >   	.ban = ring_context_ban,
> >   	.pre_pin = ring_context_pre_pin,
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > index 3b9ba3bdd425..a26754b9b940 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > @@ -81,6 +81,11 @@ guc_create_virtual(struct intel_engine_cs **siblings, unsigned int count);
> >    */
> >   #define SCHED_STATE_NO_LOCK_ENABLED			BIT(0)
> >   #define SCHED_STATE_NO_LOCK_PENDING_ENABLE		BIT(1)
> > +#define SCHED_STATE_NO_LOCK_BLOCKED_SHIFT		2
> > +#define SCHED_STATE_NO_LOCK_BLOCKED \
> > +	BIT(SCHED_STATE_NO_LOCK_BLOCKED_SHIFT)
> > +#define SCHED_STATE_NO_LOCK_BLOCKED_MASK \
> > +	(0xffff << SCHED_STATE_NO_LOCK_BLOCKED_SHIFT)
> >   static inline bool context_enabled(struct intel_context *ce)
> >   {
> >   	return (atomic_read(&ce->guc_sched_state_no_lock) &
> > @@ -116,6 +121,30 @@ static inline void clr_context_pending_enable(struct intel_context *ce)
> >   		   &ce->guc_sched_state_no_lock);
> >   }
> > +static inline u32 context_blocked(struct intel_context *ce)
> > +{
> > +	return (atomic_read(&ce->guc_sched_state_no_lock) &
> > +		SCHED_STATE_NO_LOCK_BLOCKED_MASK) >>
> > +		SCHED_STATE_NO_LOCK_BLOCKED_SHIFT;
> > +}
> > +
> > +static inline void incr_context_blocked(struct intel_context *ce)
> > +{
> > +	lockdep_assert_held(&ce->engine->sched_engine->lock);
> > +	atomic_add(SCHED_STATE_NO_LOCK_BLOCKED,
> > +		   &ce->guc_sched_state_no_lock);
> > +	GEM_BUG_ON(!context_blocked(ce));	/* Overflow check */
> > +}
> > +
> > +static inline void decr_context_blocked(struct intel_context *ce)
> > +{
> > +	lockdep_assert_held(&ce->engine->sched_engine->lock);
> > +	GEM_BUG_ON(!context_blocked(ce));
> > +
> > +	atomic_sub(SCHED_STATE_NO_LOCK_BLOCKED,
> > +		   &ce->guc_sched_state_no_lock);
> > +}
> > +
> >   /*
> >    * Below is a set of functions which control the GuC scheduling state which
> >    * require a lock, aside from the special case where the functions are called
> > @@ -404,6 +433,14 @@ static int guc_add_request(struct intel_guc *guc, struct i915_request *rq)
> >   		if (unlikely(err))
> >   			goto out;
> >   	}
> > +
> > +	/*
> > +	 * The request / context will be run on the hardware when scheduling
> > +	 * gets enabled in the unblock.
> > +	 */
> > +	if (unlikely(context_blocked(ce)))
> > +		goto out;
> > +
> >   	enabled = context_enabled(ce);
> >   	if (!enabled) {
> > @@ -532,6 +569,7 @@ static void __guc_context_destroy(struct intel_context *ce);
> >   static void release_guc_id(struct intel_guc *guc, struct intel_context *ce);
> >   static void guc_signal_context_fence(struct intel_context *ce);
> >   static void guc_cancel_context_requests(struct intel_context *ce);
> > +static void guc_blocked_fence_complete(struct intel_context *ce);
> >   static void scrub_guc_desc_for_outstanding_g2h(struct intel_guc *guc)
> >   {
> > @@ -579,6 +617,10 @@ static void scrub_guc_desc_for_outstanding_g2h(struct intel_guc *guc)
> >   			}
> >   			intel_context_sched_disable_unpin(ce);
> >   			atomic_dec(&guc->outstanding_submission_g2h);
> > +			spin_lock_irqsave(&ce->guc_state.lock, flags);
> > +			guc_blocked_fence_complete(ce);
> > +			spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> > +
> >   			intel_context_put(ce);
> >   		}
> >   	}
> > @@ -1353,6 +1395,21 @@ static void guc_context_post_unpin(struct intel_context *ce)
> >   	lrc_post_unpin(ce);
> >   }
> > +static void __guc_context_sched_enable(struct intel_guc *guc,
> > +				       struct intel_context *ce)
> > +{
> > +	u32 action[] = {
> > +		INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_SET,
> > +		ce->guc_id,
> > +		GUC_CONTEXT_ENABLE
> > +	};
> > +
> > +	trace_intel_context_sched_enable(ce);
> > +
> > +	guc_submission_send_busy_loop(guc, action, ARRAY_SIZE(action),
> > +				      G2H_LEN_DW_SCHED_CONTEXT_MODE_SET, true);
> > +}
> > +
> >   static void __guc_context_sched_disable(struct intel_guc *guc,
> >   					struct intel_context *ce,
> >   					u16 guc_id)
> > @@ -1371,17 +1428,130 @@ static void __guc_context_sched_disable(struct intel_guc *guc,
> >   				      G2H_LEN_DW_SCHED_CONTEXT_MODE_SET, true);
> >   }
> > +static void guc_blocked_fence_complete(struct intel_context *ce)
> > +{
> > +	lockdep_assert_held(&ce->guc_state.lock);
> > +
> > +	if (!i915_sw_fence_done(&ce->guc_blocked))
> > +		i915_sw_fence_complete(&ce->guc_blocked);
> > +}
> > +
> > +static void guc_blocked_fence_reinit(struct intel_context *ce)
> > +{
> > +	lockdep_assert_held(&ce->guc_state.lock);
> > +	GEM_BUG_ON(!i915_sw_fence_done(&ce->guc_blocked));
> > +
> > +	/*
> > +	 * This fence is always complete unless a pending schedule disable is
> > +	 * outstanding. We arm the fence here and complete it when we receive
> > +	 * the pending schedule disable complete message.
> > +	 */
> > +	i915_sw_fence_fini(&ce->guc_blocked);
> > +	i915_sw_fence_reinit(&ce->guc_blocked);
> > +	i915_sw_fence_await(&ce->guc_blocked);
> > +	i915_sw_fence_commit(&ce->guc_blocked);
> > +}
> > +
> >   static u16 prep_context_pending_disable(struct intel_context *ce)
> >   {
> >   	lockdep_assert_held(&ce->guc_state.lock);
> >   	set_context_pending_disable(ce);
> >   	clr_context_enabled(ce);
> > +	guc_blocked_fence_reinit(ce);
> >   	intel_context_get(ce);
> >   	return ce->guc_id;
> >   }
> > +static struct i915_sw_fence *guc_context_block(struct intel_context *ce)
> > +{
> > +	struct intel_guc *guc = ce_to_guc(ce);
> > +	struct i915_sched_engine *sched_engine = ce->engine->sched_engine;
> > +	unsigned long flags;
> > +	struct intel_runtime_pm *runtime_pm = ce->engine->uncore->rpm;
> > +	intel_wakeref_t wakeref;
> > +	u16 guc_id;
> > +	bool enabled;
> > +
> > +	/* Sync with submission path and unblock */
> > +	spin_lock_irqsave(&sched_engine->lock, flags);
> > +	incr_context_blocked(ce);
> > +	spin_unlock_irqrestore(&sched_engine->lock, flags);
> > +
> > +	spin_lock_irqsave(&ce->guc_state.lock, flags);
> > +	enabled = context_enabled(ce);
> > +	if (unlikely(!enabled || submission_disabled(guc))) {
> > +		if (enabled)
> > +			clr_context_enabled(ce);
> > +		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> > +		return &ce->guc_blocked;
> > +	}
> > +
> > +	/*
> > +	 * We add +2 here as the schedule disable complete CTB handler calls
> > +	 * intel_context_sched_disable_unpin (-2 to pin_count).
> > +	 */
> > +	atomic_add(2, &ce->pin_count);
> > +
> > +	guc_id = prep_context_pending_disable(ce);
> > +	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> > +
> > +	with_intel_runtime_pm(runtime_pm, wakeref)
> > +		__guc_context_sched_disable(guc, ce, guc_id);
> > +
> > +	return &ce->guc_blocked;
> > +}
> > +
> > +static void guc_context_unblock(struct intel_context *ce)
> > +{
> > +	struct intel_guc *guc = ce_to_guc(ce);
> > +	struct i915_sched_engine *sched_engine = ce->engine->sched_engine;
> > +	unsigned long flags;
> > +	struct intel_runtime_pm *runtime_pm = ce->engine->uncore->rpm;
> > +	intel_wakeref_t wakeref;
> > +
> > +	GEM_BUG_ON(context_enabled(ce));
> > +
> > +	spin_lock_irqsave(&ce->guc_state.lock, flags);
> > +	if (unlikely(submission_disabled(guc) ||
> > +		     !intel_context_is_pinned(ce) ||
> > +		     context_pending_disable(ce) ||
> > +		     context_blocked(ce) > 1)) {
> > +		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> > +		goto out;
> > +	}
> > +
> > +	set_context_pending_enable(ce);
> > +	set_context_enabled(ce);
> > +	intel_context_get(ce);
> > +	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> > +
> > +	with_intel_runtime_pm(runtime_pm, wakeref)
> > +		__guc_context_sched_enable(guc, ce);
> > +
> > +out:
> > +	spin_lock_irqsave(&sched_engine->lock, flags);
> > +	decr_context_blocked(ce);
> > +	spin_unlock_irqrestore(&sched_engine->lock, flags);.
> 
> As we discussed offline, it might be better to cover the whole block/unblock
> logic with ce->guc_state.lock. That way we can make sure we're not racing
> the incr/decr calls with the swapping locks.
> Apart from this, the patch LGTM.
> 

Yep, agree. The fact I had to look at this code for about 10 minutes to
convince myself it was safe isn't good. Much better to have it covered
by ce->guc_state.lock. Will fix.

Matt

> Daniele
> 
> > +}
> > +
> > +static void guc_context_cancel_request(struct intel_context *ce,
> > +				       struct i915_request *rq)
> > +{
> > +	if (i915_sw_fence_signaled(&rq->submit)) {
> > +		struct i915_sw_fence *fence = guc_context_block(ce);
> > +
> > +		i915_sw_fence_wait(fence);
> > +		if (!i915_request_completed(rq)) {
> > +			__i915_request_skip(rq);
> > +			guc_reset_state(ce, intel_ring_wrap(ce->ring, rq->head),
> > +					true);
> > +		}
> > +		guc_context_unblock(ce);
> > +	}
> > +}
> > +
> >   static void __guc_context_set_preemption_timeout(struct intel_guc *guc,
> >   						 u16 guc_id,
> >   						 u32 preemption_timeout)
> > @@ -1641,6 +1811,8 @@ static const struct intel_context_ops guc_context_ops = {
> >   	.ban = guc_context_ban,
> > +	.cancel_request = guc_context_cancel_request,
> > +
> >   	.enter = intel_context_enter_engine,
> >   	.exit = intel_context_exit_engine,
> > @@ -1836,6 +2008,8 @@ static const struct intel_context_ops virtual_guc_context_ops = {
> >   	.ban = guc_context_ban,
> > +	.cancel_request = guc_context_cancel_request,
> > +
> >   	.enter = guc_virtual_context_enter,
> >   	.exit = guc_virtual_context_exit,
> > @@ -2294,6 +2468,7 @@ int intel_guc_sched_done_process_msg(struct intel_guc *guc,
> >   		clr_context_banned(ce);
> >   		clr_context_pending_disable(ce);
> >   		__guc_signal_context_fence(ce);
> > +		guc_blocked_fence_complete(ce);
> >   		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> >   		if (banned) {
> > diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> > index 28f38b02a5d2..541a20371502 100644
> > --- a/drivers/gpu/drm/i915/i915_request.c
> > +++ b/drivers/gpu/drm/i915/i915_request.c
> > @@ -710,18 +710,6 @@ void i915_request_unsubmit(struct i915_request *request)
> >   	spin_unlock_irqrestore(&engine->sched_engine->lock, flags);
> >   }
> > -static void __cancel_request(struct i915_request *rq)
> > -{
> > -	struct intel_engine_cs *engine = NULL;
> > -
> > -	i915_request_active_engine(rq, &engine);
> > -
> > -	if (engine && intel_engine_pulse(engine))
> > -		intel_gt_handle_error(engine->gt, engine->mask, 0,
> > -				      "request cancellation by %s",
> > -				      current->comm);
> > -}
> > -
> >   void i915_request_cancel(struct i915_request *rq, int error)
> >   {
> >   	if (!i915_request_set_error_once(rq, error))
> > @@ -729,7 +717,7 @@ void i915_request_cancel(struct i915_request *rq, int error)
> >   	set_bit(I915_FENCE_FLAG_SENTINEL, &rq->fence.flags);
> > -	__cancel_request(rq);
> > +	intel_context_cancel_request(rq->context, rq);
> >   }
> >   static int __i915_sw_fence_call
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
