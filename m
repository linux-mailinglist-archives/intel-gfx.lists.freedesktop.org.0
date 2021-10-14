Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B74DF42D1AB
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 06:30:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABA3D6E0EC;
	Thu, 14 Oct 2021 04:30:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D665C6E0D9;
 Thu, 14 Oct 2021 04:30:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="313794998"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="313794998"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 21:30:43 -0700
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="571106069"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 21:30:43 -0700
Date: Wed, 13 Oct 2021 21:26:00 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: John Harrison <john.c.harrison@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Message-ID: <20211014042600.GA7886@jons-linux-dev-box>
References: <20211013204231.19287-1-matthew.brost@intel.com>
 <20211013204231.19287-9-matthew.brost@intel.com>
 <1804a9c1-fe2e-fc29-a28e-144a806fb190@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1804a9c1-fe2e-fc29-a28e-144a806fb190@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 08/25] drm/i915/guc: Add multi-lrc context
 registration
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

On Wed, Oct 13, 2021 at 05:10:39PM -0700, John Harrison wrote:
> On 10/13/2021 13:42, Matthew Brost wrote:
> > Add multi-lrc context registration H2G. In addition a workqueue and
> > process descriptor are setup during multi-lrc context registration as
> > these data structures are needed for multi-lrc submission.
> > 
> > v2:
> >   (John Harrison)
> >    - Move GuC specific fields into sub-struct
> >    - Clean up WQ defines
> >    - Add comment explaining math to derive WQ / PD address
> > v3:
> >   (John Harrison)
> >    - Add PARENT_SCRATCH_SIZE define
> >    - Update comment explaining multi-lrc register
> > 
> > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_context_types.h |  12 ++
> >   drivers/gpu/drm/i915/gt/intel_lrc.c           |   5 +
> >   .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |   1 +
> >   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   2 -
> >   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 116 +++++++++++++++++-
> >   5 files changed, 133 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> > index 76dfca57cb45..48decb5ee954 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> > @@ -239,6 +239,18 @@ struct intel_context {
> >   		struct intel_context *parent;
> >   		/** @number_children: number of children if parent */
> >   		u8 number_children;
> > +		/** @guc: GuC specific members for parallel submission */
> > +		struct {
> > +			/** @wqi_head: head pointer in work queue */
> > +			u16 wqi_head;
> > +			/** @wqi_tail: tail pointer in work queue */
> > +			u16 wqi_tail;
> > +			/**
> > +			 * @parent_page: page in context state (ce->state) used
> > +			 * by parent for work queue, process descriptor
> > +			 */
> > +			u8 parent_page;
> > +		} guc;
> >   	} parallel;
> >   #ifdef CONFIG_DRM_I915_SELFTEST
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index 3ef9eaf8c50e..57339d5c1fc8 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -942,6 +942,11 @@ __lrc_alloc_state(struct intel_context *ce, struct intel_engine_cs *engine)
> >   		context_size += PAGE_SIZE;
> >   	}
> > +	if (intel_context_is_parent(ce) && intel_engine_uses_guc(engine)) {
> > +		ce->parallel.guc.parent_page = context_size / PAGE_SIZE;
> > +		context_size += PAGE_SIZE;
> This needs to be += PARENT_SCRATCH_SIZE.
> 

Which is PAGE_SIZE. I guess we should move PARENT_SCRATCH_SIZE to
intel_context.h (or *types.h) then. Will do.

Matt

> John.
> 
> > +	}
> > +
> >   	obj = i915_gem_object_create_lmem(engine->i915, context_size,
> >   					  I915_BO_ALLOC_PM_VOLATILE);
> >   	if (IS_ERR(obj))
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
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> > index fa4be13c8854..0eeb2a9feeed 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> > @@ -52,8 +52,6 @@
> >   #define GUC_DOORBELL_INVALID		256
> > -#define GUC_WQ_SIZE			(PAGE_SIZE * 2)
> > -
> >   /* Work queue item header definitions */
> >   #define WQ_STATUS_ACTIVE		1
> >   #define WQ_STATUS_SUSPENDED		2
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > index 84b8e64b148f..58a6f494be8f 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > @@ -344,6 +344,47 @@ static inline struct i915_priolist *to_priolist(struct rb_node *rb)
> >   	return rb_entry(rb, struct i915_priolist, node);
> >   }
> > +/*
> > + * When using multi-lrc submission a scratch memory area is reserved in the
> > + * parent's context state for the process descriptor and work queue. Currently
> > + * the scratch area is sized to a page.
> > + *
> > + * The layout of this scratch area is below:
> > + * 0						guc_process_desc
> > + * ...						unused
> > + * PARENT_SCRATCH_SIZE / 2			work queue start
> > + * ...						work queue
> > + * PARENT_SCRATCH_SIZE - 1			work queue end
> > + */
> > +#define PARENT_SCRATCH_SIZE	PAGE_SIZE
> > +#define WQ_SIZE			(PARENT_SCRATCH_SIZE / 2)
> > +#define WQ_OFFSET		(PARENT_SCRATCH_SIZE - WQ_SIZE)
> > +static u32 __get_process_desc_offset(struct intel_context *ce)
> > +{
> > +	GEM_BUG_ON(!ce->parallel.guc.parent_page);
> > +
> > +	return ce->parallel.guc.parent_page * PAGE_SIZE;
> > +}
> > +
> > +static u32 __get_wq_offset(struct intel_context *ce)
> > +{
> > +	return __get_process_desc_offset(ce) + WQ_OFFSET;
> > +}
> > +
> > +static struct guc_process_desc *
> > +__get_process_desc(struct intel_context *ce)
> > +{
> > +	/*
> > +	 * Need to subtract LRC_STATE_OFFSET here as the
> > +	 * parallel.guc.parent_page is the offset into ce->state while
> > +	 * ce->lrc_reg_reg is ce->state + LRC_STATE_OFFSET.
> > +	 */
> > +	return (struct guc_process_desc *)
> > +		(ce->lrc_reg_state +
> > +		 ((__get_process_desc_offset(ce) -
> > +		   LRC_STATE_OFFSET) / sizeof(u32)));
> > +}
> > +
> >   static struct guc_lrc_desc *__get_lrc_desc(struct intel_guc *guc, u32 index)
> >   {
> >   	struct guc_lrc_desc *base = guc->lrc_desc_pool_vaddr;
> > @@ -1365,6 +1406,30 @@ static void unpin_guc_id(struct intel_guc *guc, struct intel_context *ce)
> >   	spin_unlock_irqrestore(&guc->submission_state.lock, flags);
> >   }
> > +static int __guc_action_register_multi_lrc(struct intel_guc *guc,
> > +					   struct intel_context *ce,
> > +					   u32 guc_id,
> > +					   u32 offset,
> > +					   bool loop)
> > +{
> > +	struct intel_context *child;
> > +	u32 action[4 + MAX_ENGINE_INSTANCE];
> > +	int len = 0;
> > +
> > +	GEM_BUG_ON(ce->parallel.number_children > MAX_ENGINE_INSTANCE);
> > +
> > +	action[len++] = INTEL_GUC_ACTION_REGISTER_CONTEXT_MULTI_LRC;
> > +	action[len++] = guc_id;
> > +	action[len++] = ce->parallel.number_children + 1;
> > +	action[len++] = offset;
> > +	for_each_child(ce, child) {
> > +		offset += sizeof(struct guc_lrc_desc);
> > +		action[len++] = offset;
> > +	}
> > +
> > +	return guc_submission_send_busy_loop(guc, action, len, 0, loop);
> > +}
> > +
> >   static int __guc_action_register_context(struct intel_guc *guc,
> >   					 u32 guc_id,
> >   					 u32 offset,
> > @@ -1387,9 +1452,15 @@ static int register_context(struct intel_context *ce, bool loop)
> >   		ce->guc_id.id * sizeof(struct guc_lrc_desc);
> >   	int ret;
> > +	GEM_BUG_ON(intel_context_is_child(ce));
> >   	trace_intel_context_register(ce);
> > -	ret = __guc_action_register_context(guc, ce->guc_id.id, offset, loop);
> > +	if (intel_context_is_parent(ce))
> > +		ret = __guc_action_register_multi_lrc(guc, ce, ce->guc_id.id,
> > +						      offset, loop);
> > +	else
> > +		ret = __guc_action_register_context(guc, ce->guc_id.id, offset,
> > +						    loop);
> >   	if (likely(!ret)) {
> >   		unsigned long flags;
> > @@ -1418,6 +1489,7 @@ static int deregister_context(struct intel_context *ce, u32 guc_id)
> >   {
> >   	struct intel_guc *guc = ce_to_guc(ce);
> > +	GEM_BUG_ON(intel_context_is_child(ce));
> >   	trace_intel_context_deregister(ce);
> >   	return __guc_action_deregister_context(guc, guc_id);
> > @@ -1445,6 +1517,7 @@ static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
> >   	struct guc_lrc_desc *desc;
> >   	bool context_registered;
> >   	intel_wakeref_t wakeref;
> > +	struct intel_context *child;
> >   	int ret = 0;
> >   	GEM_BUG_ON(!engine->mask);
> > @@ -1470,6 +1543,41 @@ static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
> >   	desc->context_flags = CONTEXT_REGISTRATION_FLAG_KMD;
> >   	guc_context_policy_init(engine, desc);
> > +	/*
> > +	 * If context is a parent, we need to register a process descriptor
> > +	 * describing a work queue and register all child contexts.
> > +	 */
> > +	if (intel_context_is_parent(ce)) {
> > +		struct guc_process_desc *pdesc;
> > +
> > +		ce->parallel.guc.wqi_tail = 0;
> > +		ce->parallel.guc.wqi_head = 0;
> > +
> > +		desc->process_desc = i915_ggtt_offset(ce->state) +
> > +			__get_process_desc_offset(ce);
> > +		desc->wq_addr = i915_ggtt_offset(ce->state) +
> > +			__get_wq_offset(ce);
> > +		desc->wq_size = WQ_SIZE;
> > +
> > +		pdesc = __get_process_desc(ce);
> > +		memset(pdesc, 0, sizeof(*(pdesc)));
> > +		pdesc->stage_id = ce->guc_id.id;
> > +		pdesc->wq_base_addr = desc->wq_addr;
> > +		pdesc->wq_size_bytes = desc->wq_size;
> > +		pdesc->wq_status = WQ_STATUS_ACTIVE;
> > +
> > +		for_each_child(ce, child) {
> > +			desc = __get_lrc_desc(guc, child->guc_id.id);
> > +
> > +			desc->engine_class =
> > +				engine_class_to_guc_class(engine->class);
> > +			desc->hw_context_desc = child->lrc.lrca;
> > +			desc->priority = ce->guc_state.prio;
> > +			desc->context_flags = CONTEXT_REGISTRATION_FLAG_KMD;
> > +			guc_context_policy_init(engine, desc);
> > +		}
> > +	}
> > +
> >   	/*
> >   	 * The context_lookup xarray is used to determine if the hardware
> >   	 * context is currently registered. There are two cases in which it
> > @@ -2804,6 +2912,12 @@ g2h_context_lookup(struct intel_guc *guc, u32 desc_idx)
> >   		return NULL;
> >   	}
> > +	if (unlikely(intel_context_is_child(ce))) {
> > +		drm_err(&guc_to_gt(guc)->i915->drm,
> > +			"Context is child, desc_idx %u", desc_idx);
> > +		return NULL;
> > +	}
> > +
> >   	return ce;
> >   }
> 
