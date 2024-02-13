Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AACB185398C
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 19:11:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF7C210E888;
	Tue, 13 Feb 2024 18:11:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TXtSBFKO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 911C410E888
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 18:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707847889; x=1739383889;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=R4VkGsBIdZhTZgtch+s/rYfbeYrfYmfQICXPXHbSiuE=;
 b=TXtSBFKOFsZm2FCQdYCG1bhchBfgyjlij9CIEibfKE4CaatbMyVe9dsW
 RDFXt56P1v5UWKbZmFB7MxvHIQXkQ19O1d9DXQInDqiBW3no4f/MZgx09
 iqC+FwnP2B6Q7MmymTKE/Mt0NJ7RSNiDbC7k2J1dkWRjzOFDEi0JEaHoq
 e+GoQK9I1Z5pyfb7CIMtgSETfOx/+40vgzaXquprHjQAnP374ctsjo5pb
 46kzdd8Ezuj4Zzgsh8pBK5O2zubxvAOW9juoZ4yn3/XWQ1RIrSEZUZjqV
 6ELEm7fgYC3q46pFxZx4FcjG5ThlU4mE6nEH3ECPdXCG0SgpvAdErXc5K w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1775160"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="1775160"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 10:11:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="2866459"
Received: from snasibli-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.44.50])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 10:11:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, ville.syrjala@intel.com, uma.shankar@intel.com,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [RFC 1/4] drm/i915/display/dp: Add DP fallback on LT
In-Reply-To: <20240206104759.2079133-2-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240206104759.2079133-1-arun.r.murthy@intel.com>
 <20240206104759.2079133-2-arun.r.murthy@intel.com>
Date: Tue, 13 Feb 2024 20:11:23 +0200
Message-ID: <871q9g8cac.fsf@intel.com>
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

On Tue, 06 Feb 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> Fallback mandates on DP link training failure. This patch just covers
> the DP2.0 fallback sequence.
>
> TODO: Need to implement the DP1.4 fallback.
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 92 ++++++++++++++++++++++---
>  1 file changed, 82 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 10ec231acd98..82d354a6b0cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -104,6 +104,50 @@ static const u8 valid_dsc_bpp[] = {6, 8, 10, 12, 15};
>   */
>  static const u8 valid_dsc_slicecount[] = {1, 2, 4};
>  
> +/* DL Link Rates */
> +#define UHBR20		2000000
> +#define UHBR13P5	1350000
> +#define UHBR10		1000000
> +#define HBR3		810000
> +#define HBR2		540000
> +#define HBR		270000
> +#define RBR		162000
> +
> +/* DP Lane Count */
> +#define LANE_COUNT_4	4
> +#define LANE_COUNT_2	2
> +#define LANE_COUNT_1	1
> +
> +/* DP2.0 fallback values */
> +struct dp_fallback {
> +	u32 link_rate;
> +	u8 lane_count;
> +};
> +
> +struct dp_fallback dp2dot0_fallback[] = {
> +	{UHBR20, LANE_COUNT_4},
> +	{UHBR13P5, LANE_COUNT_4},
> +	{UHBR20, LANE_COUNT_2},
> +	{UHBR10, LANE_COUNT_4},
> +	{UHBR13P5, LANE_COUNT_2},
> +	{HBR3, LANE_COUNT_4},
> +	{UHBR20, LANE_COUNT_1},
> +	{UHBR10, LANE_COUNT_2},
> +	{HBR2, LANE_COUNT_4},
> +	{UHBR13P5, LANE_COUNT_1},
> +	{HBR3, LANE_COUNT_2},
> +	{UHBR10, LANE_COUNT_1},
> +	{HBR2, LANE_COUNT_2},
> +	{HBR, LANE_COUNT_4},
> +	{HBR3, LANE_COUNT_1},
> +	{RBR, LANE_COUNT_4},
> +	{HBR2, LANE_COUNT_1},
> +	{HBR, LANE_COUNT_2},
> +	{RBR, LANE_COUNT_2},
> +	{HBR, LANE_COUNT_1},
> +	{RBR, LANE_COUNT_1},
> +};
> +
>  /**
>   * intel_dp_is_edp - is the given port attached to an eDP panel (either CPU or PCH)
>   * @intel_dp: DP struct
> @@ -299,6 +343,19 @@ static int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
>  				       intel_dp->num_common_rates, max_rate);
>  }
>  
> +static bool intel_dp_link_rate_supported(struct intel_dp *intel_dp, u32 link_rate)
> +{
> +	u8 i;
> +
> +	for (i = 0; i < ARRAY_SIZE(intel_dp->common_rates); i++) {
> +		if (intel_dp->common_rates[i] == link_rate)
> +			return true;
> +		else
> +			continue;
> +	}
> +	return false;
> +}
> +
>  static int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
>  {
>  	if (drm_WARN_ON(&dp_to_i915(intel_dp)->drm,
> @@ -671,15 +728,6 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	int index;
>  
> -	/*
> -	 * TODO: Enable fallback on MST links once MST link compute can handle
> -	 * the fallback params.
> -	 */
> -	if (intel_dp->is_mst) {
> -		drm_err(&i915->drm, "Link Training Unsuccessful\n");
> -		return -1;
> -	}
> -

