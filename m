Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E865AAF764
	for <lists+intel-gfx@lfdr.de>; Thu,  8 May 2025 12:05:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11E8C10E8D8;
	Thu,  8 May 2025 10:05:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OVCSfzgr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92B6510E8CF;
 Thu,  8 May 2025 10:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746698719; x=1778234719;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=tFgvByz+xU5U3lqzoUvM2I4uhEqmL2qtlCAnW+XZ+pk=;
 b=OVCSfzgr4OSoZJ3qQuyEtCiWdbqvCLIsYaMMf0wLcpYjM38DezDe9v+v
 6o/j42dI6ZxY/+gffy1lKAbfPY0F1UOf2G4sp/hVPCMZw1IETRxRKCr0R
 7Mm/BCFi8+kjhZXJAbwSKs0fh58twjcXB8+iAmtqStHNs8q6Dk78aRSiY
 +7GuXBPb+hgN1I5aCC6uuhh1+A7joDnPNm96MeVN0Kf5WlrG0Pa3LEoxy
 QoFrHDF2ESRaSQ/IxBSSBca76YUAf+4c6NQBfBdNiLcjd+Tj5ZOhNXmql
 zo88TsEuXwaovAoDNJX9sB4bmHf/LK9QZ9DT9HhKdCddEx5KCktys71A0 Q==;
X-CSE-ConnectionGUID: yAHAYTHOT/CPWieESwVBtg==
X-CSE-MsgGUID: b3PZm9LjTbOz36PudmFjpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="66003372"
X-IronPort-AV: E=Sophos;i="6.15,271,1739865600"; d="scan'208";a="66003372"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 03:05:18 -0700
X-CSE-ConnectionGUID: We4O2kTHT8aA7hqwMrlnLQ==
X-CSE-MsgGUID: fZFDEPXFQMmlVMazTZ43CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,271,1739865600"; d="scan'208";a="136258198"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.176])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 03:05:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: Re: [PATCH 4/6] drm/i915: switch i915 core to generic VLV IOSF SB
 functions
In-Reply-To: <2e1ad1788ed0e7fc947a5d5f506218d0d97172bb.1745587049.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1745587049.git.jani.nikula@intel.com>
 <2e1ad1788ed0e7fc947a5d5f506218d0d97172bb.1745587049.git.jani.nikula@intel.com>
Date: Thu, 08 May 2025 13:05:14 +0300
Message-ID: <87zffnto2t.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 25 Apr 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> We'll want to relocate the unit specific functions to display, making
> them inaccessible to i915 core. As there aren't that many users in i915
> core, we can just convert them to the generic VLV IOSF SB read/write
> functions.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |  6 +--
>  drivers/gpu/drm/i915/gt/intel_rps.c           | 46 +++++++++----------
>  drivers/gpu/drm/i915/soc/intel_dram.c         |  4 +-
>  3 files changed, 28 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> index 0704fe763afe..288b12a02b76 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> @@ -366,9 +366,9 @@ void intel_gt_pm_frequency_dump(struct intel_gt *gt, struct drm_printer *p)
>  		drm_printf(p, "SW control enabled: %s\n",
>  			   str_yes_no((rpmodectl & GEN6_RP_MEDIA_MODE_MASK) == GEN6_RP_MEDIA_SW_MODE));
>  
> -		vlv_punit_get(i915);
> -		freq_sts = vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
> -		vlv_punit_put(i915);
> +		vlv_iosf_sb_get(i915, VLV_IOSF_SB_PUNIT);

All of the gets and puts need BIT(unit) instead of just unit as
parameter. *facepalm*.

Fixed in v2 [1].

BR,
Jani.


[1] https://lore.kernel.org/r/cover.1746698410.git.jani.nikula@intel.com

