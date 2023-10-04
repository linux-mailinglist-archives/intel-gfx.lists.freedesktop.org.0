Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08BB07B7CF6
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 12:20:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A69910E0C0;
	Wed,  4 Oct 2023 10:20:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F058B10E0C0
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 10:20:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696414803; x=1727950803;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2Voe5lB4l1nmQiKxQ9SYnssYgkGocogEaR8mw19eSto=;
 b=L1ebLK7FfuIvbwCplBw7pXfydyzo7twMgzXHUdo6SwTZ7AquNR6L5UIU
 oEQcqBFFrldgO+TbToHvl2nLyNjMIw64N/MjL0jZ/QPa7LS31DhCcmK8C
 gJBXta3b8SkTqRt0kSfHWiSdNq66cplYIEnVoyGQNT6HK3Fef/wlo5aKR
 kdHOH8o/XNEUtN+MpyZhwIGN2yf4/fD90LnNOIp9fo02Arp1qmhi40+RK
 oHufzNvcJ6/7bUuPk7zt6XvmnRRLMyIJJp1Y7hMXs3AFQoxsT7vVtCVUM
 jjCx9xfzyXz1Sv8brZ4MStUDuSBw8hZjm1ETI/9doicQedrqDmAdfe0mk Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="368182793"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="368182793"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 03:20:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="925063832"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="925063832"
Received: from msterni-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.56.48])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 03:19:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231003210156.1172732-3-jonathan.cavitt@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231003210156.1172732-1-jonathan.cavitt@intel.com>
 <20231003210156.1172732-3-jonathan.cavitt@intel.com>
Date: Wed, 04 Oct 2023 13:19:56 +0300
Message-ID: <87a5syg04z.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v4 3/3] drm/i915: No TLB invalidation on
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
 chris.p.wilson@linux.intel.com, jonathan.cavitt@intel.com,
 matthew.d.roper@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 03 Oct 2023, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
> In case of GT is suspended or wedged, don't allow submission of new TLB
> invalidation request and cancel all pending requests. The TLB entries
> will be invalidated either during GuC reload or on system resume.
>
> Signed-off-by: Fei Yang <fei.yang@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> CC: John Harrison <john.c.harrison@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt.h            | 26 ++++++++++++
>  drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  1 +
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 41 +++++++++++++++----
>  drivers/gpu/drm/i915/i915_driver.c            |  5 +++
>  4 files changed, 64 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
> index 970bedf6b78a7..71a0e376ded40 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -9,6 +9,7 @@
>  #include "intel_engine_types.h"
>  #include "intel_gt_types.h"
>  #include "intel_reset.h"
> +#include "i915_drv.h"

Do not include headers from headers, especially do not include
i915_drv.h from headers.

I thought I just explained this in a previous thread.

>  
>  struct drm_i915_private;
>  struct drm_printer;
> @@ -179,4 +180,29 @@ enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
>  void intel_gt_bind_context_set_ready(struct intel_gt *gt);
>  void intel_gt_bind_context_set_unready(struct intel_gt *gt);
>  bool intel_gt_is_bind_context_ready(struct intel_gt *gt);
> +
> +static inline void intel_tlb_suspend(struct drm_i915_private *i915)
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
> +static inline void intel_tlb_resume(struct drm_i915_private *i915)
> +{
> +	struct intel_gt *gt;
> +	int i;
> +
> +	if (!HAS_GUC_TLB_INVALIDATION(i915))
> +		return;
> +	for_each_gt(gt, i915, i) {
> +		intel_guc_invalidate_tlb_full(&gt->uc.guc);
> +		intel_guc_invalidate_tlb(&gt->uc.guc);
> +	}
> +}

Do not add static inlines that require you to pull in other headers, at
least not without justification. I don't think this one could be
justified.

I thought I just explained this in a prevous thread.

I honestly don't know what you think you'll achieve by using static
inlines here, but *always* err on the side of making them proper
functions instead.

Side note on naming, functions beginning with intel_tlb_ prefix belong
in intel_tlb.[ch]. If these don't belong there, then the prefix is
wrong.


BR,
Jani.


