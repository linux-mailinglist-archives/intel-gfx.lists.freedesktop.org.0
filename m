Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 809A33D03B0
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 23:10:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F15ED6E51D;
	Tue, 20 Jul 2021 21:10:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C03CF6E51D;
 Tue, 20 Jul 2021 21:10:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10051"; a="275149434"
X-IronPort-AV: E=Sophos;i="5.84,256,1620716400"; d="scan'208";a="275149434"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 14:10:54 -0700
X-IronPort-AV: E=Sophos;i="5.84,256,1620716400"; d="scan'208";a="432695641"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 14:10:54 -0700
Date: Tue, 20 Jul 2021 13:59:38 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <20210720205938.GA24570@sdutt-i7>
References: <20210716201724.54804-1-matthew.brost@intel.com>
 <20210716201724.54804-27-matthew.brost@intel.com>
 <eae01cef-45c4-4204-d8ae-92e9d272c240@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eae01cef-45c4-4204-d8ae-92e9d272c240@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 26/51] drm/i915/guc: Reset implementation
 for new GuC interface
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

On Tue, Jul 20, 2021 at 01:19:48PM -0700, John Harrison wrote:
> On 7/16/2021 13:16, Matthew Brost wrote:
> > Reset implementation for new GuC interface. This is the legacy reset
> > implementation which is called when the i915 owns the engine hang check.
> > Future patches will offload the engine hang check to GuC but we will
> > continue to maintain this legacy path as a fallback and this code path
> > is also required if the GuC dies.
> > 
> > With the new GuC interface it is not possible to reset individual
> > engines - it is only possible to reset the GPU entirely. This patch
> > forces an entire chip reset if any engine hangs.
> > 
> > v2:
> >   (Michal)
> >    - Check for -EPIPE rather than -EIO (CT deadlock/corrupt check)
> > v3:
> >   (John H)
> >    - Split into a series of smaller patches
> While the split happened, it doesn't look like any of the other comments
> were address. Repeated below for clarity. Also, Tvrtko has a bunch of

Opps, I thought you asked for the split and didn't realize you had comments.

I thought I addressed Tvrtko's comments but a I'll circle back to them.