By removing this, the claim is both 8b/10b and 128b/132b DP MST link
training fallbacks work...

>  	if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
>  		drm_dbg_kms(&i915->drm,
>  			    "Retrying Link training for eDP with max parameters\n");
> @@ -687,6 +735,31 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>  		return 0;
>  	}
>  
> +	/* DP fallback values */
> +	if (intel_dp->dpcd[DP_MAIN_LINK_CHANNEL_CODING] & DP_CAP_ANSI_128B132B) {

...but this only addresses 128b/132b, and the 8b/10b MST drops to the
existing SST fallback path.

And with the current code, DP_CAP_ANSI_128B132B does not decide whether
we use DP MST or not. So this will also cover 8b/10b fallback for
displays that support 128b/132b but have DP_MSTM_CAP == 0.

> +		for(index = 0; index < ARRAY_SIZE(dp2dot0_fallback); index++) {
> +			if (link_rate == dp2dot0_fallback[index].link_rate &&
> +				lane_count == dp2dot0_fallback[index].lane_count) {
> +				for(index += 1; index < ARRAY_SIZE(dp2dot0_fallback); index++) {

I honestly do not understand the double looping here, and how index is
managed.

> +					if (intel_dp_link_rate_supported(intel_dp,
> +							dp2dot0_fallback[index].link_rate)) {
> +						intel_dp_set_link_params(intel_dp,
> +								      dp2dot0_fallback[index].link_rate,
> +								      dp2dot0_fallback[index].lane_count);

intel_dp_set_link_params() is supposed to be called in the DP encoder
(pre-)enable paths to set the link rates. If you do it here, the
subsequent enable will just overwrite whatever you did here.

The mechanism in this function should be to to adjust
intel_dp->max_link_rate and intel_dp->max_link_lane_count, and then the
caller will send an uevent to have the userspace do everything again,
but with reduced max values.

This is all very convoluted. And I admit the existing code is also
complex, but this makes it *much* harder to understand.

BR,
Jani.

> +						drm_dbg_kms(&i915->drm,
> +							    "Retrying Link training with link rate %d and lane count %d\n",
> +							    dp2dot0_fallback[index].link_rate,
> +							    dp2dot0_fallback[index].lane_count);
> +						return 0;
> +					}
> +				}
> +			}
> +		}
> +		/* Report failure and fail link training */
> +		drm_err(&i915->drm, "Link Training Unsuccessful\n");
> +		return -1;
> +	}
> +
>  	index = intel_dp_rate_index(intel_dp->common_rates,
>  				    intel_dp->num_common_rates,
>  				    link_rate);
> @@ -716,7 +789,6 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>  		drm_err(&i915->drm, "Link Training Unsuccessful\n");
>  		return -1;
>  	}
> -
>  	return 0;
>  }

-- 
Jani Nikula, Intel
