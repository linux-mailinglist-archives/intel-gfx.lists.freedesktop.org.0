Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2F67B4CE0
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 09:53:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D9C910E06A;
	Mon,  2 Oct 2023 07:53:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1FDC10E06A
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 07:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696233231; x=1727769231;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=cLiPZshDSu0Fd9B4Z2urF15/v/sPRb0g34P8abG3VcQ=;
 b=dSjTuIyhon4QcLpAcpoepIUi2f6ndnnhrC9uiw70kGSKLvXAKV74nNqM
 UaNd6+VlePVtRZUxZy74c7ms+it121kpipMC8hIJtt9sc0bQ21buIJKam
 5kdf5EvDsXDocagwVuhK9MZPClATMbx8H6zapDFCMIUvoO45VS7QqoNeU
 Rirht2E18lIibd+ZesvXh1uFY6mkpemBvD1haXj31J8CNQGdcEgu3db82
 9obEHlVH/8AhewsVsCxu7ShLoZz/mYx8J7hlLddvZV5QQjO5aC7eGDT7l
 7FDFj8gNn8IWqVn+oXd4dFm7K1wqI4LalUb9WL7rfwTqiaFmpMxk/CXGp w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="449087872"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="449087872"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 00:53:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="1081571784"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="1081571784"
Received: from svandens-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.151])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 00:53:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230929201837.849299-2-jonathan.cavitt@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230929201837.849299-1-jonathan.cavitt@intel.com>
 <20230929201837.849299-2-jonathan.cavitt@intel.com>
Date: Mon, 02 Oct 2023 10:53:37 +0300
Message-ID: <87y1glh33y.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915: No TLB invalidation on
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
 umesh.nirlige.ramappa@intel.com, matthew.d.roper@intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 29 Sep 2023, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
> From: Fei Yang <fei.yang@intel.com>
>
> In case of GT is suspended or wedged, don't allow submission of new TLB
> invalidation request and cancel all pending requests. The TLB entries
> will be invalidated either during GuC reload or on system resume.
>
> Signed-off-by: Fei Yang <fei.yang@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> CC: John Harrison <john.c.harrison@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt.h            |  9 +++++++
>  drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  1 +
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 27 ++++++++++++++-----
>  drivers/gpu/drm/i915/i915_driver.c            | 12 +++++++++
>  4 files changed, 43 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
> index 2cac499d5aa3e..3fcc0d2cd7bf3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -9,6 +9,7 @@
>  #include "intel_engine_types.h"
>  #include "intel_gt_types.h"
>  #include "intel_reset.h"
> +#include "i915_irq.h"

No. Please do not include headers from headers.

Currently, *zero* headers include i915_irq.h.

>  struct drm_i915_private;
>  struct drm_printer;
> @@ -157,6 +158,14 @@ static inline bool intel_gt_is_wedged(const struct intel_gt *gt)
>  	return unlikely(test_bit(I915_WEDGED, &gt->reset.flags));
>  }
>  
> +static inline bool intel_gt_is_enabled(const struct intel_gt *gt)
> +{
> +	/* Check if GT is wedged or suspended */
> +	if (intel_gt_is_wedged(gt) || !intel_irqs_enabled(gt->i915))
> +		return false;
> +	return true;
> +}

No. Please do not add static inlines in headers that require you to pull
in more headers.

I've spent an awful lot of time cleaning this up, and I don't look
kindly on that work being undermined.

Please look at [1] for my latest cleanup series. In particular, please
take a moment to appreciate the stats in the cover letter. We have
headers that, when modified, cause 300+ object files to be rebuilt.

Currently, 24 object files depend on i915_irq.h. This patch bumps that
number to 129.

I don't approve.


BR,
Jani.


[1] https://patchwork.freedesktop.org/series/124418/


