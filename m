Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B717BB508
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 12:23:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A895B10E06B;
	Fri,  6 Oct 2023 10:23:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1037810E06B
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 10:23:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696587801; x=1728123801;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=H3tjSjqL07OXSf4NkeIFInEGz7bfKRzD7iHRnIa6Qec=;
 b=hP9kRp7HNy19QiSfTFDWYtY4zIVYgOA64Sj8ZnulIbRq2XQE7n05+Vi7
 /pqvc9jM6lbCq4CmdEz4oRE6Qdy5oOgBnt88lO3s+5YfozSZOIdYjZ8DY
 OupNgC1VX7rztamAvZOai31q/KW51o6iyefsLOp01II1aOva9VHIvGPDR
 KpGdD2qsIU47qwSlr0xIBE0qxyJXhgHS44JzZ343P/dk8Q97Goff9o915
 2EwgGxPEfV+/n10jCdNf3JvAjRkYGzAXv27ki1HTO1y3rQMxzs/YfkpLz
 awtffk4v/kW7oK5xAb7GoXJFuPOkHPgd+DnvpASNDdcxi7n82xOWRyVwK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="386546215"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="386546215"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 03:23:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="752143603"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="752143603"
Received: from stevegr-mobl3.ger.corp.intel.com (HELO [10.213.210.79])
 ([10.213.210.79])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 03:23:17 -0700
Message-ID: <ba76f1e1-ced9-9201-de8b-91cd63e5edf3@linux.intel.com>
Date: Fri, 6 Oct 2023 11:23:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231005193536.1463159-1-jonathan.cavitt@intel.com>
 <20231005193536.1463159-5-jonathan.cavitt@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20231005193536.1463159-5-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v7 3/5] drm/i915: No TLB invalidation on
 wedged or suspended GT
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
 matthew.d.roper@intel.com, chris.p.wilson@linux.intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 05/10/2023 20:35, Jonathan Cavitt wrote:
> In case of GT is suspended or wedged, don't allow submission of new TLB
> invalidation request and cancel all pending requests. The TLB entries
> will be invalidated either during GuC reload or on system resume.
> 
> Signed-off-by: Fei Yang <fei.yang@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> CC: John Harrison <john.c.harrison@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt.h            |  1 +
>   drivers/gpu/drm/i915/gt/intel_tlb.c           | 25 ++++++++++++
>   drivers/gpu/drm/i915/gt/intel_tlb.h           |  3 ++
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  1 +
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 39 +++++++++++++++----
>   drivers/gpu/drm/i915/i915_driver.c            |  6 +++
>   6 files changed, 68 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
> index 970bedf6b78a7..4e3bb221d2f4d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -179,4 +179,5 @@ enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
>   void intel_gt_bind_context_set_ready(struct intel_gt *gt);
>   void intel_gt_bind_context_set_unready(struct intel_gt *gt);
>   bool intel_gt_is_bind_context_ready(struct intel_gt *gt);
> +
>   #endif /* __INTEL_GT_H__ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.c b/drivers/gpu/drm/i915/gt/intel_tlb.c
> index a84563c178bc6..c6bb1b34abdaa 100644
> --- a/drivers/gpu/drm/i915/gt/intel_tlb.c
> +++ b/drivers/gpu/drm/i915/gt/intel_tlb.c
> @@ -166,6 +166,31 @@ void intel_gt_fini_tlb(struct intel_gt *gt)
>   	mutex_destroy(&gt->tlb.invalidate_lock);
>   }
>   
> +void intel_gt_tlb_suspend_all(struct drm_i915_private *i915)
> +{
> +	struct intel_gt *gt;
> +	int i;
> +
> +	if (!HAS_GUC_TLB_INVALIDATION(i915))
> +		return;
> +	for_each_gt(gt, i915, i)
> +		wake_up_all_tlb_invalidate(&gt->uc.guc);
> +}
> +
> +void intel_gt_tlb_resume_all(struct drm_i915_private *i915)
> +{
> +	struct intel_gt *gt;
> +	int i;
> +
> +	if (!HAS_GUC_TLB_INVALIDATION(i915))
> +		return;
> +	for_each_gt(gt, i915, i) {
> +		/* Perform tlb invalidation on both GT and GuC, in that order. */
> +		intel_guc_invalidate_tlb_full(&gt->uc.guc);
> +		intel_guc_invalidate_tlb(&gt->uc.guc);
> +	}
> +}

