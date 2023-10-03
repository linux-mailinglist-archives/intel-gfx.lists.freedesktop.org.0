Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F16967B6686
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 12:35:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A34FB10E0A3;
	Tue,  3 Oct 2023 10:35:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1833210E0A3
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 10:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696329335; x=1727865335;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=k7WqUXly2YhNuTQfxctXScW1OApqIb36I6FQMQBvi3w=;
 b=Fz7leZgvHA2a2auNjVvwxAuj4TTwVZxSrN/JxYEgldFT1QoB5AHYv9qj
 mgp0IL5q1gO8GueQyPteJvocCkQ6qFMjDHegct2AgPkThecDzcd6c1ppl
 hjaMypgdOszw1baQpHmLGDU/v7DdtK+0nZdoklNQvNtRkHD/FWpQnJpwh
 +jfnL1NxYDtAVa2+et3h3EYYmOHbgiviMayWa19VMWI3KaU1Up9Ql4sHd
 mAUGtQmh59wR7G73DQvwQrTTz3RXMYZarcNZo2HSF/tPAzQJO9jqzH+R9
 IfzYA3dOiuUrRLh97pif9YpG7D2z5D8Am54rSnTKXXZ2GPuugANltqwat Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="449330984"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="449330984"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 03:35:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="754367101"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="754367101"
Received: from fredden-mobl1.ger.corp.intel.com (HELO [10.213.208.132])
 ([10.213.208.132])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 03:35:17 -0700
Message-ID: <0564f06e-0eba-1824-2219-6b667e9f3688@linux.intel.com>
Date: Tue, 3 Oct 2023 11:35:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231002172419.1017044-1-jonathan.cavitt@intel.com>
 <20231002172419.1017044-2-jonathan.cavitt@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20231002172419.1017044-2-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
 matthew.d.roper@intel.com, chris.p.wilson@linux.intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 02/10/2023 18:24, Jonathan Cavitt wrote:
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
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  1 +
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 35 +++++++++++++++----
>   drivers/gpu/drm/i915/i915_driver.c            |  9 +++++
>   3 files changed, 39 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 5fc5e67f870cc..0cdc7ca66861c 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -536,4 +536,5 @@ void intel_guc_dump_time_info(struct intel_guc *guc, struct drm_printer *p);
>   
>   int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc);
>   
> +void wake_up_all_tlb_invalidate(struct intel_guc *guc);
>   #endif
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 3478fa73180ab..2f194cadbe553 100644
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
> @@ -1803,13 +1804,20 @@ static void wake_up_tlb_invalidate(struct intel_guc_tlb_wait *wait)
>   	wake_up(&wait->wq);
>   }
>   
> -void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
> +void wake_up_all_tlb_invalidate(struct intel_guc *guc)
>   {
>   	struct intel_guc_tlb_wait *wait;
> +	unsigned long i;
> +
> +	xa_for_each(&guc->tlb_lookup, i, wait)
> +		wake_up_tlb_invalidate(wait);
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
> @@ -1840,8 +1848,7 @@ void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stall
>   	 * The full GT reset will have cleared the TLB caches and flushed the
>   	 * G2H message queue; we can release all the blocked waiters.
>   	 */
> -	xa_for_each(&guc->tlb_lookup, i, wait)
> -		wake_up_tlb_invalidate(wait);
> +	wake_up_all_tlb_invalidate(guc);
>   }
>   
>   static void guc_cancel_context_requests(struct intel_context *ce)
> @@ -1937,6 +1944,12 @@ void intel_guc_submission_cancel_requests(struct intel_guc *guc)
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
> @@ -4748,6 +4761,14 @@ static long must_wait_woken(struct wait_queue_entry *wq_entry, long timeout)
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

Name still sucks but at least it is now hidden, okay.

> +
>   static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 type)
>   {
>   	struct intel_guc_tlb_wait _wq, *wq = &_wq;
> @@ -4765,7 +4786,8 @@ static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 type)
>   	};
>   	u32 size = ARRAY_SIZE(action);
>   
> -	if (!intel_guc_ct_enabled(&guc->ct))
> +	if (!intel_guc_ct_enabled(&guc->ct) ||
> +	    !intel_gt_is_enabled(gt))
>   		return -EINVAL;
>   
>   	init_waitqueue_head(&_wq.wq);
> @@ -4807,7 +4829,8 @@ static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 type)
>   	 * queued in CT buffer.
>   	 */
>   #define OUTSTANDING_GUC_TIMEOUT_PERIOD  (HZ * 2)
> -	if (!must_wait_woken(&wait, OUTSTANDING_GUC_TIMEOUT_PERIOD)) {
> +	if (!must_wait_woken(&wait, OUTSTANDING_GUC_TIMEOUT_PERIOD) &&
> +	    intel_gt_is_enabled(gt)) {

Order of conditions is okay? Makes sense to first wait and only then 
check if "gt is enabled"?

>   		gt_err(gt,
>   		       "TLB invalidation response timed out for seqno %u\n", seqno);
>   		err = -ETIME;
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 78501a83ba109..f5175103ea900 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -72,6 +72,7 @@
>   #include "gt/intel_gt.h"
>   #include "gt/intel_gt_pm.h"
>   #include "gt/intel_rc6.h"
> +#include "gt/uc/intel_guc.h"
>   
>   #include "pxp/intel_pxp.h"
>   #include "pxp/intel_pxp_debugfs.h"
> @@ -1092,6 +1093,9 @@ static int i915_drm_suspend(struct drm_device *dev)
>   	intel_dp_mst_suspend(dev_priv);
>   
>   	intel_runtime_pm_disable_interrupts(dev_priv);
> +
> +	wake_up_all_tlb_invalidate(&to_gt(dev_priv)->uc.guc);
> +
>   	intel_hpd_cancel_work(dev_priv);
>   
>   	intel_suspend_encoders(dev_priv);
> @@ -1263,6 +1267,11 @@ static int i915_drm_resume(struct drm_device *dev)
>   
>   	intel_gvt_resume(dev_priv);
>   
> +	if (INTEL_GUC_SUPPORTS_TLB_INVALIDATION(&to_gt(dev_priv)->uc.guc)) {
> +		intel_guc_invalidate_tlb_full(&to_gt(dev_priv)->uc.guc);
> +		intel_guc_invalidate_tlb(&to_gt(dev_priv)->uc.guc);
> +	}
> +
>   	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>   
>   	return 0;

Suspend resume bits feel like should be moved into 
intel_gt_susped|resume_* in order to have proper component organisation.

If that works, it is likely those already have for_each_gt loops so 3/4 
perhaps could be redundant too.

Regards,

Tvrtko
