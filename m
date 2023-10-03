Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D5E7B6848
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 13:51:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8305210E08F;
	Tue,  3 Oct 2023 11:51:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7323A10E08F
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 11:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696333863; x=1727869863;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=7XiXCAqA14QKyqVj0E5niKYILKyoQlXzeYvt71YKwEU=;
 b=Bx/xRklg4/xEYBn9TSKtMIbRWP6rP1230UKEKz5iqEGAq5UfjgZ8Z5sY
 rkQT+0NAR8G4RnlQp7ZfaW/mi4ACtph+6Ob+FZmnRLfq2T89gB6ebHxyp
 Vdhl5OxJ/+t49S8SY9RxZgxiHNTtxzdNeMF6Bthp0Fpr1wmPNUb31VkCP
 5YE8YLuy1bNo3VJir1u+NwMENhnC/ERzsYzyr/6w2ntVLyMJjZeUAZRoz
 WJNFgB/TV1sLtDLVnFsloeXR84uG62TYWcbm7RXepMnuIJ3CugOmz5B/1
 TboOAVSBcxmHH7T89KBZ/b+6bWZLXhOMrKe1cxqU4JDAylMDmSp+SdCug g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="413766914"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="413766914"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 04:51:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="816650021"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="816650021"
Received: from akorotox-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.199])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 04:50:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231002172419.1017044-2-jonathan.cavitt@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231002172419.1017044-1-jonathan.cavitt@intel.com>
 <20231002172419.1017044-2-jonathan.cavitt@intel.com>
Date: Tue, 03 Oct 2023 14:50:57 +0300
Message-ID: <87zg0zgc0u.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 2/4] drm/i915: No TLB invalidation on
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

On Mon, 02 Oct 2023, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
> From: Fei Yang <fei.yang@intel.com>
>
> In case of GT is suspended or wedged, don't allow submission of new TLB
> invalidation request and cancel all pending requests.  The TLB entries
> will be invalidated either during GuC reload or on system resume.
>
> Signed-off-by: Fei Yang <fei.yang@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> CC: John Harrison <john.c.harrison@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  1 +
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 35 +++++++++++++++----
>  drivers/gpu/drm/i915/i915_driver.c            |  9 +++++
>  3 files changed, 39 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 5fc5e67f870cc..0cdc7ca66861c 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -536,4 +536,5 @@ void intel_guc_dump_time_info(struct intel_guc *guc, struct drm_printer *p);
>  
>  int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc);
>  
> +void wake_up_all_tlb_invalidate(struct intel_guc *guc);
>  #endif
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 3478fa73180ab..2f194cadbe553 100644
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
> @@ -4748,6 +4761,14 @@ static long must_wait_woken(struct wait_queue_entry *wq_entry, long timeout)
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
> @@ -4765,7 +4786,8 @@ static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 type)
>  	};
>  	u32 size = ARRAY_SIZE(action);
>  
> -	if (!intel_guc_ct_enabled(&guc->ct))
> +	if (!intel_guc_ct_enabled(&guc->ct) ||
> +	    !intel_gt_is_enabled(gt))
>  		return -EINVAL;
>  
>  	init_waitqueue_head(&_wq.wq);
> @@ -4807,7 +4829,8 @@ static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 type)
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
> index 78501a83ba109..f5175103ea900 100644
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
> @@ -1092,6 +1093,9 @@ static int i915_drm_suspend(struct drm_device *dev)
>  	intel_dp_mst_suspend(dev_priv);
>  
>  	intel_runtime_pm_disable_interrupts(dev_priv);
> +
> +	wake_up_all_tlb_invalidate(&to_gt(dev_priv)->uc.guc);

Per the name I would assume this is a static function. Not great.

Why does the top level suspend function need to know
&to_gt(dev_priv)->uc.guc? That's low level implementation details that
should be hidden away.

> +
>  	intel_hpd_cancel_work(dev_priv);
>  
>  	intel_suspend_encoders(dev_priv);
> @@ -1263,6 +1267,11 @@ static int i915_drm_resume(struct drm_device *dev)
>  
>  	intel_gvt_resume(dev_priv);
>  
> +	if (INTEL_GUC_SUPPORTS_TLB_INVALIDATION(&to_gt(dev_priv)->uc.guc)) {
> +		intel_guc_invalidate_tlb_full(&to_gt(dev_priv)->uc.guc);
> +		intel_guc_invalidate_tlb(&to_gt(dev_priv)->uc.guc);
> +	}

Why does the top level resume hook need to check for guc details? Have
one function that does what you need, call it, and check for the
constraints there instead of at the top level.

BR,
Jani.

> +
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
>  	return 0;

-- 
Jani Nikula, Intel
