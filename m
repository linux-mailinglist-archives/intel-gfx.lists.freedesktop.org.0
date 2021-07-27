Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2873D7A07
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 17:41:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EAF76E93B;
	Tue, 27 Jul 2021 15:41:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C6026E9B6;
 Tue, 27 Jul 2021 15:41:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="273548211"
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; d="scan'208";a="273548211"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 08:40:16 -0700
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; d="scan'208";a="505935919"
Received: from dut151-iclu.fm.intel.com ([10.105.23.43])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 08:40:16 -0700
Date: Tue, 27 Jul 2021 15:40:14 +0000
From: Matthew Brost <matthew.brost@intel.com>
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Message-ID: <20210727154014.GA47916@DUT151-ICLU.fm.intel.com>
References: <20210726190800.26762-1-vinay.belgaumkar@intel.com>
 <20210726190800.26762-12-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210726190800.26762-12-vinay.belgaumkar@intel.com>
Subject: Re: [Intel-gfx] [PATCH 11/15] drm/i915/guc/slpc: Enable ARAT timer
 interrupt
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

On Mon, Jul 26, 2021 at 12:07:56PM -0700, Vinay Belgaumkar wrote:
> This interrupt is enabled during RPS initialization, and
> now needs to be done by SLPC code. It allows ARAT timer
> expiry interrupts to get forwarded to GuC.
> 
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 16 ++++++++++++++++
>  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h |  2 ++
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c       |  8 ++++++++
>  3 files changed, 26 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> index 995d3d4807a3..c79dba60b2e6 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> @@ -392,6 +392,20 @@ int intel_guc_slpc_get_min_freq(struct intel_guc_slpc *slpc, u32 *val)
>  	return ret;
>  }
>  
> +void intel_guc_pm_intrmsk_enable(struct intel_gt *gt)
> +{
> +	u32 pm_intrmsk_mbz = 0;
> +
> +	/* Allow GuC to receive ARAT timer expiry event.

I've been berated for using comments like this this by other engineers.
I personally don't care at all (nor does checkpatch) but if you want to
avoid the wrath of others I'd change this to what I have below:

/*
 * Allow GuC to receive ARAT timer expiry event.
 * This interrupt register is setup by RPS code
 * when host based Turbo is enabled.
 */

Same goes for comment below of same style.

Either way, patch looks good to me. With that:
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> +	 * This interrupt register is setup by RPS code
> +	 * when host based Turbo is enabled.
> +	 */
> +	pm_intrmsk_mbz |= ARAT_EXPIRED_INTRMSK;
> +
> +	intel_uncore_rmw(gt->uncore,
> +			   GEN6_PMINTRMSK, pm_intrmsk_mbz, 0);
> +}
> +
>  /*
>   * intel_guc_slpc_enable() - Start SLPC
>   * @slpc: pointer to intel_guc_slpc.
> @@ -439,6 +453,8 @@ int intel_guc_slpc_enable(struct intel_guc_slpc *slpc)
>  
>  	slpc_query_task_state(slpc);
>  
> +	intel_guc_pm_intrmsk_enable(&i915->gt);
> +
>  	/* min and max frequency limits being used by SLPC */
>  	drm_info(&i915->drm, "SLPC min freq: %u Mhz, max is %u Mhz\n",
>  			slpc_decode_min_freq(slpc),
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
> index d133c8020c16..f128143cc1d8 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
> @@ -9,6 +9,7 @@
>  #include "intel_guc_submission.h"
>  #include "intel_guc_slpc_types.h"
>  
> +struct intel_gt;
>  struct drm_printer;
>  
>  static inline bool intel_guc_slpc_is_supported(struct intel_guc *guc)
> @@ -35,5 +36,6 @@ int intel_guc_slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 val);
>  int intel_guc_slpc_get_max_freq(struct intel_guc_slpc *slpc, u32 *val);
>  int intel_guc_slpc_get_min_freq(struct intel_guc_slpc *slpc, u32 *val);
>  int intel_guc_slpc_info(struct intel_guc_slpc *slpc, struct drm_printer *p);
> +void intel_guc_pm_intrmsk_enable(struct intel_gt *gt);
>  
>  #endif
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index b98c14f8c229..9238bc076605 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -652,6 +652,7 @@ void intel_uc_suspend(struct intel_uc *uc)
>  static int __uc_resume(struct intel_uc *uc, bool enable_communication)
>  {
>  	struct intel_guc *guc = &uc->guc;
> +	struct intel_gt *gt = guc_to_gt(guc);
>  	int err;
>  
>  	if (!intel_guc_is_fw_running(guc))
> @@ -663,6 +664,13 @@ static int __uc_resume(struct intel_uc *uc, bool enable_communication)
>  	if (enable_communication)
>  		guc_enable_communication(guc);
>  
> +	/* If we are only resuming GuC communication but not reloading
> +	 * GuC, we need to ensure the ARAT timer interrupt is enabled
> +	 * again. In case of GuC reload, it is enabled during SLPC enable.
> +	 */
> +	if (enable_communication && intel_uc_uses_guc_slpc(uc))
> +		intel_guc_pm_intrmsk_enable(gt);
> +
>  	err = intel_guc_resume(guc);
>  	if (err) {
>  		DRM_DEBUG_DRIVER("Failed to resume GuC, err=%d", err);
> -- 
> 2.25.0
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
