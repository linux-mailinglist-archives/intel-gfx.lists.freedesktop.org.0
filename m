Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD81A7BF664
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 10:49:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63EE510E32D;
	Tue, 10 Oct 2023 08:49:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 234C510E32C
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 08:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696927759; x=1728463759;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=9v3PaozyA0inxsgLtzEubYcWFV3Md4p1sLV71Wmcg4M=;
 b=Bmuui0kl9Ga3mibWyoEQWDzpPjyqVOvQxwPVkZp9SbZt6ELY+pvUGcH6
 zD2aAd2OVqHJGG+PCS6xN4TOS5iUkct+Z3MF/AM32fuQQjq65RENFrlMp
 7Bzyaaw7gim2EGMXmGnwZHHouRcXWtTP6YaXxqpY50Cy7Vj5w0nu4suAq
 OcG6iscSORTz+xlawxoT+JdHXSFGXA4Q9YFl0RXOR5WON7vxltJ83OZgI
 /GLjOOKCYxpD6Dsy3PCAL3bP6rXxGpVqyvj/+FpB6njOREVpV0ktb9w2b
 4JHK5fZD+ihgF++YhfANCgJmfEClz0RjzHwYmn+KoyUSDn9lBaA7wI9CJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="388212383"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="388212383"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 01:49:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="823700131"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="823700131"
Received: from emikisch-mobl.amr.corp.intel.com (HELO [10.213.174.67])
 ([10.213.174.67])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 01:49:09 -0700