> +
>  int intel_gt_probe_all(struct drm_i915_private *i915);
>  int intel_gt_tiles_init(struct drm_i915_private *i915);
>  void intel_gt_release_all(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 0f74a460bfe56..5fe48f7ab7d65 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -536,4 +536,5 @@ void intel_guc_dump_time_info(struct intel_guc *guc, struct drm_printer *p);
>  
>  int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc);
>  
> +void wake_up_all_tlb_invalidate(struct intel_guc *guc);
>  #endif
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 6a2dcab63074e..fd64443806e5c 100644
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
> @@ -1803,13 +1804,20 @@ static void wake_up_tlb_invalidate(struct intel_guc_tlb_wait *wait)
>  	wake_up(&wait->wq);
>  }
>  
> -void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
> +void wake_up_all_tlb_invalidate(struct intel_guc *guc)
>  {
>  	struct intel_guc_tlb_wait *wait;
> +	unsigned long i;
> +
> +	xa_for_each(&guc->tlb_lookup, i, wait)
> +		wake_up_tlb_invalidate(wait);
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
> @@ -1840,8 +1848,7 @@ void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stall
>  	 * The full GT reset will have cleared the TLB caches and flushed the
>  	 * G2H message queue; we can release all the blocked waiters.
>  	 */
> -	xa_for_each(&guc->tlb_lookup, i, wait)
> -		wake_up_tlb_invalidate(wait);
> +	wake_up_all_tlb_invalidate(guc);
>  }
>  
>  static void guc_cancel_context_requests(struct intel_context *ce)
> @@ -1937,6 +1944,12 @@ void intel_guc_submission_cancel_requests(struct intel_guc *guc)
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
> @@ -4764,7 +4777,8 @@ static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 type)
>  	};
>  	u32 size = ARRAY_SIZE(action);
>  
> -	if (!intel_guc_ct_enabled(&guc->ct))
> +	if (!intel_guc_ct_enabled(&guc->ct) ||
> +	    !intel_gt_is_enabled(gt))
>  		return -EINVAL;
>  
>  	init_waitqueue_head(&_wq.wq);
> @@ -4806,7 +4820,8 @@ static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 type)
>  	 * queued in CT buffer.
>  	 */
>  #define OUTSTANDING_GUC_TIMEOUT_PERIOD  (HZ * 2)
> -	if (!must_wait_woken(&wait, OUTSTANDING_GUC_TIMEOUT_PERIOD)) {
> +	if (!must_wait_woken(&wait, OUTSTANDING_GUC_TIMEOUT_PERIOD) &&
> +	    intel_gt_is_enabled(gt)) {
>  		gt_err(gt,
>  		       "TLB invalidation response timed out for seqno %u\n", seqno);
>  		err = -ETIME;
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 78501a83ba109..30c2a7ced10f8 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -72,6 +72,7 @@
>  #include "gt/intel_gt.h"
>  #include "gt/intel_gt_pm.h"
>  #include "gt/intel_rc6.h"
> +#include "gt/uc/intel_guc.h"
>  
>  #include "pxp/intel_pxp.h"
>  #include "pxp/intel_pxp_debugfs.h"
> @@ -1076,6 +1077,8 @@ static int i915_drm_suspend(struct drm_device *dev)
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>  	pci_power_t opregion_target_state;
> +	struct intel_gt *gt;
> +	int i;
>  
>  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
> @@ -1092,6 +1095,10 @@ static int i915_drm_suspend(struct drm_device *dev)
>  	intel_dp_mst_suspend(dev_priv);
>  
>  	intel_runtime_pm_disable_interrupts(dev_priv);
> +
> +	for_each_gt(gt, dev_priv, i)
> +		wake_up_all_tlb_invalidate(&gt->uc.guc);
> +
>  	intel_hpd_cancel_work(dev_priv);
>  
>  	intel_suspend_encoders(dev_priv);
> @@ -1263,6 +1270,11 @@ static int i915_drm_resume(struct drm_device *dev)
>  
>  	intel_gvt_resume(dev_priv);
>  
> +	for_each_gt(gt, dev_priv, i) {
> +		intel_guc_invalidate_tlb_full(&gt->uc.guc);
> +		intel_guc_invalidate_tlb(&gt->uc.guc);
> +	}
> +
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
>  	return 0;

-- 
Jani Nikula, Intel