> +
>  #endif /* __INTEL_GT_H__ */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 636edf598946c..e2491f489f1bc 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -536,4 +536,5 @@ void intel_guc_dump_time_info(struct intel_guc *guc, struct drm_printer *p);
>  
>  int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc);
>  
> +void wake_up_all_tlb_invalidate(struct intel_guc *guc);
>  #endif
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 872014a801c7e..20e9076cf099e 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -32,6 +32,7 @@
>  
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> +#include "i915_irq.h"
>  #include "i915_trace.h"
>  
>  /**
> @@ -1796,13 +1797,23 @@ static void __guc_reset_context(struct intel_context *ce, intel_engine_mask_t st
>  	intel_context_put(parent);
>  }
>  
> -void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
> +void wake_up_all_tlb_invalidate(struct intel_guc *guc)
>  {
>  	struct intel_guc_tlb_wait *wait;
> +	unsigned long i;
> +
> +	xa_for_each(&guc->tlb_lookup, i, wait) {
> +		/* Barrier to ensure the store is observed by the woken thread */
> +		smp_store_mb(wait->busy, 0);
> +		wake_up(&wait->wq);
> +	}
> +}
> +
> +void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
> +{
>  	struct intel_context *ce;
>  	unsigned long index;
>  	unsigned long flags;
> -	unsigned long i;
>  
>  	if (unlikely(!guc_submission_initialized(guc))) {
>  		/* Reset called during driver load? GuC not yet initialised! */
> @@ -1833,11 +1844,7 @@ void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stall
>  	 * The full GT reset will have cleared the TLB caches and flushed the
>  	 * G2H message queue; we can release all the blocked waiters.
>  	 */
> -	xa_for_each(&guc->tlb_lookup, i, wait) {
> -		/* Barrier to ensure the store is observed by the woken thread */
> -		smp_store_mb(wait->busy, 0);
> -		wake_up(&wait->wq);
> -	}
> +	wake_up_all_tlb_invalidate(guc);
>  }
>  
>  static void guc_cancel_context_requests(struct intel_context *ce)
> @@ -1933,6 +1940,12 @@ void intel_guc_submission_cancel_requests(struct intel_guc *guc)
>  
>  	/* GuC is blown away, drop all references to contexts */
>  	xa_destroy(&guc->context_lookup);
> +
> +	/*
> +	 * Wedged GT won't respond to any TLB invalidation request. Simply
> +	 * release all the blocked waiters.
> +	 */
> +	wake_up_all_tlb_invalidate(guc);
>  }
>  
>  void intel_guc_submission_reset_finish(struct intel_guc *guc)
> @@ -4740,6 +4753,14 @@ static long must_wait_woken(struct wait_queue_entry *wq_entry, long timeout)
>  	return timeout;
>  }
>  
> +static bool intel_gt_is_enabled(const struct intel_gt *gt)
> +{
> +	/* Check if GT is wedged or suspended */
> +	if (intel_gt_is_wedged(gt) || !intel_irqs_enabled(gt->i915))
> +		return false;
> +	return true;
> +}
> +
>  static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 type)
>  {
>  	struct intel_guc_tlb_wait _wq, *wq = &_wq;
> @@ -4757,7 +4778,8 @@ static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 type)
>  	};
>  	u32 size = ARRAY_SIZE(action);
>  
> -	if (!intel_guc_ct_enabled(&guc->ct))
> +	if (!intel_gt_is_enabled(gt) ||
> +	    !intel_guc_ct_enabled(&guc->ct))
>  		return -EINVAL;
>  
>  	init_waitqueue_head(&_wq.wq);
> @@ -4800,7 +4822,8 @@ static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 type)
>  	 * requests that can be queued in CT buffer.
>  	 */
>  #define OUTSTANDING_GUC_TIMEOUT_PERIOD  (HZ * 2)
> -	if (!must_wait_woken(&wait, OUTSTANDING_GUC_TIMEOUT_PERIOD)) {
> +	if (intel_gt_is_enabled(gt) &&
> +	    !must_wait_woken(&wait, OUTSTANDING_GUC_TIMEOUT_PERIOD)) {
>  		gt_err(gt,
>  		       "TLB invalidation response timed out for seqno %u\n", seqno);
>  		err = -ETIME;
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 78501a83ba109..66bd765d00302 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1092,6 +1092,9 @@ static int i915_drm_suspend(struct drm_device *dev)
>  	intel_dp_mst_suspend(dev_priv);
>  
>  	intel_runtime_pm_disable_interrupts(dev_priv);
> +
> +	intel_tlb_suspend(dev_priv);
> +
>  	intel_hpd_cancel_work(dev_priv);
>  
>  	intel_suspend_encoders(dev_priv);
> @@ -1263,6 +1266,8 @@ static int i915_drm_resume(struct drm_device *dev)
>  
>  	intel_gvt_resume(dev_priv);
>  
> +	intel_tlb_resume(dev_priv);
> +
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
>  	return 0;

-- 
Jani Nikula, Intel