1)

With this patch I was suggesting having the new helpers called from 
intel_gt_suspend(_*) and intel_gt_resume. Or there is also 
intel_uc_suspend/resume so maybe there. Either of those places would 
benefit from the existing for_each_gt applied at the GEM level, when it 
calls into the GT component.

Are those at the wrong spot in the suspend/resume sequence so it 
wouldn't work?

Maybe it is a matter of taste but since the implementation is so GT 
centric (everything added operates strictly on a &gt->uc.guc pointer) 
that it really looks to me it should be better placed in one of those 
two components.

To be super clear suggestion is from the appropriate place, either 
intel_gt_suspend_early/late (or whatsitscalled) add a call to 
intel_gt_tlb_suspend(gt). Same for resume.

Or from uc with uc naming if that works better.

for_each_gt loops for those then already exist and patch becomes smaller.

2)

New comment. It would be nicer if you could split the suspend/resume and 
wedged into two patches.

> +
>   #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>   #include "selftest_tlb.c"
>   #endif
> diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.h b/drivers/gpu/drm/i915/gt/intel_tlb.h
> index 337327af92ac4..1a34ec0c447f2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_tlb.h
> +++ b/drivers/gpu/drm/i915/gt/intel_tlb.h
> @@ -26,4 +26,7 @@ static inline u32 intel_gt_next_invalidate_tlb_full(const struct intel_gt *gt)
>   	return intel_gt_tlb_seqno(gt) | 1;
>   }
>   
> +void intel_gt_tlb_suspend_all(struct drm_i915_private *i915);
> +void intel_gt_tlb_resume_all(struct drm_i915_private *i915);
> +
>   #endif /* INTEL_TLB_H */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index d7203ba88b0c0..e76b26095eef2 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -536,4 +536,5 @@ void intel_guc_dump_time_info(struct intel_guc *guc, struct drm_printer *p);
>   
>   int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc);
>   
> +void wake_up_all_tlb_invalidate(struct intel_guc *guc);
>   #endif
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 7b484d1573f16..7172335199c76 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -32,6 +32,7 @@
>   
>   #include "i915_drv.h"
>   #include "i915_reg.h"
> +#include "i915_irq.h"
>   #include "i915_trace.h"
>   
>   /**
> @@ -1796,13 +1797,23 @@ static void __guc_reset_context(struct intel_context *ce, intel_engine_mask_t st
>   	intel_context_put(parent);
>   }
>   
> -void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
> +void wake_up_all_tlb_invalidate(struct intel_guc *guc)
>   {
>   	struct intel_guc_tlb_wait *wait;
> +	unsigned long i;
> +
> +	if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
> +		return;
> +	xa_for_each(&guc->tlb_lookup, i, wait) {
> +		wake_up(&wait->wq);
> +	}
> +}
> +
> +void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
> +{
>   	struct intel_context *ce;
>   	unsigned long index;
>   	unsigned long flags;
> -	unsigned long i;
>   
>   	if (unlikely(!guc_submission_initialized(guc))) {
>   		/* Reset called during driver load? GuC not yet initialised! */
> @@ -1833,9 +1844,7 @@ void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stall
>   	 * The full GT reset will have cleared the TLB caches and flushed the
>   	 * G2H message queue; we can release all the blocked waiters.
>   	 */
> -	xa_for_each(&guc->tlb_lookup, i, wait) {
> -		wake_up(&wait->wq);
> -	}
> +	wake_up_all_tlb_invalidate(guc);
>   }
>   
>   static void guc_cancel_context_requests(struct intel_context *ce)
> @@ -1931,6 +1940,12 @@ void intel_guc_submission_cancel_requests(struct intel_guc *guc)
>   
>   	/* GuC is blown away, drop all references to contexts */
>   	xa_destroy(&guc->context_lookup);
> +
> +	/*
> +	 * Wedged GT won't respond to any TLB invalidation request. Simply
> +	 * release all the blocked waiters.
> +	 */
> +	wake_up_all_tlb_invalidate(guc);
>   }
>   
>   void intel_guc_submission_reset_finish(struct intel_guc *guc)
> @@ -4746,6 +4761,14 @@ static long must_wait_woken(struct wait_queue_entry *wq_entry, long timeout)
>   	return timeout;
>   }
>   
> +static bool intel_gt_is_enabled(const struct intel_gt *gt)
> +{
> +	/* Check if GT is wedged or suspended */
> +	if (intel_gt_is_wedged(gt) || !intel_irqs_enabled(gt->i915))
> +		return false;
> +	return true;
> +}
> +
>   static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 type)
>   {
>   	struct intel_guc_tlb_wait _wq, *wq = &_wq;
> @@ -4763,7 +4786,8 @@ static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 type)
>   	};
>   	u32 size = ARRAY_SIZE(action);
>   
> -	if (!intel_guc_ct_enabled(&guc->ct))
> +	if (!intel_gt_is_enabled(gt) ||
> +	    !intel_guc_ct_enabled(&guc->ct))

