Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 247BC6AC190
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 14:40:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2DBE10E066;
	Mon,  6 Mar 2023 13:40:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E26B10E066
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 13:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678110022; x=1709646022;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=qn1WP8wHLCtvFRvl2YpBWLPyeITfCZ7TQRuv0Hilljw=;
 b=BGY97Fw0JS9Ya6xH7KA6cN9YwUwvfU7isjxEKdDB70NRRgXAJFEbAaA/
 wJ/8tjRop/ZNdLCHmYZGBXwRdMT8kEX3New630hemukKi8irH1g99Hkyi
 IIgwGJ0HUob7oGeY7fpahJqSs7VqWqtVie1axOs4Jp9slUoUo94a6vOH0
 qjxSJsR6oXNUL8U9/I+3OCFKG6AWljsk3MFmmpTWkkHGh2h/fKMfjel08
 wFrNyuBN2BNxvKxf5jkX8/GVa5RMOeHM6tRGlYrCOLv0TxJ1whu3wnCPC
 z1OF4pQkO6cQ/OCdDIHGBkFtTr7TMyhhJqAOmNg5bXA67W0YpIKsyt11R Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="315948647"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="315948647"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 05:40:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="678480269"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="678480269"
Received: from bholthau-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.58.77])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 05:40:20 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230306080401.22552-1-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230306080401.22552-1-stanislav.lisovskiy@intel.com>
Date: Mon, 06 Mar 2023 15:40:18 +0200
Message-ID: <87lekat2v1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Ensure DSC has enough BW and
 stays within HW limits
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 06 Mar 2023, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> We have currently the issue with some BPPs when using DSC.
> According the HW team the reason is that single VDSC engine instance,
> has some BW limitations which have to be accounted, so whenever
> we approach around 90% of the CDCLK, second VDSC engine have to be
> used. Also that always means using 2 slices, however in our current code
> amount of slices is calculated for some reason independently of
> whether we need to enable 2nd VDSC engine or not, thus leading to
> some logical issues, when according to pixel clock needs we need to enable
> 2nd VDSC engine, however as we calculated previously that we can use
> only single slice, we can't do that and fail.
> So we need to fix that, so that amount of VDSC engines enabled should depend
> on amount of slices and amount of slices should also depend on BW requirements.
> Lastly we didn't have BPP limitation for ADLP/MTL/DG2 implemented which says
> that DSC output BPP's can only be chosen within range of 8 to 27(BSpec 49259).
> This all applied together allows to fix existing FIFO underruns, which we
> have in many DSC tests.
>
> BSpec: 49259
> HSDES: 18027167222
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++----------
>  1 file changed, 11 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index aee93b0d810e..e3680ae95b83 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -687,6 +687,12 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
>  	/* From XE_LPD onwards we support from bpc upto uncompressed bpp-1 BPPs */
>  	if (DISPLAY_VER(i915) >= 13) {
>  		bits_per_pixel = min(bits_per_pixel, pipe_bpp - 1);
> +
> +		/* According to BSpec, 27 is the max DSC output bpp */
> +		bits_per_pixel = min(bits_per_pixel, (u32)27);
> +
> +		/* According to BSpec, 8 is the min DSC output bpp */
> +		bits_per_pixel = max(bits_per_pixel, (u32)8);

Please use clamp() or clamp_t() for ranges. Avoid casting the
params. The _t variants are for handling that.

>  	} else {
>  		/* Find the nearest match in the array of known BPPs from VESA */
>  		for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp) - 1; i++) {
> @@ -771,6 +777,9 @@ u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
>  		min_slice_count = DIV_ROUND_UP(mode_clock,
>  					       DP_DSC_MAX_ENC_THROUGHPUT_1);
>  
> +	if (mode_clock >= ((i915->display.cdclk.max_cdclk_freq * 85) / 100))
> +		min_slice_count = max(min_slice_count, (u8)2);
> +
>  	max_slice_width = drm_dp_dsc_sink_max_slice_width(intel_dp->dsc_dpcd);
>  	if (max_slice_width < DP_DSC_MIN_SLICE_WIDTH_VALUE) {
>  		drm_dbg_kms(&i915->drm,
> @@ -1597,16 +1606,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  	 * is greater than the maximum Cdclock and if slice count is even
>  	 * then we need to use 2 VDSC instances.
>  	 */
> -	if (adjusted_mode->crtc_clock > dev_priv->display.cdclk.max_cdclk_freq ||
> -	    pipe_config->bigjoiner_pipes) {
> -		if (pipe_config->dsc.slice_count > 1) {
> -			pipe_config->dsc.dsc_split = true;
> -		} else {
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "Cannot split stream to use 2 VDSC instances\n");
> -			return -EINVAL;
> -		}
> -	}
> +	if (pipe_config->bigjoiner_pipes || pipe_config->dsc.slice_count > 1)
> +		pipe_config->dsc.dsc_split = true;
>  
>  	ret = intel_dp_dsc_compute_params(&dig_port->base, pipe_config);
>  	if (ret < 0) {

-- 
Jani Nikula, Intel Open Source Graphics Center
