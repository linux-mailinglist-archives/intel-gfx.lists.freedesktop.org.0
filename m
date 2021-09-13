Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C60B1409A84
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 19:17:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49B756E204;
	Mon, 13 Sep 2021 17:17:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEEAC6E1F4;
 Mon, 13 Sep 2021 17:17:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="221784656"
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="221784656"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 10:17:15 -0700
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="609090723"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 10:17:13 -0700
Date: Mon, 13 Sep 2021 10:12:09 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 daniel.vetter@ffwll.ch, tony.ye@intel.com, zhengguo.xu@intel.com
Message-ID: <20210913171209.GA8883@jons-linux-dev-box>
References: <20210820224446.30620-1-matthew.brost@intel.com>
 <20210820224446.30620-5-matthew.brost@intel.com>
 <98a1afea-b57d-6a19-0367-ef1adc461843@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <98a1afea-b57d-6a19-0367-ef1adc461843@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 04/27] drm/i915/guc: Take GT PM ref when
 deregistering context
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 13, 2021 at 10:55:59AM +0100, Tvrtko Ursulin wrote:
> 
> On 20/08/2021 23:44, Matthew Brost wrote:
> > Taking a PM reference to prevent intel_gt_wait_for_idle from short
> > circuiting while a deregister context H2G is in flight.
> > 
> > FIXME: Move locking / structure changes into different patch
> > 
> > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_context.c       |   2 +
> >   drivers/gpu/drm/i915/gt/intel_context_types.h |  13 +-
> >   drivers/gpu/drm/i915/gt/intel_engine_pm.h     |   5 +
> >   drivers/gpu/drm/i915/gt/intel_gt_pm.h         |  13 ++
> >   .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |   1 +
> >   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  46 ++--
> >   .../gpu/drm/i915/gt/uc/intel_guc_debugfs.c    |  13 +-
> >   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 212 +++++++++++-------
> >   8 files changed, 199 insertions(+), 106 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> > index adfe49b53b1b..c8595da64ad8 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_context.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> > @@ -399,6 +399,8 @@ intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
> >   	ce->guc_id.id = GUC_INVALID_LRC_ID;
> >   	INIT_LIST_HEAD(&ce->guc_id.link);
> > +	INIT_LIST_HEAD(&ce->destroyed_link);
> > +
> >   	/*
> >   	 * Initialize fence to be complete as this is expected to be complete
> >   	 * unless there is a pending schedule disable outstanding.
> > diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> > index 80bbdc7810f6..fd338a30617e 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> > @@ -190,22 +190,29 @@ struct intel_context {
> >   		/**
> >   		 * @id: unique handle which is used to communicate information
> >   		 * with the GuC about this context, protected by
> > -		 * guc->contexts_lock
> > +		 * guc->submission_state.lock
> >   		 */
> >   		u16 id;
> >   		/**
> >   		 * @ref: the number of references to the guc_id, when
> >   		 * transitioning in and out of zero protected by
> > -		 * guc->contexts_lock
> > +		 * guc->submission_state.lock
> >   		 */
> >   		atomic_t ref;
> >   		/**
> >   		 * @link: in guc->guc_id_list when the guc_id has no refs but is
> > -		 * still valid, protected by guc->contexts_lock
> > +		 * still valid, protected by guc->submission_state.lock
> >   		 */
> >   		struct list_head link;
> >   	} guc_id;
> > +	/**
> > +	 * @destroyed_link: link in guc->submission_state.destroyed_contexts, in
> > +	 * list when context is pending to be destroyed (deregistered with the
> > +	 * GuC), protected by guc->submission_state.lock
> > +	 */
> > +	struct list_head destroyed_link;
> > +
> >   #ifdef CONFIG_DRM_I915_SELFTEST
> >   	/**
> >   	 * @drop_schedule_enable: Force drop of schedule enable G2H for selftest
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.h b/drivers/gpu/drm/i915/gt/intel_engine_pm.h
> > index 70ea46d6cfb0..17a5028ea177 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.h
> > @@ -16,6 +16,11 @@ intel_engine_pm_is_awake(const struct intel_engine_cs *engine)
> >   	return intel_wakeref_is_active(&engine->wakeref);
> >   }
> > +static inline void __intel_engine_pm_get(struct intel_engine_cs *engine)
> > +{
> > +	__intel_wakeref_get(&engine->wakeref);
> > +}
> > +
> >   static inline void intel_engine_pm_get(struct intel_engine_cs *engine)
> >   {
> >   	intel_wakeref_get(&engine->wakeref);
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.h b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> > index d0588d8aaa44..a17bf0d4592b 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> > @@ -41,6 +41,19 @@ static inline void intel_gt_pm_put_async(struct intel_gt *gt)
> >   	intel_wakeref_put_async(&gt->wakeref);
> >   }
> > +#define with_intel_gt_pm(gt, tmp) \
> > +	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
> > +	     intel_gt_pm_put(gt), tmp = 0)
> > +#define with_intel_gt_pm_async(gt, tmp) \
> > +	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
> > +	     intel_gt_pm_put_async(gt), tmp = 0)
> > +#define with_intel_gt_pm_if_awake(gt, tmp) \
> > +	for (tmp = intel_gt_pm_get_if_awake(gt); tmp; \
> > +	     intel_gt_pm_put(gt), tmp = 0)
> > +#define with_intel_gt_pm_if_awake_async(gt, tmp) \
> > +	for (tmp = intel_gt_pm_get_if_awake(gt); tmp; \
> > +	     intel_gt_pm_put_async(gt), tmp = 0)
> > +
> >   static inline int intel_gt_pm_wait_for_idle(struct intel_gt *gt)
> >   {
> >   	return intel_wakeref_wait_for_idle(&gt->wakeref);
> > diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> > index 8ff582222aff..ba10bd374cee 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> > +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> > @@ -142,6 +142,7 @@ enum intel_guc_action {
> >   	INTEL_GUC_ACTION_REGISTER_COMMAND_TRANSPORT_BUFFER = 0x4505,
> >   	INTEL_GUC_ACTION_DEREGISTER_COMMAND_TRANSPORT_BUFFER = 0x4506,
> >   	INTEL_GUC_ACTION_DEREGISTER_CONTEXT_DONE = 0x4600,
> > +	INTEL_GUC_ACTION_REGISTER_CONTEXT_MULTI_LRC = 0x4601,
> >   	INTEL_GUC_ACTION_RESET_CLIENT = 0x5507,
> >   	INTEL_GUC_ACTION_LIMIT
> >   };
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > index 6fd2719d1b75..7358883f1540 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > @@ -53,21 +53,37 @@ struct intel_guc {
> >   		void (*disable)(struct intel_guc *guc);
> >   	} interrupts;
> > -	/**
> > -	 * @contexts_lock: protects guc_ids, guc_id_list, ce->guc_id.id, and
> > -	 * ce->guc_id.ref when transitioning in and out of zero
> > -	 */
> > -	spinlock_t contexts_lock;
> > -	/** @guc_ids: used to allocate new guc_ids */
> > -	struct ida guc_ids;
> > -	/** @num_guc_ids: number of guc_ids that can be used */
> > -	u32 num_guc_ids;
> > -	/** @max_guc_ids: max number of guc_ids that can be used */
> > -	u32 max_guc_ids;
> > -	/**
> > -	 * @guc_id_list: list of intel_context with valid guc_ids but no refs
> > -	 */
> > -	struct list_head guc_id_list;
> > +	struct {
> > +		/**
> > +		 * @lock: protects everything in submission_state, ce->guc_id,
> > +		 * and ce->destroyed_link
> > +		 */
> > +		spinlock_t lock;
> > +		/**
> > +		 * @guc_ids: used to allocate new guc_ids
> > +		 */
> > +		struct ida guc_ids;
> > +		/** @num_guc_ids: number of guc_ids that can be used */
> > +		u32 num_guc_ids;
> > +		/** @max_guc_ids: max number of guc_ids that can be used */
> > +		u32 max_guc_ids;
> > +		/**
> > +		 * @guc_id_list: list of intel_context with valid guc_ids but no
> > +		 * refs
> > +		 */
> > +		struct list_head guc_id_list;
> > +		/**
> > +		 * @destroyed_contexts: list of contexts waiting to be destroyed
> > +		 * (deregistered with the GuC)
> > +		 */
> > +		struct list_head destroyed_contexts;
> > +		/**
> > +		 * @destroyed_worker: worker to deregister contexts, need as we
> > +		 * need to take a GT PM reference and can't from destroy
> > +		 * function as it might be in an atomic context (no sleeping)
> > +		 */
> > +		struct work_struct destroyed_worker;
> > +	} submission_state;
> >   	bool submission_supported;
> >   	bool submission_selected;
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
> > index b88d343ee432..27655460ee84 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
> > @@ -78,7 +78,7 @@ static int guc_num_id_get(void *data, u64 *val)
> >   	if (!intel_guc_submission_is_used(guc))
> >   		return -ENODEV;
> > -	*val = guc->num_guc_ids;
> > +	*val = guc->submission_state.num_guc_ids;
> >   	return 0;
> >   }
> > @@ -86,16 +86,21 @@ static int guc_num_id_get(void *data, u64 *val)
> >   static int guc_num_id_set(void *data, u64 val)
> >   {
> >   	struct intel_guc *guc = data;
> > +	unsigned long flags;
> >   	if (!intel_guc_submission_is_used(guc))
> >   		return -ENODEV;
> > -	if (val > guc->max_guc_ids)
> > -		val = guc->max_guc_ids;
> > +	spin_lock_irqsave(&guc->submission_state.lock, flags);
> > +
> > +	if (val > guc->submission_state.max_guc_ids)
> > +		val = guc->submission_state.max_guc_ids;
> >   	else if (val < 256)
> >   		val = 256;
> > -	guc->num_guc_ids = val;
> > +	guc->submission_state.num_guc_ids = val;
> > +
> > +	spin_unlock_irqrestore(&guc->submission_state.lock, flags);
> >   	return 0;
> >   }
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > index 68742b612692..f835e06e5f9f 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > @@ -86,9 +86,9 @@
> >    * submitting at a time. Currently only 1 sched_engine used for all of GuC
> >    * submission but that could change in the future.
> >    *
> > - * guc->contexts_lock
> > - * Protects guc_id allocation. Global lock i.e. Only 1 context that uses GuC
> > - * submission can hold this at a time.
> > + * guc->submission_state.lock
> > + * Global lock for GuC submission state. Protects guc_ids and destroyed contexts
> > + * list.
> >    *
> >    * ce->guc_state.lock
> >    * Protects everything under ce->guc_state. Ensures that a context is in the
> > @@ -100,7 +100,7 @@
> >    *
> >    * Lock ordering rules:
> >    * sched_engine->lock -> ce->guc_state.lock
> > - * guc->contexts_lock -> ce->guc_state.lock
> > + * guc->submission_state.lock -> ce->guc_state.lock
> >    *
> >    * Reset races:
> >    * When a GPU full reset is triggered it is assumed that some G2H responses to
> > @@ -344,7 +344,7 @@ static struct guc_lrc_desc *__get_lrc_desc(struct intel_guc *guc, u32 index)
> >   {
> >   	struct guc_lrc_desc *base = guc->lrc_desc_pool_vaddr;
> > -	GEM_BUG_ON(index >= guc->max_guc_ids);
> > +	GEM_BUG_ON(index >= guc->submission_state.max_guc_ids);
> >   	return &base[index];
> >   }
> > @@ -353,7 +353,7 @@ static struct intel_context *__get_context(struct intel_guc *guc, u32 id)
> >   {
> >   	struct intel_context *ce = xa_load(&guc->context_lookup, id);
> > -	GEM_BUG_ON(id >= guc->max_guc_ids);
> > +	GEM_BUG_ON(id >= guc->submission_state.max_guc_ids);
> >   	return ce;
> >   }
> > @@ -363,7 +363,8 @@ static int guc_lrc_desc_pool_create(struct intel_guc *guc)
> >   	u32 size;
> >   	int ret;
> > -	size = PAGE_ALIGN(sizeof(struct guc_lrc_desc) * guc->max_guc_ids);
> > +	size = PAGE_ALIGN(sizeof(struct guc_lrc_desc) *
> > +			  guc->submission_state.max_guc_ids);
> >   	ret = intel_guc_allocate_and_map_vma(guc, size, &guc->lrc_desc_pool,
> >   					     (void **)&guc->lrc_desc_pool_vaddr);
> >   	if (ret)
> > @@ -711,6 +712,7 @@ static void scrub_guc_desc_for_outstanding_g2h(struct intel_guc *guc)
> >   			if (deregister)
> >   				guc_signal_context_fence(ce);
> >   			if (destroyed) {
> > +				intel_gt_pm_put_async(guc_to_gt(guc));
> >   				release_guc_id(guc, ce);
> >   				__guc_context_destroy(ce);
> >   			}
> > @@ -789,6 +791,8 @@ static void guc_flush_submissions(struct intel_guc *guc)
> >   	spin_unlock_irqrestore(&sched_engine->lock, flags);
> >   }
> > +static void guc_flush_destroyed_contexts(struct intel_guc *guc);
> > +
> >   void intel_guc_submission_reset_prepare(struct intel_guc *guc)
> >   {
> >   	if (unlikely(!guc_submission_initialized(guc))) {
> > @@ -805,6 +809,7 @@ void intel_guc_submission_reset_prepare(struct intel_guc *guc)
> >   	spin_unlock_irq(&guc_to_gt(guc)->irq_lock);
> >   	flush_work(&guc->ct.requests.worker);
> > +	guc_flush_destroyed_contexts(guc);
> >   	scrub_guc_desc_for_outstanding_g2h(guc);
> >   }
> > @@ -1102,6 +1107,8 @@ void intel_guc_submission_reset_finish(struct intel_guc *guc)
> >   	intel_gt_unpark_heartbeats(guc_to_gt(guc));
> >   }
> > +static void destroyed_worker_func(struct work_struct *w);
> > +
> >   /*
> >    * Set up the memory resources to be shared with the GuC (via the GGTT)
> >    * at firmware loading time.
> > @@ -1124,9 +1131,11 @@ int intel_guc_submission_init(struct intel_guc *guc)
> >   	xa_init_flags(&guc->context_lookup, XA_FLAGS_LOCK_IRQ);
> > -	spin_lock_init(&guc->contexts_lock);
> > -	INIT_LIST_HEAD(&guc->guc_id_list);
> > -	ida_init(&guc->guc_ids);
> > +	spin_lock_init(&guc->submission_state.lock);
> > +	INIT_LIST_HEAD(&guc->submission_state.guc_id_list);
> > +	ida_init(&guc->submission_state.guc_ids);
> > +	INIT_LIST_HEAD(&guc->submission_state.destroyed_contexts);
> > +	INIT_WORK(&guc->submission_state.destroyed_worker, destroyed_worker_func);
> >   	return 0;
> >   }
> > @@ -1137,6 +1146,7 @@ void intel_guc_submission_fini(struct intel_guc *guc)
> >   		return;
> >   	guc_lrc_desc_pool_destroy(guc);
> > +	guc_flush_destroyed_contexts(guc);
> >   	i915_sched_engine_put(guc->sched_engine);
> >   }
> > @@ -1191,15 +1201,16 @@ static void guc_submit_request(struct i915_request *rq)
> >   static int new_guc_id(struct intel_guc *guc)
> >   {
> > -	return ida_simple_get(&guc->guc_ids, 0,
> > -			      guc->num_guc_ids, GFP_KERNEL |
> > +	return ida_simple_get(&guc->submission_state.guc_ids, 0,
> > +			      guc->submission_state.num_guc_ids, GFP_KERNEL |
> >   			      __GFP_RETRY_MAYFAIL | __GFP_NOWARN);
> >   }
> >   static void __release_guc_id(struct intel_guc *guc, struct intel_context *ce)
> >   {
> >   	if (!context_guc_id_invalid(ce)) {
> > -		ida_simple_remove(&guc->guc_ids, ce->guc_id.id);
> > +		ida_simple_remove(&guc->submission_state.guc_ids,
> > +				  ce->guc_id.id);
> >   		reset_lrc_desc(guc, ce->guc_id.id);
> >   		set_context_guc_id_invalid(ce);
> >   	}
> > @@ -1211,9 +1222,9 @@ static void release_guc_id(struct intel_guc *guc, struct intel_context *ce)
> >   {
> >   	unsigned long flags;
> > -	spin_lock_irqsave(&guc->contexts_lock, flags);
> > +	spin_lock_irqsave(&guc->submission_state.lock, flags);
> >   	__release_guc_id(guc, ce);
> > -	spin_unlock_irqrestore(&guc->contexts_lock, flags);
> > +	spin_unlock_irqrestore(&guc->submission_state.lock, flags);
> >   }
> >   static int steal_guc_id(struct intel_guc *guc)
> > @@ -1221,10 +1232,10 @@ static int steal_guc_id(struct intel_guc *guc)
> >   	struct intel_context *ce;
> >   	int guc_id;
> > -	lockdep_assert_held(&guc->contexts_lock);
> > +	lockdep_assert_held(&guc->submission_state.lock);
> > -	if (!list_empty(&guc->guc_id_list)) {
> > -		ce = list_first_entry(&guc->guc_id_list,
> > +	if (!list_empty(&guc->submission_state.guc_id_list)) {
> > +		ce = list_first_entry(&guc->submission_state.guc_id_list,
> >   				      struct intel_context,
> >   				      guc_id.link);
> > @@ -1249,7 +1260,7 @@ static int assign_guc_id(struct intel_guc *guc, u16 *out)
> >   {
> >   	int ret;
> > -	lockdep_assert_held(&guc->contexts_lock);
> > +	lockdep_assert_held(&guc->submission_state.lock);
> >   	ret = new_guc_id(guc);
> >   	if (unlikely(ret < 0)) {
> > @@ -1271,7 +1282,7 @@ static int pin_guc_id(struct intel_guc *guc, struct intel_context *ce)
> >   	GEM_BUG_ON(atomic_read(&ce->guc_id.ref));
> >   try_again:
> > -	spin_lock_irqsave(&guc->contexts_lock, flags);
> > +	spin_lock_irqsave(&guc->submission_state.lock, flags);
> >   	might_lock(&ce->guc_state.lock);
> > @@ -1286,7 +1297,7 @@ static int pin_guc_id(struct intel_guc *guc, struct intel_context *ce)
> >   	atomic_inc(&ce->guc_id.ref);
> >   out_unlock:
> > -	spin_unlock_irqrestore(&guc->contexts_lock, flags);
> > +	spin_unlock_irqrestore(&guc->submission_state.lock, flags);
> >   	/*
> >   	 * -EAGAIN indicates no guc_id are available, let's retire any
> > @@ -1322,11 +1333,12 @@ static void unpin_guc_id(struct intel_guc *guc, struct intel_context *ce)
> >   	if (unlikely(context_guc_id_invalid(ce)))
> >   		return;
> > -	spin_lock_irqsave(&guc->contexts_lock, flags);
> > +	spin_lock_irqsave(&guc->submission_state.lock, flags);
> >   	if (!context_guc_id_invalid(ce) && list_empty(&ce->guc_id.link) &&
> >   	    !atomic_read(&ce->guc_id.ref))
> > -		list_add_tail(&ce->guc_id.link, &guc->guc_id_list);
> > -	spin_unlock_irqrestore(&guc->contexts_lock, flags);
> > +		list_add_tail(&ce->guc_id.link,
> > +			      &guc->submission_state.guc_id_list);
> > +	spin_unlock_irqrestore(&guc->submission_state.lock, flags);
> >   }
> >   static int __guc_action_register_context(struct intel_guc *guc,
> > @@ -1841,11 +1853,30 @@ static void guc_context_sched_disable(struct intel_context *ce)
> >   static void guc_lrc_desc_unpin(struct intel_context *ce)
> >   {
> >   	struct intel_guc *guc = ce_to_guc(ce);
> > +	struct intel_gt *gt = guc_to_gt(guc);
> > +	unsigned long flags;
> > +	bool disabled;
> > +	GEM_BUG_ON(!intel_gt_pm_is_awake(gt));
> >   	GEM_BUG_ON(!lrc_desc_registered(guc, ce->guc_id.id));
> >   	GEM_BUG_ON(ce != __get_context(guc, ce->guc_id.id));
> >   	GEM_BUG_ON(context_enabled(ce));
> > +	/* Seal race with Reset */
> > +	spin_lock_irqsave(&ce->guc_state.lock, flags);
> > +	disabled = submission_disabled(guc);
> > +	if (likely(!disabled)) {
> > +		__intel_gt_pm_get(gt);
> > +		set_context_destroyed(ce);
> > +		clr_context_registered(ce);
> > +	}
> > +	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> > +	if (unlikely(disabled)) {
> > +		release_guc_id(guc, ce);
> > +		__guc_context_destroy(ce);
> > +		return;
> > +	}
> > +
> >   	deregister_context(ce, ce->guc_id.id, true);
> >   }
> > @@ -1873,78 +1904,88 @@ static void __guc_context_destroy(struct intel_context *ce)
> >   	}
> >   }
> > +static void guc_flush_destroyed_contexts(struct intel_guc *guc)
> > +{
> > +	struct intel_context *ce, *cn;
> > +	unsigned long flags;
> > +
> > +	GEM_BUG_ON(!submission_disabled(guc) &&
> > +		   guc_submission_initialized(guc));
> > +
> > +	spin_lock_irqsave(&guc->submission_state.lock, flags);
> > +	list_for_each_entry_safe(ce, cn,
> > +				 &guc->submission_state.destroyed_contexts,
> > +				 destroyed_link) {
> > +		list_del_init(&ce->destroyed_link);
> > +		__release_guc_id(guc, ce);
> > +		__guc_context_destroy(ce);
> > +	}
> > +	spin_unlock_irqrestore(&guc->submission_state.lock, flags);
> > +}
> > +
> > +static void deregister_destroyed_contexts(struct intel_guc *guc)
> > +{
> > +	struct intel_context *ce, *cn;
> > +	unsigned long flags;
> > +
> > +	spin_lock_irqsave(&guc->submission_state.lock, flags);
> > +	list_for_each_entry_safe(ce, cn,
> > +				 &guc->submission_state.destroyed_contexts,
> > +				 destroyed_link) {
> > +		list_del_init(&ce->destroyed_link);
> > +		spin_unlock_irqrestore(&guc->submission_state.lock, flags);
> 
> Lock drop and re-acquire is not safe - list_for_each_entry_safe only deal
> with the list_del_init above. It does not help if someone else modifies the
> list in the window while the lock is not held, in which case things will go
> BOOM!
> 

Good catch, but is this true? We always add via list_add_tail which if
I'm reading the list_for_each_entry_safe macro correctly I think is safe
to do as 'n = list_next_entry(n, member)' will just evaluate to the new
tail on each iteration, right?

Reference to macro below:
#define list_for_each_entry_safe(pos, n, head, member)			\
	for (pos = list_first_entry(head, typeof(*pos), member),	\
		n = list_next_entry(pos, member);			\
	     &pos->member != (head); 					\
	     pos = n, n = list_next_entry(n, member))

Regardless probably safer to just not drop the lock.

> Not sure in what differnt ways you use this list, but perhaps you could
> employ a lockless single linked list for this. In which case you could
> atomically unlink all elements. Or just change this to not do lock dropping,
> if you can safely use the same list_head to put on a local list or
> something.
> 

I think both options work - not sure why I drop the lock here. I'll play
around with this and fix in the next rev.

Matt

> Regards,
> 
> Tvrtko
> 
> > +		guc_lrc_desc_unpin(ce);
> > +		spin_lock_irqsave(&guc->submission_state.lock, flags);
> > +	}
> > +	spin_unlock_irqrestore(&guc->submission_state.lock, flags);
> > +}
> > +
> > +static void destroyed_worker_func(struct work_struct *w)
> > +{
> > +	struct intel_guc *guc = container_of(w, struct intel_guc,
> > +					     submission_state.destroyed_worker);
> > +	struct intel_gt *gt = guc_to_gt(guc);
> > +	int tmp;
> > +
> > +	with_intel_gt_pm(gt, tmp)
> > +		deregister_destroyed_contexts(guc);
> > +}
> > +
> >   static void guc_context_destroy(struct kref *kref)
> >   {
> >   	struct intel_context *ce = container_of(kref, typeof(*ce), ref);
> > -	struct intel_runtime_pm *runtime_pm = ce->engine->uncore->rpm;
> >   	struct intel_guc *guc = ce_to_guc(ce);
> > -	intel_wakeref_t wakeref;
> >   	unsigned long flags;
> > -	bool disabled;
> > +	bool destroy;
> >   	/*
> >   	 * If the guc_id is invalid this context has been stolen and we can free
> >   	 * it immediately. Also can be freed immediately if the context is not
> >   	 * registered with the GuC or the GuC is in the middle of a reset.
> >   	 */
> > -	if (context_guc_id_invalid(ce)) {
> > -		__guc_context_destroy(ce);
> > -		return;
> > -	} else if (submission_disabled(guc) ||
> > -		   !lrc_desc_registered(guc, ce->guc_id.id)) {
> > -		release_guc_id(guc, ce);
> > -		__guc_context_destroy(ce);
> > -		return;
> > -	}
> > -
> > -	/*
> > -	 * We have to acquire the context spinlock and check guc_id again, if it
> > -	 * is valid it hasn't been stolen and needs to be deregistered. We
> > -	 * delete this context from the list of unpinned guc_id available to
> > -	 * steal to seal a race with guc_lrc_desc_pin(). When the G2H CTB
> > -	 * returns indicating this context has been deregistered the guc_id is
> > -	 * returned to the pool of available guc_id.
> > -	 */
> > -	spin_lock_irqsave(&guc->contexts_lock, flags);
> > -	if (context_guc_id_invalid(ce)) {
> > -		spin_unlock_irqrestore(&guc->contexts_lock, flags);
> > -		__guc_context_destroy(ce);
> > -		return;
> > -	}
> > -
> > -	if (!list_empty(&ce->guc_id.link))
> > -		list_del_init(&ce->guc_id.link);
> > -	spin_unlock_irqrestore(&guc->contexts_lock, flags);
> > -
> > -	/* Seal race with Reset */
> > -	spin_lock_irqsave(&ce->guc_state.lock, flags);
> > -	disabled = submission_disabled(guc);
> > -	if (likely(!disabled)) {
> > -		set_context_destroyed(ce);
> > -		clr_context_registered(ce);
> > +	spin_lock_irqsave(&guc->submission_state.lock, flags);
> > +	destroy = submission_disabled(guc) || context_guc_id_invalid(ce) ||
> > +		!lrc_desc_registered(guc, ce->guc_id.id);
> > +	if (likely(!destroy)) {
> > +		if (!list_empty(&ce->guc_id.link))
> > +			list_del_init(&ce->guc_id.link);
> > +		list_add_tail(&ce->destroyed_link,
> > +			      &guc->submission_state.destroyed_contexts);
> > +	} else {
> > +		__release_guc_id(guc, ce);
> >   	}
> > -	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> > -	if (unlikely(disabled)) {
> > -		release_guc_id(guc, ce);
> > +	spin_unlock_irqrestore(&guc->submission_state.lock, flags);
> > +	if (unlikely(destroy)) {
> >   		__guc_context_destroy(ce);
> >   		return;
> >   	}
> >   	/*
> > -	 * We defer GuC context deregistration until the context is destroyed
> > -	 * in order to save on CTBs. With this optimization ideally we only need
> > -	 * 1 CTB to register the context during the first pin and 1 CTB to
> > -	 * deregister the context when the context is destroyed. Without this
> > -	 * optimization, a CTB would be needed every pin & unpin.
> > -	 *
> > -	 * XXX: Need to acqiure the runtime wakeref as this can be triggered
> > -	 * from context_free_worker when runtime wakeref is not held.
> > -	 * guc_lrc_desc_unpin requires the runtime as a GuC register is written
> > -	 * in H2G CTB to deregister the context. A future patch may defer this
> > -	 * H2G CTB if the runtime wakeref is zero.
> > +	 * We use a worker to issue the H2G to deregister the context as we can
> > +	 * take the GT PM for the first time which isn't allowed from an atomic
> > +	 * context.
> >   	 */
> > -	with_intel_runtime_pm(runtime_pm, wakeref)
> > -		guc_lrc_desc_unpin(ce);
> > +	queue_work(system_unbound_wq, &guc->submission_state.destroyed_worker);
> >   }
> >   static int guc_context_alloc(struct intel_context *ce)
> > @@ -2703,8 +2744,8 @@ static bool __guc_submission_selected(struct intel_guc *guc)
> >   void intel_guc_submission_init_early(struct intel_guc *guc)
> >   {
> > -	guc->max_guc_ids = GUC_MAX_LRC_DESCRIPTORS;
> > -	guc->num_guc_ids = GUC_MAX_LRC_DESCRIPTORS;
> > +	guc->submission_state.max_guc_ids = GUC_MAX_LRC_DESCRIPTORS;
> > +	guc->submission_state.num_guc_ids = GUC_MAX_LRC_DESCRIPTORS;
> >   	guc->submission_supported = __guc_submission_supported(guc);
> >   	guc->submission_selected = __guc_submission_selected(guc);
> >   }
> > @@ -2714,10 +2755,10 @@ g2h_context_lookup(struct intel_guc *guc, u32 desc_idx)
> >   {
> >   	struct intel_context *ce;
> > -	if (unlikely(desc_idx >= guc->max_guc_ids)) {
> > +	if (unlikely(desc_idx >= guc->submission_state.max_guc_ids)) {
> >   		drm_err(&guc_to_gt(guc)->i915->drm,
> >   			"Invalid desc_idx %u, max %u",
> > -			desc_idx, guc->max_guc_ids);
> > +			desc_idx, guc->submission_state.max_guc_ids);
> >   		return NULL;
> >   	}
> > @@ -2771,6 +2812,7 @@ int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
> >   		intel_context_put(ce);
> >   	} else if (context_destroyed(ce)) {
> >   		/* Context has been destroyed */
> > +		intel_gt_pm_put_async(guc_to_gt(guc));
> >   		release_guc_id(guc, ce);
> >   		__guc_context_destroy(ce);
> >   	}
> > @@ -3065,8 +3107,10 @@ void intel_guc_submission_print_info(struct intel_guc *guc,
> >   	drm_printf(p, "GuC Number Outstanding Submission G2H: %u\n",
> >   		   atomic_read(&guc->outstanding_submission_g2h));
> > -	drm_printf(p, "GuC Number GuC IDs: %u\n", guc->num_guc_ids);
> > -	drm_printf(p, "GuC Max GuC IDs: %u\n", guc->max_guc_ids);
> > +	drm_printf(p, "GuC Number GuC IDs: %u\n",
> > +		   guc->submission_state.num_guc_ids);
> > +	drm_printf(p, "GuC Max GuC IDs: %u\n",
> > +		   guc->submission_state.max_guc_ids);
> >   	drm_printf(p, "GuC tasklet count: %u\n\n",
> >   		   atomic_read(&sched_engine->tasklet.count));
> > 