Message-ID: <80867f5c-4f8f-1971-9deb-cea5e090aa83@linux.intel.com>
Date: Tue, 10 Oct 2023 09:49:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231009172919.1769055-1-jonathan.cavitt@intel.com>
 <20231009172919.1769055-4-jonathan.cavitt@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20231009172919.1769055-4-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v9 3/7] drm/i915: Define and use GuC and CTB
 TLB invalidation routines
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 09/10/2023 18:29, Jonathan Cavitt wrote:
> From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> 
> The GuC firmware had defined the interface for Translation Look-Aside
> Buffer (TLB) invalidation.  We should use this interface when
> invalidating the engine and GuC TLBs.
> Add additional functionality to intel_gt_invalidate_tlb, invalidating
> the GuC TLBs and falling back to GT invalidation when the GuC is
> disabled.
> The invalidation is done by sending a request directly to the GuC
> tlb_lookup that invalidates the table.  The invalidation is submitted as
> a wait request and is performed in the CT event handler.  This means we
> cannot perform this TLB invalidation path if the CT is not enabled.
> If the request isn't fulfilled in two seconds, this would constitute
> an error in the invalidation as that would constitute either a lost
> request or a severe GuC overload.
> 
> With this new invalidation routine, we can perform GuC-based GGTT
> invalidations.  GuC-based GGTT invalidation is incompatible with
> MMIO invalidation so we should not perform MMIO invalidation when
> GuC-based GGTT invalidation is expected.
> 
> The additional complexity incurred in this patch will be necessary for
> range-based tlb invalidations, which will be platformed in the future.
> 
> Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> Signed-off-by: Bruce Chang <yu.bruce.chang@intel.com>
> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> Signed-off-by: Fei Yang <fei.yang@intel.com>
> CC: Andi Shyti <andi.shyti@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_ggtt.c          |  34 +++-
>   drivers/gpu/drm/i915/gt/intel_tlb.c           |  16 +-
>   .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  33 +++
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  22 ++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   4 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 +
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 188 +++++++++++++++++-
>   7 files changed, 286 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 4d7d88b92632b..a1f7bdc602996 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -206,22 +206,38 @@ static void gen8_ggtt_invalidate(struct i915_ggtt *ggtt)
>   	intel_uncore_write_fw(uncore, GFX_FLSH_CNTL_GEN6, GFX_FLSH_CNTL_EN);
>   }
>   
> +static void guc_ggtt_ct_invalidate(struct intel_gt *gt)
> +{
> +	struct intel_uncore *uncore = gt->uncore;
> +	intel_wakeref_t wakeref;
> +
> +	with_intel_runtime_pm_if_active(uncore->rpm, wakeref) {
> +		struct intel_guc *guc = &gt->uc.guc;
> +
> +		intel_guc_invalidate_tlb_guc(guc);
> +	}
> +}
> +
>   static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
>   {
>   	struct drm_i915_private *i915 = ggtt->vm.i915;
> +	struct intel_gt *gt;
>   
> -	gen8_ggtt_invalidate(ggtt);
> -
> -	if (GRAPHICS_VER(i915) >= 12) {
> -		struct intel_gt *gt;
> +	if (!HAS_GUC_TLB_INVALIDATION(i915))
> +		gen8_ggtt_invalidate(ggtt);
>   
> -		list_for_each_entry(gt, &ggtt->gt_list, ggtt_link)
> +	list_for_each_entry(gt, &ggtt->gt_list, ggtt_link) {
> +		if (HAS_GUC_TLB_INVALIDATION(i915) &&
> +		    intel_guc_is_ready(&gt->uc.guc)) {
> +			guc_ggtt_ct_invalidate(gt);
> +		} else if (GRAPHICS_VER(i915) >= 12) {
>   			intel_uncore_write_fw(gt->uncore,
>   					      GEN12_GUC_TLB_INV_CR,
>   					      GEN12_GUC_TLB_INV_CR_INVALIDATE);
> -	} else {
> -		intel_uncore_write_fw(ggtt->vm.gt->uncore,
> -				      GEN8_GTCR, GEN8_GTCR_INVALIDATE);
> +		} else {
> +			intel_uncore_write_fw(gt->uncore,
> +					      GEN8_GTCR, GEN8_GTCR_INVALIDATE);
> +		}
>   	}
>   }
>   
> @@ -1243,7 +1259,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>   		ggtt->vm.raw_insert_page = gen8_ggtt_insert_page;
>   	}
>   
> -	if (intel_uc_wants_guc(&ggtt->vm.gt->uc))
> +	if (intel_uc_wants_guc_submission(&ggtt->vm.gt->uc))
>   		ggtt->invalidate = guc_ggtt_invalidate;
>   	else
>   		ggtt->invalidate = gen8_ggtt_invalidate;
> diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.c b/drivers/gpu/drm/i915/gt/intel_tlb.c
> index 139608c30d978..4bb13d1890e37 100644
> --- a/drivers/gpu/drm/i915/gt/intel_tlb.c
> +++ b/drivers/gpu/drm/i915/gt/intel_tlb.c
> @@ -12,6 +12,7 @@
>   #include "intel_gt_print.h"
>   #include "intel_gt_regs.h"
>   #include "intel_tlb.h"
> +#include "uc/intel_guc.h"
>   
>   /*
>    * HW architecture suggest typical invalidation time at 40us,
> @@ -131,11 +132,24 @@ void intel_gt_invalidate_tlb_full(struct intel_gt *gt, u32 seqno)
>   		return;
>   
>   	with_intel_gt_pm_if_awake(gt, wakeref) {
> +		struct intel_guc *guc = &gt->uc.guc;
> +
>   		mutex_lock(&gt->tlb.invalidate_lock);
>   		if (tlb_seqno_passed(gt, seqno))
>   			goto unlock;
>   
> -		mmio_invalidate_full(gt);
> +		if (HAS_GUC_TLB_INVALIDATION(gt->i915)) {
> +			/*
> +			 * Only perform GuC TLB invalidation if GuC is ready.
> +			 * The only time GuC could not be ready is on GT reset,
> +			 * which would clobber all the TLBs anyways, making
> +			 * any TLB invalidation path here unnecessary.
> +			 */
> +			if (intel_guc_is_ready(guc))
> +				intel_guc_invalidate_tlb_engines(guc);
> +		} else {
> +			mmio_invalidate_full(gt);
> +		}
>   
>   		write_seqcount_invalidate(&gt->tlb.seqno);
>   unlock:
> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> index f359bef046e0b..33f253410d0c8 100644
> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> @@ -138,6 +138,8 @@ enum intel_guc_action {
>   	INTEL_GUC_ACTION_REGISTER_CONTEXT_MULTI_LRC = 0x4601,
>   	INTEL_GUC_ACTION_CLIENT_SOFT_RESET = 0x5507,
>   	INTEL_GUC_ACTION_SET_ENG_UTIL_BUFF = 0x550A,
> +	INTEL_GUC_ACTION_TLB_INVALIDATION = 0x7000,
> +	INTEL_GUC_ACTION_TLB_INVALIDATION_DONE = 0x7001,
>   	INTEL_GUC_ACTION_STATE_CAPTURE_NOTIFICATION = 0x8002,
>   	INTEL_GUC_ACTION_NOTIFY_FLUSH_LOG_BUFFER_TO_FILE = 0x8003,
>   	INTEL_GUC_ACTION_NOTIFY_CRASH_DUMP_POSTED = 0x8004,
> @@ -181,4 +183,35 @@ enum intel_guc_state_capture_event_status {
>   
>   #define INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_MASK      0x000000FF
>   
> +#define INTEL_GUC_TLB_INVAL_TYPE_MASK	REG_GENMASK(7, 0)
> +#define INTEL_GUC_TLB_INVAL_MODE_MASK	REG_GENMASK(11, 8)
> +#define INTEL_GUC_TLB_INVAL_FLUSH_CACHE REG_BIT(31)
> +
> +enum intel_guc_tlb_invalidation_type {
> +	INTEL_GUC_TLB_INVAL_ENGINES = 0x0,
> +	INTEL_GUC_TLB_INVAL_GUC = 0x3,
> +};
> +
> +/*
> + * 0: Heavy mode of Invalidation:
> + * The pipeline of the engine(s) for which the invalidation is targeted to is
> + * blocked, and all the in-flight transactions are guaranteed to be Globally
> + * Observed before completing the TLB invalidation
> + * 1: Lite mode of Invalidation:
> + * TLBs of the targeted engine(s) are immediately invalidated.
> + * In-flight transactions are NOT guaranteed to be Globally Observed before
> + * completing TLB invalidation.
> + * Light Invalidation Mode is to be used only when
> + * it can be guaranteed (by SW) that the address translations remain invariant
> + * for the in-flight transactions across the TLB invalidation. In other words,
> + * this mode can be used when the TLB invalidation is intended to clear out the
> + * stale cached translations that are no longer in use. Light Invalidation Mode
> + * is much faster than the Heavy Invalidation Mode, as it does not wait for the
> + * in-flight transactions to be GOd.
> + */
> +enum intel_guc_tlb_inval_mode {
> +	INTEL_GUC_TLB_INVAL_MODE_HEAVY = 0x0,
> +	INTEL_GUC_TLB_INVAL_MODE_LITE = 0x1,
> +};
> +
>   #endif /* _ABI_GUC_ACTIONS_ABI_H */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 6c392bad29c19..06c44f5c28776 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -79,6 +79,18 @@ struct intel_guc {
>   	 */
>   	atomic_t outstanding_submission_g2h;
>   
> +	/** @tlb_lookup: xarray to store all pending TLB invalidation requests */
> +	struct xarray tlb_lookup;
> +
> +	/**
> +	 * @serial_slot: id to the initial waiter created in tlb_lookup,
> +	 * which is used only when failed to allocate new waiter.
> +	 */
> +	u32 serial_slot;
> +
> +	/** @next_seqno: the next id (sequence no.) to allocate. */
> +	u32 next_seqno;
> +
>   	/** @interrupts: pointers to GuC interrupt-managing functions. */
>   	struct {
>   		bool enabled;
> @@ -296,6 +308,11 @@ struct intel_guc {
>   #define MAKE_GUC_VER_STRUCT(ver)	MAKE_GUC_VER((ver).major, (ver).minor, (ver).patch)
>   #define GUC_SUBMIT_VER(guc)		MAKE_GUC_VER_STRUCT((guc)->submission_version)
>   
> +struct intel_guc_tlb_wait {
> +	struct wait_queue_head wq;
> +	bool busy;
> +};
> +
>   static inline struct intel_guc *log_to_guc(struct intel_guc_log *log)
>   {
>   	return container_of(log, struct intel_guc, log);
> @@ -418,6 +435,11 @@ static inline bool intel_guc_is_supported(struct intel_guc *guc)
>   	return intel_uc_fw_is_supported(&guc->fw);
>   }
>   
> +int intel_guc_invalidate_tlb_engines(struct intel_guc *guc);
> +int intel_guc_invalidate_tlb_guc(struct intel_guc *guc);
> +int intel_guc_tlb_invalidation_done(struct intel_guc *guc,
> +				    const u32 *payload, u32 len);
> +
>   static inline bool intel_guc_is_wanted(struct intel_guc *guc)
>   {
>   	return intel_uc_fw_is_enabled(&guc->fw);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index c33210ead1ef7..8114b12ac91e3 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -1115,6 +1115,9 @@ static int ct_process_request(struct intel_guc_ct *ct, struct ct_incoming_msg *r
>   	case INTEL_GUC_ACTION_NOTIFY_EXCEPTION:
>   		ret = intel_guc_crash_process_msg(guc, action);
>   		break;
> +	case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
> +		ret = intel_guc_tlb_invalidation_done(guc, payload, len);
> +		break;
>   	default:
>   		ret = -EOPNOTSUPP;
>   		break;
> @@ -1186,6 +1189,7 @@ static int ct_handle_event(struct intel_guc_ct *ct, struct ct_incoming_msg *requ
>   	switch (action) {
>   	case INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE:
>   	case INTEL_GUC_ACTION_DEREGISTER_CONTEXT_DONE:
> +	case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
>   		g2h_release_space(ct, request->size);
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> index b4d56eccfb1f0..a7c9874e122a3 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> @@ -22,6 +22,7 @@
>   /* Payload length only i.e. don't include G2H header length */
>   #define G2H_LEN_DW_SCHED_CONTEXT_MODE_SET	2
>   #define G2H_LEN_DW_DEREGISTER_CONTEXT		1
> +#define G2H_LEN_DW_INVALIDATE_TLB		1
>   
>   #define GUC_CONTEXT_DISABLE		0
>   #define GUC_CONTEXT_ENABLE		1
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 2cce5ec1ff00d..65dd4ad9a41a4 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1798,9 +1798,11 @@ static void __guc_reset_context(struct intel_context *ce, intel_engine_mask_t st
>   
>   void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
>   {
> +	struct intel_guc_tlb_wait *wait;
>   	struct intel_context *ce;
>   	unsigned long index;
>   	unsigned long flags;
> +	unsigned long i;
>   
>   	if (unlikely(!guc_submission_initialized(guc))) {
>   		/* Reset called during driver load? GuC not yet initialised! */
> @@ -1826,6 +1828,16 @@ void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stall
>   
>   	/* GuC is blown away, drop all references to contexts */
>   	xa_destroy(&guc->context_lookup);
> +
> +	/*
> +	 * The full GT reset will have cleared the TLB caches and flushed the
> +	 * G2H message queue; we can release all the blocked waiters.
> +	 *
> +	 * No race condition can occur here between xarray insert and wake_up,
> +	 * so this is safe to do unlocked.
> +	 */
> +	xa_for_each(&guc->tlb_lookup, i, wait)
> +		wake_up(&wait->wq);

And deletion too, eg. xa_erase_irq from guc_send_invalidate_tlb?

Lets say someone is waiting for invalidation but it times out becuase 
GuC is dead, or GPU is stuck enough. So full reset triggers and in 
parallel that waiter decides to time out and so does xa_erase_irq. 
Xa_for_each here is only RCU protected and finds the entry which now 
points to an on stack wait struct no longer there.

Regards,

Tvrtko

>   }
>   
>   static void guc_cancel_context_requests(struct intel_context *ce)
> @@ -1948,6 +1960,47 @@ void intel_guc_submission_reset_finish(struct intel_guc *guc)
>   static void destroyed_worker_func(struct work_struct *w);
>   static void reset_fail_worker_func(struct work_struct *w);
>   
> +static int init_tlb_lookup(struct intel_guc *guc)
> +{
> +	struct intel_guc_tlb_wait *wait;
> +	int err;
> +
> +	if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
> +		return 0;
> +
> +	xa_init_flags(&guc->tlb_lookup, XA_FLAGS_ALLOC);
> +
> +	wait = kzalloc(sizeof(*wait), GFP_KERNEL);
> +	if (!wait)
> +		return -ENOMEM;
> +
> +	init_waitqueue_head(&wait->wq);
> +
> +	/* Preallocate a shared id for use under memory pressure. */
> +	err = xa_alloc_cyclic_irq(&guc->tlb_lookup, &guc->serial_slot, wait,
> +				  xa_limit_32b, &guc->next_seqno, GFP_KERNEL);
> +	if (err < 0) {
> +		kfree(wait);
> +		return err;
> +	}
> +
> +	return 0;
> +}
> +
> +static void fini_tlb_lookup(struct intel_guc *guc)
> +{
> +	struct intel_guc_tlb_wait *wait;
> +
> +	if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
> +		return;
> +
> +	wait = xa_load(&guc->tlb_lookup, guc->serial_slot);
> +	if (wait)
> +		kfree(wait);
> +
> +	xa_destroy(&guc->tlb_lookup);
> +}
> +
>   /*
>    * Set up the memory resources to be shared with the GuC (via the GGTT)
>    * at firmware loading time.
> @@ -1966,11 +2019,15 @@ int intel_guc_submission_init(struct intel_guc *guc)
>   			return ret;
>   	}
>   
> +	ret = init_tlb_lookup(guc);
> +	if (ret)
> +		goto destroy_pool;
> +
>   	guc->submission_state.guc_ids_bitmap =
>   		bitmap_zalloc(NUMBER_MULTI_LRC_GUC_ID(guc), GFP_KERNEL);
>   	if (!guc->submission_state.guc_ids_bitmap) {
>   		ret = -ENOMEM;
> -		goto destroy_pool;
> +		goto destroy_tlb;
>   	}
>   
>   	guc->timestamp.ping_delay = (POLL_TIME_CLKS / gt->clock_frequency + 1) * HZ;
> @@ -1979,9 +2036,10 @@ int intel_guc_submission_init(struct intel_guc *guc)
>   
>   	return 0;
>   
> +destroy_tlb:
> +	fini_tlb_lookup(guc);
>   destroy_pool:
>   	guc_lrc_desc_pool_destroy_v69(guc);
> -
>   	return ret;
>   }
>   
> @@ -1994,6 +2052,7 @@ void intel_guc_submission_fini(struct intel_guc *guc)
>   	guc_lrc_desc_pool_destroy_v69(guc);
>   	i915_sched_engine_put(guc->sched_engine);
>   	bitmap_free(guc->submission_state.guc_ids_bitmap);
> +	fini_tlb_lookup(guc);
>   	guc->submission_initialized = false;
>   }
>   
> @@ -4624,6 +4683,131 @@ g2h_context_lookup(struct intel_guc *guc, u32 ctx_id)
>   	return ce;
>   }
>   
> +static void wait_wake_outstanding_tlb_g2h(struct intel_guc *guc, u32 seqno)
> +{
> +	struct intel_guc_tlb_wait *wait;
> +	unsigned long flags;
> +
> +	xa_lock_irqsave(&guc->tlb_lookup, flags);
> +	wait = xa_load(&guc->tlb_lookup, seqno);
> +
> +	if (wait)
> +		wake_up(&wait->wq);
> +	else
> +		guc_dbg(guc,
> +			"Stale TLB invalidation response with seqno %d\n", seqno);
> +
> +	xa_unlock_irqrestore(&guc->tlb_lookup, flags);
> +}
> +
> +int intel_guc_tlb_invalidation_done(struct intel_guc *guc,
> +				    const u32 *payload, u32 len)
> +{
> +	wait_wake_outstanding_tlb_g2h(guc, payload[0]);
> +	return 0;
> +}
> +
> +static long must_wait_woken(struct wait_queue_entry *wq_entry, long timeout)
> +{
> +	/*
> +	 * This is equivalent to wait_woken() with the exception that
> +	 * we do not wake up early if the kthread task has been completed.
> +	 * As we are called from page reclaim in any task context,
> +	 * we may be invoked from stopped kthreads, but we *must*
> +	 * complete the wait from the HW.
> +	 */
> +	do {
> +		set_current_state(TASK_UNINTERRUPTIBLE);
> +		if (wq_entry->flags & WQ_FLAG_WOKEN)
> +			break;
> +
> +		timeout = schedule_timeout(timeout);
> +	} while (timeout);
> +	__set_current_state(TASK_RUNNING);
> +
> +	/* See wait_woken() and woken_wake_function() */
> +	smp_store_mb(wq_entry->flags, wq_entry->flags & ~WQ_FLAG_WOKEN);
> +
> +	return timeout;
> +}
> +
> +static int guc_send_invalidate_tlb(struct intel_guc *guc,
> +				   enum intel_guc_tlb_invalidation_type type)
> +{
> +	struct intel_guc_tlb_wait _wq, *wq = &_wq;
> +	DEFINE_WAIT_FUNC(wait, woken_wake_function);
> +	int err;
> +	u32 seqno;
> +	u32 action[] = {
> +		INTEL_GUC_ACTION_TLB_INVALIDATION,
> +		0,
> +		REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_TYPE_MASK, type) |
> +			REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_MODE_MASK,
> +				       INTEL_GUC_TLB_INVAL_MODE_HEAVY) |
> +			INTEL_GUC_TLB_INVAL_FLUSH_CACHE,
> +	};
> +	u32 size = ARRAY_SIZE(action);
> +
> +	init_waitqueue_head(&_wq.wq);
> +
> +	if (xa_alloc_cyclic_irq(&guc->tlb_lookup, &seqno, wq,
> +				xa_limit_32b, &guc->next_seqno,
> +				GFP_ATOMIC | __GFP_NOWARN) < 0) {
> +		/* Under severe memory pressure? Serialise TLB allocations */
> +		xa_lock_irq(&guc->tlb_lookup);
> +		wq = xa_load(&guc->tlb_lookup, guc->serial_slot);
> +		wait_event_lock_irq(wq->wq,
> +				    !READ_ONCE(wq->busy),
> +				    guc->tlb_lookup.xa_lock);
> +		/*
> +		 * Update wq->busy under lock to ensure only one waiter can
> +		 * issue the TLB invalidation command using the serial slot at a
> +		 * time. The condition is set to true before releasing the lock
> +		 * so that other caller continue to wait until woken up again.
> +		 */
> +		wq->busy = true;
> +		xa_unlock_irq(&guc->tlb_lookup);
> +
> +		seqno = guc->serial_slot;
> +	}
> +
> +	action[1] = seqno;
> +
> +	add_wait_queue(&wq->wq, &wait);
> +
> +	/*
> +	 * This is a critical reclaim path and thus we must loop here:
> +	 * We cannot block for anything that is on the GPU.
> +	 */
> +	err = intel_guc_send_busy_loop(guc, action, size, G2H_LEN_DW_INVALIDATE_TLB, true);
> +	if (err)
> +		goto out;
> +
> +	if (!must_wait_woken(&wait, intel_guc_ct_expected_delay(&guc->ct))) {
> +		guc_err(guc,
> +			"TLB invalidation response timed out for seqno %u\n", seqno);
> +		err = -ETIME;
> +	}
> +out:
> +	remove_wait_queue(&wq->wq, &wait);
> +	if (seqno != guc->serial_slot)
> +		xa_erase_irq(&guc->tlb_lookup, seqno);
> +
> +	return err;
> +}
> +
> +/* Full TLB invalidation */
> +int intel_guc_invalidate_tlb_engines(struct intel_guc *guc)
> +{
> +	return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_ENGINES);
> +}
> +
> +/* GuC TLB Invalidation: Invalidate the TLB's of GuC itself. */
> +int intel_guc_invalidate_tlb_guc(struct intel_guc *guc)
> +{
> +	return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_GUC);
> +}
> +
>   int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
>   					  const u32 *msg,
>   					  u32 len)