> outstanding comments too.
> 
> > 
> > Cc: John Harrison <john.c.harrison@intel.com>
> > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   6 +-
> >   drivers/gpu/drm/i915/gt/intel_reset.c         |  18 +-
> >   drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  13 -
> >   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   8 +-
> >   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 562 ++++++++++++++----
> >   drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  39 +-
> >   drivers/gpu/drm/i915/gt/uc/intel_uc.h         |   3 +
> >   7 files changed, 515 insertions(+), 134 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> > index aef3084e8b16..463a6ae605a0 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> > @@ -174,8 +174,6 @@ static void gt_sanitize(struct intel_gt *gt, bool force)
> >   	if (intel_gt_is_wedged(gt))
> >   		intel_gt_unset_wedged(gt);
> > -	intel_uc_sanitize(&gt->uc);
> > -
> >   	for_each_engine(engine, gt, id)
> >   		if (engine->reset.prepare)
> >   			engine->reset.prepare(engine);
> > @@ -191,6 +189,8 @@ static void gt_sanitize(struct intel_gt *gt, bool force)
> >   			__intel_engine_reset(engine, false);
> >   	}
> > +	intel_uc_reset(&gt->uc, false);
> > +
> >   	for_each_engine(engine, gt, id)
> >   		if (engine->reset.finish)
> >   			engine->reset.finish(engine);
> > @@ -243,6 +243,8 @@ int intel_gt_resume(struct intel_gt *gt)
> >   		goto err_wedged;
> >   	}
> > +	intel_uc_reset_finish(&gt->uc);
> > +
> >   	intel_rps_enable(&gt->rps);
> >   	intel_llc_enable(&gt->llc);
> > diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> > index 72251638d4ea..2987282dff6d 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> > @@ -826,6 +826,8 @@ static int gt_reset(struct intel_gt *gt, intel_engine_mask_t stalled_mask)
> >   		__intel_engine_reset(engine, stalled_mask & engine->mask);
> >   	local_bh_enable();
> > +	intel_uc_reset(&gt->uc, true);
> > +
> >   	intel_ggtt_restore_fences(gt->ggtt);
> >   	return err;
> > @@ -850,6 +852,8 @@ static void reset_finish(struct intel_gt *gt, intel_engine_mask_t awake)
> >   		if (awake & engine->mask)
> >   			intel_engine_pm_put(engine);
> >   	}
> > +
> > +	intel_uc_reset_finish(&gt->uc);
> >   }
> >   static void nop_submit_request(struct i915_request *request)
> > @@ -903,6 +907,7 @@ static void __intel_gt_set_wedged(struct intel_gt *gt)
> >   	for_each_engine(engine, gt, id)
> >   		if (engine->reset.cancel)
> >   			engine->reset.cancel(engine);
> > +	intel_uc_cancel_requests(&gt->uc);
> >   	local_bh_enable();
> >   	reset_finish(gt, awake);
> > @@ -1191,6 +1196,9 @@ int __intel_engine_reset_bh(struct intel_engine_cs *engine, const char *msg)
> >   	ENGINE_TRACE(engine, "flags=%lx\n", gt->reset.flags);
> >   	GEM_BUG_ON(!test_bit(I915_RESET_ENGINE + engine->id, &gt->reset.flags));
> > +	if (intel_engine_uses_guc(engine))
> > +		return -ENODEV;
> > +
> >   	if (!intel_engine_pm_get_if_awake(engine))
> >   		return 0;
> > @@ -1201,13 +1209,10 @@ int __intel_engine_reset_bh(struct intel_engine_cs *engine, const char *msg)
> >   			   "Resetting %s for %s\n", engine->name, msg);
> >   	atomic_inc(&engine->i915->gpu_error.reset_engine_count[engine->uabi_class]);
> > -	if (intel_engine_uses_guc(engine))
> > -		ret = intel_guc_reset_engine(&engine->gt->uc.guc, engine);
> > -	else
> > -		ret = intel_gt_reset_engine(engine);
> > +	ret = intel_gt_reset_engine(engine);
> >   	if (ret) {
> >   		/* If we fail here, we expect to fallback to a global reset */
> > -		ENGINE_TRACE(engine, "Failed to reset, err: %d\n", ret);
> > +		ENGINE_TRACE(engine, "Failed to reset %s, err: %d\n", engine->name, ret);
> >   		goto out;
> >   	}
> > @@ -1341,7 +1346,8 @@ void intel_gt_handle_error(struct intel_gt *gt,
> >   	 * Try engine reset when available. We fall back to full reset if
> >   	 * single reset fails.
> >   	 */
> > -	if (intel_has_reset_engine(gt) && !intel_gt_is_wedged(gt)) {
> > +	if (!intel_uc_uses_guc_submission(&gt->uc) &&
> > +	    intel_has_reset_engine(gt) && !intel_gt_is_wedged(gt)) {
> >   		local_bh_disable();
> >   		for_each_engine_masked(engine, gt, engine_mask, tmp) {
> >   			BUILD_BUG_ON(I915_RESET_MODESET >= I915_RESET_ENGINE);
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > index 6661dcb02239..9b09395b998f 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > @@ -572,19 +572,6 @@ int intel_guc_suspend(struct intel_guc *guc)
> >   	return 0;
> >   }
> > -/**
> > - * intel_guc_reset_engine() - ask GuC to reset an engine
> > - * @guc:	intel_guc structure
> > - * @engine:	engine to be reset
> > - */
> > -int intel_guc_reset_engine(struct intel_guc *guc,
> > -			   struct intel_engine_cs *engine)
> > -{
> > -	/* XXX: to be implemented with submission interface rework */
> > -
> > -	return -ENODEV;
> > -}
> > -
> >   /**
> >    * intel_guc_resume() - notify GuC resuming from suspend state
> >    * @guc:	the guc
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > index 3cc566565224..d75a76882a44 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > @@ -242,14 +242,16 @@ static inline void intel_guc_disable_msg(struct intel_guc *guc, u32 mask)
> >   int intel_guc_wait_for_idle(struct intel_guc *guc, long timeout);
> > -int intel_guc_reset_engine(struct intel_guc *guc,
> > -			   struct intel_engine_cs *engine);
> > -
> >   int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
> >   					  const u32 *msg, u32 len);
> >   int intel_guc_sched_done_process_msg(struct intel_guc *guc,
> >   				     const u32 *msg, u32 len);
> > +void intel_guc_submission_reset_prepare(struct intel_guc *guc);
> > +void intel_guc_submission_reset(struct intel_guc *guc, bool stalled);
> > +void intel_guc_submission_reset_finish(struct intel_guc *guc);
> > +void intel_guc_submission_cancel_requests(struct intel_guc *guc);
> > +
> >   void intel_guc_load_status(struct intel_guc *guc, struct drm_printer *p);
> >   #endif
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > index f8a6077fa3f9..0f5823922369 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > @@ -141,7 +141,7 @@ context_wait_for_deregister_to_register(struct intel_context *ce)
> >   static inline void
> >   set_context_wait_for_deregister_to_register(struct intel_context *ce)
> >   {
> > -	/* Only should be called from guc_lrc_desc_pin() */
> > +	/* Only should be called from guc_lrc_desc_pin() without lock */
> >   	ce->guc_state.sched_state |=
> >   		SCHED_STATE_WAIT_FOR_DEREGISTER_TO_REGISTER;
> >   }
> > @@ -241,15 +241,31 @@ static int guc_lrc_desc_pool_create(struct intel_guc *guc)
> >   static void guc_lrc_desc_pool_destroy(struct intel_guc *guc)
> >   {
> > +	guc->lrc_desc_pool_vaddr = NULL;
> >   	i915_vma_unpin_and_release(&guc->lrc_desc_pool, I915_VMA_RELEASE_MAP);
> >   }
> > +static inline bool guc_submission_initialized(struct intel_guc *guc)
> > +{
> > +	return guc->lrc_desc_pool_vaddr != NULL;
> > +}
> > +
> >   static inline void reset_lrc_desc(struct intel_guc *guc, u32 id)
> >   {
> > -	struct guc_lrc_desc *desc = __get_lrc_desc(guc, id);
> > +	if (likely(guc_submission_initialized(guc))) {
> > +		struct guc_lrc_desc *desc = __get_lrc_desc(guc, id);
> > +		unsigned long flags;
> > -	memset(desc, 0, sizeof(*desc));
> > -	xa_erase_irq(&guc->context_lookup, id);
> > +		memset(desc, 0, sizeof(*desc));
> > +
> > +		/*
> > +		 * xarray API doesn't have xa_erase_irqsave wrapper, so calling
> > +		 * the lower level functions directly.
> > +		 */
> > +		xa_lock_irqsave(&guc->context_lookup, flags);
> > +		__xa_erase(&guc->context_lookup, id);
> > +		xa_unlock_irqrestore(&guc->context_lookup, flags);
> > +	}
> >   }
> >   static inline bool lrc_desc_registered(struct intel_guc *guc, u32 id)
> > @@ -260,7 +276,15 @@ static inline bool lrc_desc_registered(struct intel_guc *guc, u32 id)
> >   static inline void set_lrc_desc_registered(struct intel_guc *guc, u32 id,
> >   					   struct intel_context *ce)
> >   {
> > -	xa_store_irq(&guc->context_lookup, id, ce, GFP_ATOMIC);
> > +	unsigned long flags;
> > +
> > +	/*
> > +	 * xarray API doesn't have xa_save_irqsave wrapper, so calling the
> > +	 * lower level functions directly.
> > +	 */
> > +	xa_lock_irqsave(&guc->context_lookup, flags);
> > +	__xa_store(&guc->context_lookup, id, ce, GFP_ATOMIC);
> > +	xa_unlock_irqrestore(&guc->context_lookup, flags);
> >   }
> >   static int guc_submission_send_busy_loop(struct intel_guc* guc,
> > @@ -326,6 +350,8 @@ int intel_guc_wait_for_idle(struct intel_guc *guc, long timeout)
> >   					true, timeout);
> >   }
> > +static int guc_lrc_desc_pin(struct intel_context *ce, bool loop);
> > +
> >   static int guc_add_request(struct intel_guc *guc, struct i915_request *rq)
> >   {
> >   	int err;
> > @@ -333,11 +359,22 @@ static int guc_add_request(struct intel_guc *guc, struct i915_request *rq)
> >   	u32 action[3];
> >   	int len = 0;
> >   	u32 g2h_len_dw = 0;
> > -	bool enabled = context_enabled(ce);
> > +	bool enabled;
> >   	GEM_BUG_ON(!atomic_read(&ce->guc_id_ref));
> >   	GEM_BUG_ON(context_guc_id_invalid(ce));
> > +	/*
> > +	 * Corner case where the GuC firmware was blown away and reloaded while
> > +	 * this context was pinned.
> > +	 */
> > +	if (unlikely(!lrc_desc_registered(guc, ce->guc_id))) {
> > +		err = guc_lrc_desc_pin(ce, false);
> > +		if (unlikely(err))
> > +			goto out;
> > +	}
> > +	enabled = context_enabled(ce);
> > +
> >   	if (!enabled) {
> >   		action[len++] = INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_SET;
> >   		action[len++] = ce->guc_id;
> > @@ -360,6 +397,7 @@ static int guc_add_request(struct intel_guc *guc, struct i915_request *rq)
> >   		intel_context_put(ce);
> >   	}
> > +out:
> >   	return err;
> >   }
> > @@ -414,15 +452,10 @@ static int guc_dequeue_one_context(struct intel_guc *guc)
> >   	if (submit) {
> >   		guc_set_lrc_tail(last);
> >   resubmit:
> > -		/*
> > -		 * We only check for -EBUSY here even though it is possible for
> > -		 * -EDEADLK to be returned. If -EDEADLK is returned, the GuC has
> > -		 * died and a full GT reset needs to be done. The hangcheck will
> > -		 * eventually detect that the GuC has died and trigger this
> > -		 * reset so no need to handle -EDEADLK here.
> > -		 */
> >   		ret = guc_add_request(guc, last);
> > -		if (ret == -EBUSY) {
> > +		if (unlikely(ret == -EPIPE))
> > +			goto deadlk;
> > +		else if (ret == -EBUSY) {
> >   			tasklet_schedule(&sched_engine->tasklet);
> >   			guc->stalled_request = last;
> >   			return false;
> > @@ -432,6 +465,11 @@ static int guc_dequeue_one_context(struct intel_guc *guc)
> >   	guc->stalled_request = NULL;
> >   	return submit;
> > +
> > +deadlk:
> > +	sched_engine->tasklet.callback = NULL;
> > +	tasklet_disable_nosync(&sched_engine->tasklet);
> > +	return false;
> >   }
> >   static void guc_submission_tasklet(struct tasklet_struct *t)
> > @@ -458,27 +496,166 @@ static void cs_irq_handler(struct intel_engine_cs *engine, u16 iir)
> >   		intel_engine_signal_breadcrumbs(engine);
> >   }
> > -static void guc_reset_prepare(struct intel_engine_cs *engine)
> > +static void __guc_context_destroy(struct intel_context *ce);
> > +static void release_guc_id(struct intel_guc *guc, struct intel_context *ce);
> > +static void guc_signal_context_fence(struct intel_context *ce);
> > +
> > +static void scrub_guc_desc_for_outstanding_g2h(struct intel_guc *guc)
> > +{
> > +	struct intel_context *ce;
> > +	unsigned long index, flags;
> > +	bool pending_disable, pending_enable, deregister, destroyed;
> > +
> > +	xa_for_each(&guc->context_lookup, index, ce) {
> > +		/* Flush context */
> > +		spin_lock_irqsave(&ce->guc_state.lock, flags);
> > +		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> > +
> > +		/*
> > +		 * Once we are at this point submission_disabled() is guaranteed
> > +		 * to visible to all callers who set the below flags (see above
> Still needs to be 'to be visible'
> 

Fixed.

> > +		 * flush and flushes in reset_prepare). If submission_disabled()
> > +		 * is set, the caller shouldn't set these flags.
> > +		 */
> > +
> > +		destroyed = context_destroyed(ce);
> > +		pending_enable = context_pending_enable(ce);
> > +		pending_disable = context_pending_disable(ce);
> > +		deregister = context_wait_for_deregister_to_register(ce);
> > +		init_sched_state(ce);
> > +
> > +		if (pending_enable || destroyed || deregister) {
> > +			atomic_dec(&guc->outstanding_submission_g2h);
> > +			if (deregister)
> > +				guc_signal_context_fence(ce);
> > +			if (destroyed) {
> > +				release_guc_id(guc, ce);
> > +				__guc_context_destroy(ce);
> > +			}
> > +			if (pending_enable|| deregister)
> > +				intel_context_put(ce);
> > +		}
> > +
> > +		/* Not mutualy exclusive with above if statement. */
> > +		if (pending_disable) {
> > +			guc_signal_context_fence(ce);
> > +			intel_context_sched_disable_unpin(ce);
> > +			atomic_dec(&guc->outstanding_submission_g2h);
> > +			intel_context_put(ce);
> > +		}
> > +	}
> > +}
> > +
> > +static inline bool
> > +submission_disabled(struct intel_guc *guc)
> > +{
> > +	struct i915_sched_engine * const sched_engine = guc->sched_engine;
> > +
> > +	return unlikely(!sched_engine ||
> > +			!__tasklet_is_enabled(&sched_engine->tasklet));
> > +}
> > +
> > +static void disable_submission(struct intel_guc *guc)
> > +{
> > +	struct i915_sched_engine * const sched_engine = guc->sched_engine;
> > +
> > +	if (__tasklet_is_enabled(&sched_engine->tasklet)) {
> > +		GEM_BUG_ON(!guc->ct.enabled);
> > +		__tasklet_disable_sync_once(&sched_engine->tasklet);
> > +		sched_engine->tasklet.callback = NULL;
> > +	}
> > +}
> > +
> > +static void enable_submission(struct intel_guc *guc)
> > +{
> > +	struct i915_sched_engine * const sched_engine = guc->sched_engine;
> > +	unsigned long flags;
> > +
> > +	spin_lock_irqsave(&guc->sched_engine->lock, flags);
> > +	sched_engine->tasklet.callback = guc_submission_tasklet;
> > +	wmb();
> > +	if (!__tasklet_is_enabled(&sched_engine->tasklet) &&
> > +	    __tasklet_enable(&sched_engine->tasklet)) {
> > +		GEM_BUG_ON(!guc->ct.enabled);
> > +
> > +		/* And kick in case we missed a new request submission. */
> > +		tasklet_hi_schedule(&sched_engine->tasklet);
> > +	}
> > +	spin_unlock_irqrestore(&guc->sched_engine->lock, flags);
> > +}
> > +
> > +static void guc_flush_submissions(struct intel_guc *guc)
> > +{
> > +	struct i915_sched_engine * const sched_engine = guc->sched_engine;
> > +	unsigned long flags;
> > +
> > +	spin_lock_irqsave(&sched_engine->lock, flags);
> > +	spin_unlock_irqrestore(&sched_engine->lock, flags);
> > +}
> > +
> > +void intel_guc_submission_reset_prepare(struct intel_guc *guc)
> >   {
> > -	ENGINE_TRACE(engine, "\n");
> > +	int i;
> > +
> > +	if (unlikely(!guc_submission_initialized(guc)))
> > +		/* Reset called during driver load? GuC not yet initialised! */
> > +		return;
> Still think this should have braces. Maybe not syntactically required but
> just looks wrong.
> 

Sure.

> > +
> > +	disable_submission(guc);
> > +	guc->interrupts.disable(guc);
> > +
> > +	/* Flush IRQ handler */
> > +	spin_lock_irq(&guc_to_gt(guc)->irq_lock);
> > +	spin_unlock_irq(&guc_to_gt(guc)->irq_lock);
> > +
> > +	guc_flush_submissions(guc);
> >   	/*
> > -	 * Prevent request submission to the hardware until we have
> > -	 * completed the reset in i915_gem_reset_finish(). If a request
> > -	 * is completed by one engine, it may then queue a request
> > -	 * to a second via its execlists->tasklet *just* as we are
> > -	 * calling engine->init_hw() and also writing the ELSP.
> > -	 * Turning off the execlists->tasklet until the reset is over
> > -	 * prevents the race.
> > -	 */
> > -	__tasklet_disable_sync_once(&engine->sched_engine->tasklet);
> > +	 * Handle any outstanding G2Hs before reset. Call IRQ handler directly
> > +	 * each pass as interrupt have been disabled. We always scrub for
> > +	 * outstanding G2H as it is possible for outstanding_submission_g2h to
> > +	 * be incremented after the context state update.
> > + 	 */
> > +	for (i = 0; i < 4 && atomic_read(&guc->outstanding_submission_g2h); ++i) {
> > +		intel_guc_to_host_event_handler(guc);
> > +#define wait_for_reset(guc, wait_var) \
> > +		guc_wait_for_pending_msg(guc, wait_var, false, (HZ / 20))
> > +		do {
> > +			wait_for_reset(guc, &guc->outstanding_submission_g2h);
> > +		} while (!list_empty(&guc->ct.requests.incoming));
> > +	}
> > +	scrub_guc_desc_for_outstanding_g2h(guc);
> > +}
> > +
> > +static struct intel_engine_cs *
> > +guc_virtual_get_sibling(struct intel_engine_cs *ve, unsigned int sibling)
> > +{
> > +	struct intel_engine_cs *engine;
> > +	intel_engine_mask_t tmp, mask = ve->mask;
> > +	unsigned int num_siblings = 0;
> > +
> > +	for_each_engine_masked(engine, ve->gt, mask, tmp)
> > +		if (num_siblings++ == sibling)
> > +			return engine;
> > +
> > +	return NULL;
> > +}
> > +
> > +static inline struct intel_engine_cs *
> > +__context_to_physical_engine(struct intel_context *ce)
> > +{
> > +	struct intel_engine_cs *engine = ce->engine;
> > +
> > +	if (intel_engine_is_virtual(engine))
> > +		engine = guc_virtual_get_sibling(engine, 0);
> > +
> > +	return engine;
> >   }
> > -static void guc_reset_state(struct intel_context *ce,
> > -			    struct intel_engine_cs *engine,
> > -			    u32 head,
> > -			    bool scrub)
> > +static void guc_reset_state(struct intel_context *ce, u32 head, bool scrub)
> >   {
> > +	struct intel_engine_cs *engine = __context_to_physical_engine(ce);
> > +
> >   	GEM_BUG_ON(!intel_context_is_pinned(ce));
> >   	/*
> > @@ -496,42 +673,147 @@ static void guc_reset_state(struct intel_context *ce,
> >   	lrc_update_regs(ce, engine, head);
> >   }
> > -static void guc_reset_rewind(struct intel_engine_cs *engine, bool stalled)
> > +static void guc_reset_nop(struct intel_engine_cs *engine)
> >   {
> > -	struct intel_engine_execlists * const execlists = &engine->execlists;
> > -	struct i915_request *rq;
> > +}
> > +
> > +static void guc_rewind_nop(struct intel_engine_cs *engine, bool stalled)
> > +{
> > +}
> > +
> > +static void
> > +__unwind_incomplete_requests(struct intel_context *ce)
> > +{
> > +	struct i915_request *rq, *rn;
> > +	struct list_head *pl;
> > +	int prio = I915_PRIORITY_INVALID;
> > +	struct i915_sched_engine * const sched_engine =
> > +		ce->engine->sched_engine;
> >   	unsigned long flags;
> > -	spin_lock_irqsave(&engine->sched_engine->lock, flags);
> > +	spin_lock_irqsave(&sched_engine->lock, flags);
> > +	spin_lock(&ce->guc_active.lock);
> > +	list_for_each_entry_safe(rq, rn,
> > +				 &ce->guc_active.requests,
> > +				 sched.link) {
> > +		if (i915_request_completed(rq))
> > +			continue;
> > +
> > +		list_del_init(&rq->sched.link);
> > +		spin_unlock(&ce->guc_active.lock);
> > +
> > +		__i915_request_unsubmit(rq);
> > +
> > +		/* Push the request back into the queue for later resubmission. */
> > +		GEM_BUG_ON(rq_prio(rq) == I915_PRIORITY_INVALID);
> > +		if (rq_prio(rq) != prio) {
> > +			prio = rq_prio(rq);
> > +			pl = i915_sched_lookup_priolist(sched_engine, prio);
> > +		}
> > +		GEM_BUG_ON(i915_sched_engine_is_empty(sched_engine));
> > -	/* Push back any incomplete requests for replay after the reset. */
> > -	rq = execlists_unwind_incomplete_requests(execlists);
> > -	if (!rq)
> > -		goto out_unlock;
> > +		list_add_tail(&rq->sched.link, pl);
> > +		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> > +
> > +		spin_lock(&ce->guc_active.lock);
> > +	}
> > +	spin_unlock(&ce->guc_active.lock);
> > +	spin_unlock_irqrestore(&sched_engine->lock, flags);
> > +}
> > +
> > +static struct i915_request *context_find_active_request(struct intel_context *ce)
> > +{
> > +	struct i915_request *rq, *active = NULL;
> > +	unsigned long flags;
> > +
> > +	spin_lock_irqsave(&ce->guc_active.lock, flags);
> > +	list_for_each_entry_reverse(rq, &ce->guc_active.requests,
> > +				    sched.link) {
> > +		if (i915_request_completed(rq))
> > +			break;
> > +
> > +		active = rq;
> > +	}
> > +	spin_unlock_irqrestore(&ce->guc_active.lock, flags);
> > +
> > +	return active;
> > +}
> > +
> > +static void __guc_reset_context(struct intel_context *ce, bool stalled)
> > +{
> > +	struct i915_request *rq;
> > +	u32 head;
> > +
> > +	/*
> > +	 * GuC will implicitly mark the context as non-schedulable
> > +	 * when it sends the reset notification. Make sure our state
> > +	 * reflects this change. The context will be marked enabled
> > +	 * on resubmission.
> > +	 */
> > +	clr_context_enabled(ce);
> > +
> > +	rq = context_find_active_request(ce);
> > +	if (!rq) {
> > +		head = ce->ring->tail;
> > +		stalled = false;
> > +		goto out_replay;
> > +	}
> >   	if (!i915_request_started(rq))
> >   		stalled = false;
> > +	GEM_BUG_ON(i915_active_is_idle(&ce->active));
> > +	head = intel_ring_wrap(ce->ring, rq->head);
> >   	__i915_request_reset(rq, stalled);
> > -	guc_reset_state(rq->context, engine, rq->head, stalled);
> > -out_unlock:
> > -	spin_unlock_irqrestore(&engine->sched_engine->lock, flags);
> > +out_replay:
> > +	guc_reset_state(ce, head, stalled);
> > +	__unwind_incomplete_requests(ce);
> > +}
> > +
> > +void intel_guc_submission_reset(struct intel_guc *guc, bool stalled)
> > +{
> > +	struct intel_context *ce;
> > +	unsigned long index;
> > +
> > +	if (unlikely(!guc_submission_initialized(guc)))
> > +		/* Reset called during driver load? GuC not yet initialised! */
> > +		return;
> And again.
> 

Yep.

> > +
> > +	xa_for_each(&guc->context_lookup, index, ce)
> > +		if (intel_context_is_pinned(ce))
> > +			__guc_reset_context(ce, stalled);
> > +
> > +	/* GuC is blown away, drop all references to contexts */
> > +	xa_destroy(&guc->context_lookup);
> > +}
> > +
> > +static void guc_cancel_context_requests(struct intel_context *ce)
> > +{
> > +	struct i915_sched_engine *sched_engine = ce_to_guc(ce)->sched_engine;
> > +	struct i915_request *rq;
> > +	unsigned long flags;
> > +
> > +	/* Mark all executing requests as skipped. */
> > +	spin_lock_irqsave(&sched_engine->lock, flags);
> > +	spin_lock(&ce->guc_active.lock);
> > +	list_for_each_entry(rq, &ce->guc_active.requests, sched.link)
> > +		i915_request_put(i915_request_mark_eio(rq));
> > +	spin_unlock(&ce->guc_active.lock);
> > +	spin_unlock_irqrestore(&sched_engine->lock, flags);
> >   }
> > -static void guc_reset_cancel(struct intel_engine_cs *engine)
> > +static void
> > +guc_cancel_sched_engine_requests(struct i915_sched_engine *sched_engine)
> >   {
> > -	struct i915_sched_engine * const sched_engine = engine->sched_engine;
> >   	struct i915_request *rq, *rn;
> >   	struct rb_node *rb;
> >   	unsigned long flags;
> >   	/* Can be called during boot if GuC fails to load */
> > -	if (!engine->gt)
> > +	if (!sched_engine)
> >   		return;
> > -	ENGINE_TRACE(engine, "\n");
> > -
> >   	/*
> >   	 * Before we call engine->cancel_requests(), we should have exclusive
> >   	 * access to the submission state. This is arranged for us by the
> > @@ -548,21 +830,16 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
> >   	 */
> >   	spin_lock_irqsave(&sched_engine->lock, flags);
> > -	/* Mark all executing requests as skipped. */
> > -	list_for_each_entry(rq, &sched_engine->requests, sched.link) {
> > -		i915_request_set_error_once(rq, -EIO);
> > -		i915_request_mark_complete(rq);
> > -	}
> > -
> >   	/* Flush the queued requests to the timeline list (for retiring). */
> >   	while ((rb = rb_first_cached(&sched_engine->queue))) {
> >   		struct i915_priolist *p = to_priolist(rb);
> >   		priolist_for_each_request_consume(rq, rn, p) {
> >   			list_del_init(&rq->sched.link);
> > +
> >   			__i915_request_submit(rq);
> > -			dma_fence_set_error(&rq->fence, -EIO);
> > -			i915_request_mark_complete(rq);
> > +
> > +			i915_request_put(i915_request_mark_eio(rq));
> >   		}
> >   		rb_erase_cached(&p->node, &sched_engine->queue);
> > @@ -577,14 +854,38 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
> >   	spin_unlock_irqrestore(&sched_engine->lock, flags);
> >   }
> > -static void guc_reset_finish(struct intel_engine_cs *engine)
> > +void intel_guc_submission_cancel_requests(struct intel_guc *guc)
> >   {
> > -	if (__tasklet_enable(&engine->sched_engine->tasklet))
> > -		/* And kick in case we missed a new request submission. */
> > -		tasklet_hi_schedule(&engine->sched_engine->tasklet);
> > +	struct intel_context *ce;
> > +	unsigned long index;
> > -	ENGINE_TRACE(engine, "depth->%d\n",
> > -		     atomic_read(&engine->sched_engine->tasklet.count));
> > +	xa_for_each(&guc->context_lookup, index, ce)
> > +		if (intel_context_is_pinned(ce))
> > +			guc_cancel_context_requests(ce);
> > +
> > +	guc_cancel_sched_engine_requests(guc->sched_engine);
> > +
> > +	/* GuC is blown away, drop all references to contexts */
> > +	xa_destroy(&guc->context_lookup);
> And again, most of this code is common to 'intel_guc_submission_reset' so
> could be moved to a shared helper function.
> 

Similar code structure but different.

We use the same xa_for_each loop + pinned check but call
__guc_reset_context vs guc_cancel_context_requests. Also here I don't
think we can clear &guc->context_lookup until
guc_cancel_sched_engine_requests completes. Not sure how to structure a
helper that makes sense.

Matt

> John.
> 
> > +}
> > +
> > +void intel_guc_submission_reset_finish(struct intel_guc *guc)
> > +{
> > +	/* Reset called during driver load or during wedge? */
> > +	if (unlikely(!guc_submission_initialized(guc) ||
> > +		     test_bit(I915_WEDGED, &guc_to_gt(guc)->reset.flags)))
> > +		return;
> > +
> > +	/*
> > +	 * Technically possible for either of these values to be non-zero here,
> > +	 * but very unlikely + harmless. Regardless let's add a warn so we can
> > +	 * see in CI if this happens frequently / a precursor to taking down the
> > +	 * machine.
> > +	 */
> > +	GEM_WARN_ON(atomic_read(&guc->outstanding_submission_g2h));
> > +	atomic_set(&guc->outstanding_submission_g2h, 0);
> > +
> > +	enable_submission(guc);
> >   }
> >   /*
> > @@ -651,6 +952,9 @@ static int guc_bypass_tasklet_submit(struct intel_guc *guc,
> >   	else
> >   		trace_i915_request_guc_submit(rq);
> > +	if (unlikely(ret == -EPIPE))
> > +		disable_submission(guc);
> > +
> >   	return ret;
> >   }
> > @@ -663,7 +967,8 @@ static void guc_submit_request(struct i915_request *rq)
> >   	/* Will be called from irq-context when using foreign fences. */
> >   	spin_lock_irqsave(&sched_engine->lock, flags);
> > -	if (guc->stalled_request || !i915_sched_engine_is_empty(sched_engine))
> > +	if (submission_disabled(guc) || guc->stalled_request ||
> > +	    !i915_sched_engine_is_empty(sched_engine))
> >   		queue_request(sched_engine, rq, rq_prio(rq));
> >   	else if (guc_bypass_tasklet_submit(guc, rq) == -EBUSY)
> >   		tasklet_hi_schedule(&sched_engine->tasklet);
> > @@ -800,7 +1105,8 @@ static void unpin_guc_id(struct intel_guc *guc, struct intel_context *ce)
> >   static int __guc_action_register_context(struct intel_guc *guc,
> >   					 u32 guc_id,
> > -					 u32 offset)
> > +					 u32 offset,
> > +					 bool loop)
> >   {
> >   	u32 action[] = {
> >   		INTEL_GUC_ACTION_REGISTER_CONTEXT,
> > @@ -809,10 +1115,10 @@ static int __guc_action_register_context(struct intel_guc *guc,
> >   	};
> >   	return guc_submission_send_busy_loop(guc, action, ARRAY_SIZE(action),
> > -					     0, true);
> > +					     0, loop);
> >   }
> > -static int register_context(struct intel_context *ce)
> > +static int register_context(struct intel_context *ce, bool loop)
> >   {
> >   	struct intel_guc *guc = ce_to_guc(ce);
> >   	u32 offset = intel_guc_ggtt_offset(guc, guc->lrc_desc_pool) +
> > @@ -820,11 +1126,12 @@ static int register_context(struct intel_context *ce)
> >   	trace_intel_context_register(ce);
> > -	return __guc_action_register_context(guc, ce->guc_id, offset);
> > +	return __guc_action_register_context(guc, ce->guc_id, offset, loop);
> >   }
> >   static int __guc_action_deregister_context(struct intel_guc *guc,
> > -					   u32 guc_id)
> > +					   u32 guc_id,
> > +					   bool loop)
> >   {
> >   	u32 action[] = {
> >   		INTEL_GUC_ACTION_DEREGISTER_CONTEXT,
> > @@ -833,16 +1140,16 @@ static int __guc_action_deregister_context(struct intel_guc *guc,
> >   	return guc_submission_send_busy_loop(guc, action, ARRAY_SIZE(action),
> >   					     G2H_LEN_DW_DEREGISTER_CONTEXT,
> > -					     true);
> > +					     loop);
> >   }
> > -static int deregister_context(struct intel_context *ce, u32 guc_id)
> > +static int deregister_context(struct intel_context *ce, u32 guc_id, bool loop)
> >   {
> >   	struct intel_guc *guc = ce_to_guc(ce);
> >   	trace_intel_context_deregister(ce);
> > -	return __guc_action_deregister_context(guc, guc_id);
> > +	return __guc_action_deregister_context(guc, guc_id, loop);
> >   }
> >   static intel_engine_mask_t adjust_engine_mask(u8 class, intel_engine_mask_t mask)
> > @@ -871,7 +1178,7 @@ static void guc_context_policy_init(struct intel_engine_cs *engine,
> >   	desc->preemption_timeout = CONTEXT_POLICY_DEFAULT_PREEMPTION_TIME_US;
> >   }
> > -static int guc_lrc_desc_pin(struct intel_context *ce)
> > +static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
> >   {
> >   	struct intel_runtime_pm *runtime_pm =
> >   		&ce->engine->gt->i915->runtime_pm;
> > @@ -917,18 +1224,45 @@ static int guc_lrc_desc_pin(struct intel_context *ce)
> >   	 */
> >   	if (context_registered) {
> >   		trace_intel_context_steal_guc_id(ce);
> > -		set_context_wait_for_deregister_to_register(ce);
> > -		intel_context_get(ce);
> > +		if (!loop) {
> > +			set_context_wait_for_deregister_to_register(ce);
> > +			intel_context_get(ce);
> > +		} else {
> > +			bool disabled;
> > +			unsigned long flags;
> > +
> > +			/* Seal race with Reset */
> > +			spin_lock_irqsave(&ce->guc_state.lock, flags);
> > +			disabled = submission_disabled(guc);
> > +			if (likely(!disabled)) {
> > +				set_context_wait_for_deregister_to_register(ce);
> > +				intel_context_get(ce);
> > +			}
> > +			spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> > +			if (unlikely(disabled)) {
> > +				reset_lrc_desc(guc, desc_idx);
> > +				return 0;	/* Will get registered later */
> > +			}
> > +		}
> >   		/*
> >   		 * If stealing the guc_id, this ce has the same guc_id as the
> >   		 * context whos guc_id was stole.
> >   		 */
> >   		with_intel_runtime_pm(runtime_pm, wakeref)
> > -			ret = deregister_context(ce, ce->guc_id);
> > +			ret = deregister_context(ce, ce->guc_id, loop);
> > +		if (unlikely(ret == -EBUSY)) {
> > +			clr_context_wait_for_deregister_to_register(ce);
> > +			intel_context_put(ce);
> > +		} else if (unlikely(ret == -ENODEV))
> > +			ret = 0;	/* Will get registered later */
> >   	} else {
> >   		with_intel_runtime_pm(runtime_pm, wakeref)
> > -			ret = register_context(ce);
> > +			ret = register_context(ce, loop);
> > +		if (unlikely(ret == -EBUSY))
> > +			reset_lrc_desc(guc, desc_idx);
> > +		else if (unlikely(ret == -ENODEV))
> > +			ret = 0;	/* Will get registered later */
> >   	}
> >   	return ret;
> > @@ -991,7 +1325,6 @@ static void __guc_context_sched_disable(struct intel_guc *guc,
> >   	GEM_BUG_ON(guc_id == GUC_INVALID_LRC_ID);
> >   	trace_intel_context_sched_disable(ce);
> > -	intel_context_get(ce);
> >   	guc_submission_send_busy_loop(guc, action, ARRAY_SIZE(action),
> >   				      G2H_LEN_DW_SCHED_CONTEXT_MODE_SET, true);
> > @@ -1003,6 +1336,7 @@ static u16 prep_context_pending_disable(struct intel_context *ce)
> >   	set_context_pending_disable(ce);
> >   	clr_context_enabled(ce);
> > +	intel_context_get(ce);
> >   	return ce->guc_id;
> >   }
> > @@ -1015,7 +1349,7 @@ static void guc_context_sched_disable(struct intel_context *ce)
> >   	u16 guc_id;
> >   	intel_wakeref_t wakeref;
> > -	if (context_guc_id_invalid(ce) ||
> > +	if (submission_disabled(guc) || context_guc_id_invalid(ce) ||
> >   	    !lrc_desc_registered(guc, ce->guc_id)) {
> >   		clr_context_enabled(ce);
> >   		goto unpin;
> > @@ -1036,6 +1370,7 @@ static void guc_context_sched_disable(struct intel_context *ce)
> >   	 * a request before we set the 'context_pending_disable' flag here.
> >   	 */
> >   	if (unlikely(atomic_add_unless(&ce->pin_count, -2, 2))) {
> > +		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> >   		return;
> >   	}
> >   	guc_id = prep_context_pending_disable(ce);
> > @@ -1052,19 +1387,13 @@ static void guc_context_sched_disable(struct intel_context *ce)
> >   static inline void guc_lrc_desc_unpin(struct intel_context *ce)
> >   {
> > -	struct intel_engine_cs *engine = ce->engine;
> > -	struct intel_guc *guc = &engine->gt->uc.guc;
> > -	unsigned long flags;
> > +	struct intel_guc *guc = ce_to_guc(ce);
> >   	GEM_BUG_ON(!lrc_desc_registered(guc, ce->guc_id));
> >   	GEM_BUG_ON(ce != __get_context(guc, ce->guc_id));
> >   	GEM_BUG_ON(context_enabled(ce));
> > -	spin_lock_irqsave(&ce->guc_state.lock, flags);
> > -	set_context_destroyed(ce);
> > -	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> > -
> > -	deregister_context(ce, ce->guc_id);
> > +	deregister_context(ce, ce->guc_id, true);
> >   }
> >   static void __guc_context_destroy(struct intel_context *ce)
> > @@ -1092,13 +1421,15 @@ static void guc_context_destroy(struct kref *kref)
> >   	struct intel_guc *guc = &ce->engine->gt->uc.guc;
> >   	intel_wakeref_t wakeref;
> >   	unsigned long flags;
> > +	bool disabled;
> >   	/*
> >   	 * If the guc_id is invalid this context has been stolen and we can free
> >   	 * it immediately. Also can be freed immediately if the context is not
> >   	 * registered with the GuC.
> >   	 */
> > -	if (context_guc_id_invalid(ce) ||
> > +	if (submission_disabled(guc) ||
> > +	    context_guc_id_invalid(ce) ||
> >   	    !lrc_desc_registered(guc, ce->guc_id)) {
> >   		release_guc_id(guc, ce);
> >   		__guc_context_destroy(ce);
> > @@ -1125,6 +1456,18 @@ static void guc_context_destroy(struct kref *kref)
> >   		list_del_init(&ce->guc_id_link);
> >   	spin_unlock_irqrestore(&guc->contexts_lock, flags);
> > +	/* Seal race with Reset */
> > +	spin_lock_irqsave(&ce->guc_state.lock, flags);
> > +	disabled = submission_disabled(guc);
> > +	if (likely(!disabled))
> > +		set_context_destroyed(ce);
> > +	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> > +	if (unlikely(disabled)) {
> > +		release_guc_id(guc, ce);
> > +		__guc_context_destroy(ce);
> > +		return;
> > +	}
> > +
> >   	/*
> >   	 * We defer GuC context deregistration until the context is destroyed
> >   	 * in order to save on CTBs. With this optimization ideally we only need
> > @@ -1212,8 +1555,6 @@ static void guc_signal_context_fence(struct intel_context *ce)
> >   {
> >   	unsigned long flags;
> > -	GEM_BUG_ON(!context_wait_for_deregister_to_register(ce));
> > -
> >   	spin_lock_irqsave(&ce->guc_state.lock, flags);
> >   	clr_context_wait_for_deregister_to_register(ce);
> >   	__guc_signal_context_fence(ce);
> > @@ -1222,8 +1563,9 @@ static void guc_signal_context_fence(struct intel_context *ce)
> >   static bool context_needs_register(struct intel_context *ce, bool new_guc_id)
> >   {
> > -	return new_guc_id || test_bit(CONTEXT_LRCA_DIRTY, &ce->flags) ||
> > -		!lrc_desc_registered(ce_to_guc(ce), ce->guc_id);
> > +	return (new_guc_id || test_bit(CONTEXT_LRCA_DIRTY, &ce->flags) ||
> > +		!lrc_desc_registered(ce_to_guc(ce), ce->guc_id)) &&
> > +		!submission_disabled(ce_to_guc(ce));
> >   }
> >   static int guc_request_alloc(struct i915_request *rq)
> > @@ -1281,8 +1623,12 @@ static int guc_request_alloc(struct i915_request *rq)
> >   	if (unlikely(ret < 0))
> >   		return ret;;
> >   	if (context_needs_register(ce, !!ret)) {
> > -		ret = guc_lrc_desc_pin(ce);
> > +		ret = guc_lrc_desc_pin(ce, true);
> >   		if (unlikely(ret)) {	/* unwind */
> > +			if (ret == -EPIPE) {
> > +				disable_submission(guc);
> > +				goto out;	/* GPU will be reset */
> > +			}
> >   			atomic_dec(&ce->guc_id_ref);
> >   			unpin_guc_id(guc, ce);
> >   			return ret;
> > @@ -1319,20 +1665,6 @@ static int guc_request_alloc(struct i915_request *rq)
> >   	return 0;
> >   }
> > -static struct intel_engine_cs *
> > -guc_virtual_get_sibling(struct intel_engine_cs *ve, unsigned int sibling)
> > -{
> > -	struct intel_engine_cs *engine;
> > -	intel_engine_mask_t tmp, mask = ve->mask;
> > -	unsigned int num_siblings = 0;
> > -
> > -	for_each_engine_masked(engine, ve->gt, mask, tmp)
> > -		if (num_siblings++ == sibling)
> > -			return engine;
> > -
> > -	return NULL;
> > -}
> > -
> >   static int guc_virtual_context_pre_pin(struct intel_context *ce,
> >   				       struct i915_gem_ww_ctx *ww,
> >   				       void **vaddr)
> > @@ -1528,7 +1860,7 @@ static inline void guc_kernel_context_pin(struct intel_guc *guc,
> >   {
> >   	if (context_guc_id_invalid(ce))
> >   		pin_guc_id(guc, ce);
> > -	guc_lrc_desc_pin(ce);
> > +	guc_lrc_desc_pin(ce, true);
> >   }
> >   static inline void guc_init_lrc_mapping(struct intel_guc *guc)
> > @@ -1599,10 +1931,10 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
> >   	engine->sched_engine->schedule = i915_schedule;
> > -	engine->reset.prepare = guc_reset_prepare;
> > -	engine->reset.rewind = guc_reset_rewind;
> > -	engine->reset.cancel = guc_reset_cancel;
> > -	engine->reset.finish = guc_reset_finish;
> > +	engine->reset.prepare = guc_reset_nop;
> > +	engine->reset.rewind = guc_rewind_nop;
> > +	engine->reset.cancel = guc_reset_nop;
> > +	engine->reset.finish = guc_reset_nop;
> >   	engine->emit_flush = gen8_emit_flush_xcs;
> >   	engine->emit_init_breadcrumb = gen8_emit_init_breadcrumb;
> > @@ -1651,6 +1983,17 @@ static inline void guc_default_irqs(struct intel_engine_cs *engine)
> >   	intel_engine_set_irq_handler(engine, cs_irq_handler);
> >   }
> > +static void guc_sched_engine_destroy(struct kref *kref)
> > +{
> > +	struct i915_sched_engine *sched_engine =
> > +		container_of(kref, typeof(*sched_engine), ref);
> > +	struct intel_guc *guc = sched_engine->private_data;
> > +
> > +	guc->sched_engine = NULL;
> > +	tasklet_kill(&sched_engine->tasklet); /* flush the callback */
> > +	kfree(sched_engine);
> > +}
> > +
> >   int intel_guc_submission_setup(struct intel_engine_cs *engine)
> >   {
> >   	struct drm_i915_private *i915 = engine->i915;
> > @@ -1669,6 +2012,7 @@ int intel_guc_submission_setup(struct intel_engine_cs *engine)
> >   		guc->sched_engine->schedule = i915_schedule;
> >   		guc->sched_engine->private_data = guc;
> > +		guc->sched_engine->destroy = guc_sched_engine_destroy;
> >   		tasklet_setup(&guc->sched_engine->tasklet,
> >   			      guc_submission_tasklet);
> >   	}
> > @@ -1775,7 +2119,7 @@ int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
> >   		 * register this context.
> >   		 */
> >   		with_intel_runtime_pm(runtime_pm, wakeref)
> > -			register_context(ce);
> > +			register_context(ce, true);
> >   		guc_signal_context_fence(ce);
> >   		intel_context_put(ce);
> >   	} else if (context_destroyed(ce)) {
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> > index 6d8b9233214e..f0b02200aa01 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> > @@ -565,12 +565,49 @@ void intel_uc_reset_prepare(struct intel_uc *uc)
> >   {
> >   	struct intel_guc *guc = &uc->guc;
> > -	if (!intel_guc_is_ready(guc))
> > +
> > +	/* Nothing to do if GuC isn't supported */
> > +	if (!intel_uc_supports_guc(uc))
> >   		return;
> > +	/* Firmware expected to be running when this function is called */
> > +	if (!intel_guc_is_ready(guc))
> > +		goto sanitize;
> > +
> > +	if (intel_uc_uses_guc_submission(uc))
> > +		intel_guc_submission_reset_prepare(guc);
> > +
> > +sanitize:
> >   	__uc_sanitize(uc);
> >   }
> > +void intel_uc_reset(struct intel_uc *uc, bool stalled)
> > +{
> > +	struct intel_guc *guc = &uc->guc;
> > +
> > +	/* Firmware can not be running when this function is called  */
> > +	if (intel_uc_uses_guc_submission(uc))
> > +		intel_guc_submission_reset(guc, stalled);
> > +}
> > +
> > +void intel_uc_reset_finish(struct intel_uc *uc)
> > +{
> > +	struct intel_guc *guc = &uc->guc;
> > +
> > +	/* Firmware expected to be running when this function is called */
> > +	if (intel_guc_is_fw_running(guc) && intel_uc_uses_guc_submission(uc))
> > +		intel_guc_submission_reset_finish(guc);
> > +}
> > +
> > +void intel_uc_cancel_requests(struct intel_uc *uc)
> > +{
> > +	struct intel_guc *guc = &uc->guc;
> > +
> > +	/* Firmware can not be running when this function is called  */
> > +	if (intel_uc_uses_guc_submission(uc))
> > +		intel_guc_submission_cancel_requests(guc);
> > +}
> > +
> >   void intel_uc_runtime_suspend(struct intel_uc *uc)
> >   {
> >   	struct intel_guc *guc = &uc->guc;
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
> > index c4cef885e984..eaa3202192ac 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
> > @@ -37,6 +37,9 @@ void intel_uc_driver_late_release(struct intel_uc *uc);
> >   void intel_uc_driver_remove(struct intel_uc *uc);
> >   void intel_uc_init_mmio(struct intel_uc *uc);
> >   void intel_uc_reset_prepare(struct intel_uc *uc);
> > +void intel_uc_reset(struct intel_uc *uc, bool stalled);
> > +void intel_uc_reset_finish(struct intel_uc *uc);
> > +void intel_uc_cancel_requests(struct intel_uc *uc);
> >   void intel_uc_suspend(struct intel_uc *uc);
> >   void intel_uc_runtime_suspend(struct intel_uc *uc);
> >   int intel_uc_resume(struct intel_uc *uc);
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