> +		freq_sts = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_STS);
> +		vlv_iosf_sb_put(i915, VLV_IOSF_SB_PUNIT);
>  
>  		drm_printf(p, "PUNIT_REG_GPU_FREQ_STS: 0x%08x\n", freq_sts);
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 4f58b08ca318..e48c5bd805f1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -824,9 +824,9 @@ static int vlv_rps_set(struct intel_rps *rps, u8 val)
>  	struct drm_i915_private *i915 = rps_to_i915(rps);
>  	int err;
>  
> -	vlv_punit_get(i915);
> -	err = vlv_punit_write(i915, PUNIT_REG_GPU_FREQ_REQ, val);
> -	vlv_punit_put(i915);
> +	vlv_iosf_sb_get(i915, VLV_IOSF_SB_PUNIT);
> +	err = vlv_iosf_sb_write(i915, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_REQ, val);
> +	vlv_iosf_sb_put(i915, VLV_IOSF_SB_PUNIT);
>  
>  	GT_TRACE(rps_to_gt(rps), "set val:%x, freq:%d\n",
>  		 val, intel_gpu_freq(rps, val));
> @@ -1276,7 +1276,7 @@ static int chv_rps_max_freq(struct intel_rps *rps)
>  	struct intel_gt *gt = rps_to_gt(rps);
>  	u32 val;
>  
> -	val = vlv_punit_read(i915, FB_GFX_FMAX_AT_VMAX_FUSE);
> +	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, FB_GFX_FMAX_AT_VMAX_FUSE);
>  
>  	switch (gt->info.sseu.eu_total) {
>  	case 8:
> @@ -1303,7 +1303,7 @@ static int chv_rps_rpe_freq(struct intel_rps *rps)
>  	struct drm_i915_private *i915 = rps_to_i915(rps);
>  	u32 val;
>  
> -	val = vlv_punit_read(i915, PUNIT_GPU_DUTYCYCLE_REG);
> +	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, PUNIT_GPU_DUTYCYCLE_REG);
>  	val >>= PUNIT_GPU_DUTYCYCLE_RPE_FREQ_SHIFT;
>  
>  	return val & PUNIT_GPU_DUTYCYCLE_RPE_FREQ_MASK;
> @@ -1314,7 +1314,7 @@ static int chv_rps_guar_freq(struct intel_rps *rps)
>  	struct drm_i915_private *i915 = rps_to_i915(rps);
>  	u32 val;
>  
> -	val = vlv_punit_read(i915, FB_GFX_FMAX_AT_VMAX_FUSE);
> +	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, FB_GFX_FMAX_AT_VMAX_FUSE);
>  
>  	return val & FB_GFX_FREQ_FUSE_MASK;
>  }
> @@ -1324,7 +1324,7 @@ static u32 chv_rps_min_freq(struct intel_rps *rps)
>  	struct drm_i915_private *i915 = rps_to_i915(rps);
>  	u32 val;
>  
> -	val = vlv_punit_read(i915, FB_GFX_FMIN_AT_VMIN_FUSE);
> +	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, FB_GFX_FMIN_AT_VMIN_FUSE);
>  	val >>= FB_GFX_FMIN_AT_VMIN_FUSE_SHIFT;
>  
>  	return val & FB_GFX_FREQ_FUSE_MASK;
> @@ -1358,14 +1358,14 @@ static bool chv_rps_enable(struct intel_rps *rps)
>  			  GEN6_PM_RP_DOWN_TIMEOUT);
>  
>  	/* Setting Fixed Bias */
> -	vlv_punit_get(i915);
> +	vlv_iosf_sb_get(i915, VLV_IOSF_SB_PUNIT);
>  
>  	val = VLV_OVERRIDE_EN | VLV_SOC_TDP_EN | CHV_BIAS_CPU_50_SOC_50;
> -	vlv_punit_write(i915, VLV_TURBO_SOC_OVERRIDE, val);
> +	vlv_iosf_sb_write(i915, VLV_IOSF_SB_PUNIT, VLV_TURBO_SOC_OVERRIDE, val);
>  
> -	val = vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
> +	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_STS);
>  
> -	vlv_punit_put(i915);
> +	vlv_iosf_sb_put(i915, VLV_IOSF_SB_PUNIT);
>  
>  	/* RPS code assumes GPLL is used */
>  	drm_WARN_ONCE(&i915->drm, (val & GPLLENABLE) == 0,
> @@ -1383,7 +1383,7 @@ static int vlv_rps_guar_freq(struct intel_rps *rps)
>  	struct drm_i915_private *i915 = rps_to_i915(rps);
>  	u32 val, rp1;
>  
> -	val = vlv_nc_read(i915, IOSF_NC_FB_GFX_FREQ_FUSE);
> +	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_NC, IOSF_NC_FB_GFX_FREQ_FUSE);
>  
>  	rp1 = val & FB_GFX_FGUARANTEED_FREQ_FUSE_MASK;
>  	rp1 >>= FB_GFX_FGUARANTEED_FREQ_FUSE_SHIFT;
> @@ -1396,7 +1396,7 @@ static int vlv_rps_max_freq(struct intel_rps *rps)
>  	struct drm_i915_private *i915 = rps_to_i915(rps);
>  	u32 val, rp0;
>  
> -	val = vlv_nc_read(i915, IOSF_NC_FB_GFX_FREQ_FUSE);
> +	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_NC, IOSF_NC_FB_GFX_FREQ_FUSE);
>  
>  	rp0 = (val & FB_GFX_MAX_FREQ_FUSE_MASK) >> FB_GFX_MAX_FREQ_FUSE_SHIFT;
>  	/* Clamp to max */
> @@ -1410,9 +1410,9 @@ static int vlv_rps_rpe_freq(struct intel_rps *rps)
>  	struct drm_i915_private *i915 = rps_to_i915(rps);
>  	u32 val, rpe;
>  
> -	val = vlv_nc_read(i915, IOSF_NC_FB_GFX_FMAX_FUSE_LO);
> +	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_NC, IOSF_NC_FB_GFX_FMAX_FUSE_LO);
>  	rpe = (val & FB_FMAX_VMIN_FREQ_LO_MASK) >> FB_FMAX_VMIN_FREQ_LO_SHIFT;
> -	val = vlv_nc_read(i915, IOSF_NC_FB_GFX_FMAX_FUSE_HI);
> +	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_NC, IOSF_NC_FB_GFX_FMAX_FUSE_HI);
>  	rpe |= (val & FB_FMAX_VMIN_FREQ_HI_MASK) << 5;
>  
>  	return rpe;
> @@ -1423,7 +1423,7 @@ static int vlv_rps_min_freq(struct intel_rps *rps)
>  	struct drm_i915_private *i915 = rps_to_i915(rps);
>  	u32 val;
>  
> -	val = vlv_punit_read(i915, PUNIT_REG_GPU_LFM) & 0xff;
> +	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_LFM) & 0xff;
>  	/*
>  	 * According to the BYT Punit GPU turbo HAS 1.1.6.3 the minimum value
>  	 * for the minimum frequency in GPLL mode is 0xc1. Contrary to this on
> @@ -1459,15 +1459,15 @@ static bool vlv_rps_enable(struct intel_rps *rps)
>  	/* WaGsvRC0ResidencyMethod:vlv */
>  	rps->pm_events = GEN6_PM_RP_UP_EI_EXPIRED;
>  
> -	vlv_punit_get(i915);
> +	vlv_iosf_sb_get(i915, VLV_IOSF_SB_PUNIT);
>  
>  	/* Setting Fixed Bias */
>  	val = VLV_OVERRIDE_EN | VLV_SOC_TDP_EN | VLV_BIAS_CPU_125_SOC_875;
> -	vlv_punit_write(i915, VLV_TURBO_SOC_OVERRIDE, val);
> +	vlv_iosf_sb_write(i915, VLV_IOSF_SB_PUNIT, VLV_TURBO_SOC_OVERRIDE, val);
>  
> -	val = vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
> +	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_STS);
>  
> -	vlv_punit_put(i915);
> +	vlv_iosf_sb_put(i915, VLV_IOSF_SB_PUNIT);
>  
>  	/* RPS code assumes GPLL is used */
>  	drm_WARN_ONCE(&i915->drm, (val & GPLLENABLE) == 0,
> @@ -2115,9 +2115,9 @@ static u32 __read_cagf(struct intel_rps *rps, bool take_fw)
>  	} else if (GRAPHICS_VER(i915) >= 12) {
>  		r = GEN12_RPSTAT1;
>  	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
> -		vlv_punit_get(i915);
> -		freq = vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
> -		vlv_punit_put(i915);
> +		vlv_iosf_sb_get(i915, VLV_IOSF_SB_PUNIT);
> +		freq = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_STS);
> +		vlv_iosf_sb_put(i915, VLV_IOSF_SB_PUNIT);
>  	} else if (GRAPHICS_VER(i915) >= 6) {
>  		r = GEN6_RPSTAT1;
>  	} else {
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index 0b92ab4e9fb9..e8d6bd116b44 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -98,7 +98,7 @@ static unsigned int chv_mem_freq(struct drm_i915_private *i915)
>  	u32 val;
>  
>  	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_CCK));
> -	val = vlv_cck_read(i915, CCK_FUSE_REG);
> +	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_CCK, CCK_FUSE_REG);
>  	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_CCK));
>  
>  	switch ((val >> 2) & 0x7) {
> @@ -114,7 +114,7 @@ static unsigned int vlv_mem_freq(struct drm_i915_private *i915)
>  	u32 val;
>  
>  	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_PUNIT));
> -	val = vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
> +	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_STS);
>  	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_PUNIT));
>  
>  	switch ((val >> 6) & 3) {

-- 
Jani Nikula, Intel
