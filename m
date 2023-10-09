Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C74537BD5FF
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 11:00:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4286C10E23D;
	Mon,  9 Oct 2023 09:00:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1707810E250
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 09:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696842036; x=1728378036;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=NJ37C0LEDSFMrY90EWPfyMetITFAMLPkoGg1v56Skno=;
 b=HYOmWLmJn1cntovKNlIvXnxb6RupCDDNQ3nmfRpzlMfUnULRL1vy9Ku1
 JbrpSGuIN/LGOiIa0JIb+zwf3VqPr9GjwvmJLxbWL7O/AfJEpPfYvrV5A
 Q0hEqWtE7Micq2INWoFeEyS5WsjojyGw4HuQ3GlkWXORd9ZV5j38Wl5L5
 jEs8jc/HYwRApVDpYgQJWaXBbgZIN7KR7qIImRZX9wKWp5uJsCSxMJ0zN
 x8UWpugvGdfAdp0/ZIQ7YBshZN1OyRp0lp5npuam93ko6s1taRl91h1nO
 +o3BVAOLl+5EPh8m1rkxo7CuQIJDhRHKkOq7HOH6q4CH+evAUfXb3GS5p Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="374428257"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="374428257"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 02:00:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="869166575"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="869166575"
Received: from mquirke-mobl.ger.corp.intel.com (HELO [10.213.207.90])
 ([10.213.207.90])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 02:00:32 -0700
Message-ID: <53ab60cd-2517-356b-3c1f-db2f127f07fb@linux.intel.com>
Date: Mon, 9 Oct 2023 10:00:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231006182051.1599923-1-jonathan.cavitt@intel.com>
 <20231006182051.1599923-5-jonathan.cavitt@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20231006182051.1599923-5-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v8 4/7] drm/i915: No TLB invalidation on
 suspended GT
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


On 06/10/2023 19:20, Jonathan Cavitt wrote:
> In case of GT is suspended, don't allow submission of new TLB invalidation
> request and cancel all pending requests. The TLB entries will be
> invalidated either during GuC reload or on system resume.
> 
> Signed-off-by: Fei Yang <fei.yang@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> CC: John Harrison <john.c.harrison@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt.h            |  1 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  1 +
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 23 +++++++++++++++----
>   drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  8 +++++++
>   drivers/gpu/drm/i915/i915_driver.c            |  2 ++
>   5 files changed, 31 insertions(+), 4 deletions(-)
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

Zap this.

>   #endif /* __INTEL_GT_H__ */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 88deb43bbdc48..add74000e621e 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -536,4 +536,5 @@ void intel_guc_dump_time_info(struct intel_guc *guc, struct drm_printer *p);
>   
>   int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc);
>   
> +void wake_up_all_tlb_invalidate(struct intel_guc *guc);
>   #endif
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 0c5ccda1b3e87..4ed6e9e759007 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1796,13 +1796,23 @@ static void __guc_reset_context(struct intel_context *ce, intel_engine_mask_t st
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

Drop the curlies?

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
> @@ -1838,8 +1848,7 @@ void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stall
>   	 * invalidations on GT reset, and there's a large window of time
>   	 * between the GT reset and GuC becoming available.
>   	 */
> -	xa_for_each(&guc->tlb_lookup, i, wait)
> -		wake_up(&wait->wq);
> +	wake_up_all_tlb_invalidate(guc);
>   }
>   
>   static void guc_cancel_context_requests(struct intel_context *ce)
> @@ -1935,6 +1944,12 @@ void intel_guc_submission_cancel_requests(struct intel_guc *guc)
>   
>   	/* GuC is blown away, drop all references to contexts */
>   	xa_destroy(&guc->context_lookup);
> +
> +	/*
> +	 * Wedged GT won't respond to any TLB invalidation request. Simply
> +	 * release all the blocked waiters.
> +	 */
> +	wake_up_all_tlb_invalidate(guc);

This goes to the following patch I think.

>   }
>   
>   void intel_guc_submission_reset_finish(struct intel_guc *guc)
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index 98b103375b7ab..8d6a4d8ce61bb 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -688,6 +688,9 @@ void intel_uc_suspend(struct intel_uc *uc)
>   	/* flush the GSC worker */
>   	intel_gsc_uc_flush_work(&uc->gsc);
>   
> +	if (HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
> +		wake_up_all_tlb_invalidate(guc);
> +
>   	if (!intel_guc_is_ready(guc)) {
>   		guc->interrupts.enabled = false;
>   		return;
> @@ -736,6 +739,11 @@ static int __uc_resume(struct intel_uc *uc, bool enable_communication)
>   
>   	intel_gsc_uc_resume(&uc->gsc);
>   
> +	if (HAS_GUC_TLB_INVALIDATION(gt->i915)) {
> +		intel_guc_invalidate_tlb_engines(guc);
> +		intel_guc_invalidate_tlb_guc(guc);
> +	}
> +
>   	return 0;
>   }
>   
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index ccbb2834cde07..85ac9400c2dc7 100644
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
> @@ -1093,6 +1094,7 @@ static int i915_drm_suspend(struct drm_device *dev)
>   	intel_dp_mst_suspend(dev_priv);
>   
>   	intel_runtime_pm_disable_interrupts(dev_priv);
> +

Zap this too please.

>   	intel_hpd_cancel_work(dev_priv);
>   
>   	intel_suspend_encoders(dev_priv);

Patch got smaller and will be smaller still which is neat! If it is 
still functionally correct it is a win-win.

Regards,

Tvrtko
