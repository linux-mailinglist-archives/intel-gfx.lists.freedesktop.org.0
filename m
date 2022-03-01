Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A31304C9887
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 23:54:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB1A610E721;
	Tue,  1 Mar 2022 22:54:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7784310E71F;
 Tue,  1 Mar 2022 22:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646175287; x=1677711287;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=i0+qassigaVf5zS6NHcZCgamz8Xe+hiFxZckMITj0gw=;
 b=d5+QZFBmz9bFHTIYPNaDo9QHuQe/CYSCPqrgMROBANrnzbTfKtCyMi/n
 668bEOPyJsPOfONwAFn0yY+2B/ng5bnzgjoupqa7OsRHdWrl/HzfRJQy5
 A+LCBL7JbDkcCK/X02WLkaAfhX2rZaok4wXjgziVprZlb1U/4hQmU3FlQ
 zk4wm8X+225ph42M9eE4v0y42yjR6P9YhOwknGRHe8st4m0MeBfqE3zJp
 RxlpCkIDSisYu2cX+sv/s+VhvSXFrFsVgzXu3vV5tLST0btu59qWG/eZD
 44U6lwKurMVA//p/aHm2b0ho3+D2x15eLlWddNwVkzkKe0t2pgL7oYbdl A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="313979531"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="313979531"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 14:54:46 -0800
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="550949718"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 14:54:46 -0800
Date: Tue, 1 Mar 2022 14:54:44 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yh6kNJtQpqt0SArs@mdroper-desk1.amr.corp.intel.com>
References: <20220228174245.1569581-1-matthew.d.roper@intel.com>
 <20220228174245.1569581-12-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220228174245.1569581-12-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 11/13] drm/i915/xehp: handle fused off
 CCS engines
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 28, 2022 at 09:42:43AM -0800, Matt Roper wrote:
> From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> 
> HW resources are divided across the active CCS engines at the compute
> slice level, with each CCS having priority on one of the cslices.
> If a compute slice has no enabled DSS, its paired compute engine is not
> usable in full parallel execution because the other ones already fully
> saturate the HW, so consider it fused off.
> 
> v2(Jos�):
> - moved it to its own function
> - fixed definition of ccs_mask
> 
> Cc: Stuart Summers <stuart.summers@intel.com>
> Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Signed-off-by: Stuart Summers <stuart.summers@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 25 +++++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_sseu.c      | 17 ++++++++++++---
>  drivers/gpu/drm/i915/gt/intel_sseu.h      |  4 +++-
>  3 files changed, 42 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 92f4cf9833ee..4fa3adc15b08 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -592,6 +592,29 @@ bool gen11_vdbox_has_sfc(struct intel_gt *gt,
>  	return false;
>  }
>  
> +static void engine_mask_apply_compute_fuses(struct intel_gt *gt)
> +{
> +	struct drm_i915_private *i915 = gt->i915;
> +	struct intel_gt_info *info = &gt->info;
> +	unsigned int i;
> +
> +	/*
> +	 * If all DSS in a quadrant are fused off, the corresponding CCS
> +	 * engine is not available for use.
> +	 */
> +	if (fls(CCS_MASK(gt)) > 1) {

I think it might make more sense to do a

        if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 50))
                return;

at the top of this function and then omit the fls() condition here.
Xe_HP platforms that have compute engines will all have four CCS engines
listed in the device info structure, and then the logic below will take
care of adjusting that based on fusing; I'll include that change when I
resend the series.


Matt

> +		int ss_per_ccs = info->sseu.max_subslices / I915_MAX_CCS;
> +		const unsigned long ccs_mask = intel_slicemask_from_dssmask(
> +			intel_sseu_get_compute_subslices(&info->sseu),
> +			ss_per_ccs);
> +
> +		for_each_clear_bit(i, &ccs_mask, I915_MAX_CCS) {
> +			info->engine_mask &= ~BIT(_CCS(i));
> +			drm_dbg(&i915->drm, "ccs%u fused off\n", i);
> +		}
> +	}
> +}
> +
>  /*
>   * Determine which engines are fused off in our particular hardware.
>   * Note that we have a catch-22 situation where we need to be able to access
> @@ -673,6 +696,8 @@ static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)
>  		vebox_mask, VEBOX_MASK(gt));
>  	GEM_BUG_ON(vebox_mask != VEBOX_MASK(gt));
>  
> +	engine_mask_apply_compute_fuses(gt);
> +
>  	return info->engine_mask;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
> index 29118c652811..4ac0bbaf0c31 100644
> --- a/drivers/gpu/drm/i915/gt/intel_sseu.c
> +++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
> @@ -32,7 +32,9 @@ intel_sseu_subslice_total(const struct sseu_dev_info *sseu)
>  	return total;
>  }
>  
> -u32 intel_sseu_get_subslices(const struct sseu_dev_info *sseu, u8 slice)
> +static u32
> +_intel_sseu_get_subslices(const struct sseu_dev_info *sseu,
> +			  const u8 *subslice_mask, u8 slice)
>  {
>  	int i, offset = slice * sseu->ss_stride;
>  	u32 mask = 0;
> @@ -40,12 +42,21 @@ u32 intel_sseu_get_subslices(const struct sseu_dev_info *sseu, u8 slice)
>  	GEM_BUG_ON(slice >= sseu->max_slices);
>  
>  	for (i = 0; i < sseu->ss_stride; i++)
> -		mask |= (u32)sseu->subslice_mask[offset + i] <<
> -			i * BITS_PER_BYTE;
> +		mask |= (u32)subslice_mask[offset + i] << i * BITS_PER_BYTE;
>  
>  	return mask;
>  }
>  
> +u32 intel_sseu_get_subslices(const struct sseu_dev_info *sseu, u8 slice)
> +{
> +	return _intel_sseu_get_subslices(sseu, sseu->subslice_mask, slice);
> +}
> +
> +u32 intel_sseu_get_compute_subslices(const struct sseu_dev_info *sseu)
> +{
> +	return _intel_sseu_get_subslices(sseu, sseu->compute_subslice_mask, 0);
> +}
> +
>  void intel_sseu_set_subslices(struct sseu_dev_info *sseu, int slice,
>  			      u8 *subslice_mask, u32 ss_mask)
>  {
> diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.h b/drivers/gpu/drm/i915/gt/intel_sseu.h
> index 60882a74741e..8a79cd8eaab4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_sseu.h
> +++ b/drivers/gpu/drm/i915/gt/intel_sseu.h
> @@ -103,7 +103,9 @@ intel_sseu_subslice_total(const struct sseu_dev_info *sseu);
>  unsigned int
>  intel_sseu_subslices_per_slice(const struct sseu_dev_info *sseu, u8 slice);
>  
> -u32  intel_sseu_get_subslices(const struct sseu_dev_info *sseu, u8 slice);
> +u32 intel_sseu_get_subslices(const struct sseu_dev_info *sseu, u8 slice);
> +
> +u32 intel_sseu_get_compute_subslices(const struct sseu_dev_info *sseu);
>  
>  void intel_sseu_set_subslices(struct sseu_dev_info *sseu, int slice,
>  			      u8 *subslice_mask, u32 ss_mask);
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