IMO this reads confused but I leave it to the GuC experts to decide what 
makes sense. Not only that it reads confused but it does inspire 
confidence that it closes any race, since this state can still change 
just after this check, and then the invalidation request gets submitted 
(contrary to what the commit says?). Only thing it does below is skip 
the wait and the time out error message. Again, I leave it for people 
who know the GuC state transition flows to bless this part.

Regards,

Tvrtko

>   		return -EINVAL;
>   
>   	init_waitqueue_head(&_wq.wq);
> @@ -4806,7 +4830,8 @@ static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 type)
>   	 * can be queued in CT buffer.
>   	 */
>   #define OUTSTANDING_GUC_TIMEOUT_PERIOD  (HZ * 2)
> -	if (!must_wait_woken(&wait, OUTSTANDING_GUC_TIMEOUT_PERIOD)) {
> +	if (intel_gt_is_enabled(gt) &&
> +	    !must_wait_woken(&wait, OUTSTANDING_GUC_TIMEOUT_PERIOD)) {
>   		gt_err(gt,
>   		       "TLB invalidation response timed out for seqno %u\n", seqno);
>   		err = -ETIME;
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index ccbb2834cde07..0c9d9826d2f41 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -72,6 +72,7 @@
>   #include "gt/intel_gt.h"
>   #include "gt/intel_gt_pm.h"
>   #include "gt/intel_rc6.h"
> +#include "gt/intel_tlb.h"
>   
>   #include "pxp/intel_pxp.h"
>   #include "pxp/intel_pxp_debugfs.h"
> @@ -1093,6 +1094,9 @@ static int i915_drm_suspend(struct drm_device *dev)
>   	intel_dp_mst_suspend(dev_priv);
>   
>   	intel_runtime_pm_disable_interrupts(dev_priv);
> +
> +	intel_gt_tlb_suspend_all(dev_priv);
> +
>   	intel_hpd_cancel_work(dev_priv);
>   
>   	intel_suspend_encoders(dev_priv);
> @@ -1264,6 +1268,8 @@ static int i915_drm_resume(struct drm_device *dev)
>   
>   	intel_gvt_resume(dev_priv);
>   
> +	intel_gt_tlb_resume_all(dev_priv);
> +
>   	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>   
>   	return 0;
