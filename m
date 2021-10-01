Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6653B41F817
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Oct 2021 01:12:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BA856E5AB;
	Fri,  1 Oct 2021 23:12:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 525366E5AB
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 23:12:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10124"; a="311161260"
X-IronPort-AV: E=Sophos;i="5.85,340,1624345200"; d="scan'208";a="311161260"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 16:12:25 -0700
X-IronPort-AV: E=Sophos;i="5.85,340,1624345200"; d="scan'208";a="556621289"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 16:12:25 -0700
Date: Fri, 1 Oct 2021 16:12:24 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20211001231224.GH3389343@mdroper-desk1.amr.corp.intel.com>
References: <20211001161626.18954-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211001161626.18954-1-radhakrishna.sripada@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915: Update memory bandwidth
 formulae
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

On Fri, Oct 01, 2021 at 09:16:26AM -0700, Radhakrishna Sripada wrote:
> The formulae has been updated to include more variables. Make
> sure the code carries the same.
> 
> Bspec: 64631

I notice .deburst should be set to 8 rather than 16 on RKL.

> 
> v2: Make GEN11 follow the default route and fix calculation of
>     maxdebw(RK)
> v3: Fix div by zero on default case
>     Correct indent for fallthrough(Jani)
> v4: Fix div by zero on gen11.
> v5: Fix 0 max_numchannels case
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 80 ++++++++++++++++++++-----
>  1 file changed, 65 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 4b94256d7319..a3c0a282aaad 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -27,6 +27,9 @@ struct intel_qgv_info {
>  	u8 num_points;
>  	u8 num_psf_points;
>  	u8 t_bl;
> +	u8 max_numchannels;
> +	u8 channel_width;
> +	u8 deinterleave;
>  };
>  
>  static int dg1_mchbar_read_qgv_point_info(struct drm_i915_private *dev_priv,
> @@ -133,7 +136,8 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
>  }
>  
>  static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
> -			      struct intel_qgv_info *qi)
> +			      struct intel_qgv_info *qi,
> +			      bool is_y_tile)
>  {
>  	const struct dram_info *dram_info = &dev_priv->dram_info;
>  	int i, ret;
> @@ -144,17 +148,41 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
>  	if (DISPLAY_VER(dev_priv) == 12)
>  		switch (dram_info->type) {
>  		case INTEL_DRAM_DDR4:
> -			qi->t_bl = 4;
> +			qi->t_bl = is_y_tile ? 8 : 4;
> +			qi->max_numchannels = 2;
> +			qi->channel_width = 64;
> +			qi->deinterleave = is_y_tile ? 1 : 2;
>  			break;
>  		case INTEL_DRAM_DDR5:
> -			qi->t_bl = 8;
> +			qi->t_bl = is_y_tile ? 16 : 8;
> +			qi->max_numchannels = 4;
> +			qi->channel_width = 32;
> +			qi->deinterleave = is_y_tile ? 1 : 2;
> +			break;
> +		case INTEL_DRAM_LPDDR4:
> +			if (IS_ROCKETLAKE(dev_priv)) {
> +				qi->t_bl = 8;
> +				qi->max_numchannels = 4;
> +				qi->channel_width = 32;
> +				qi->deinterleave = 2;
> +				break;
> +			}
> +			fallthrough;
> +		case INTEL_DRAM_LPDDR5:
> +			qi->t_bl = 16;
> +			qi->max_numchannels = 8;
> +			qi->channel_width = 16;
> +			qi->deinterleave = is_y_tile ? 2 : 4;
>  			break;
>  		default:
>  			qi->t_bl = 16;
> +			qi->max_numchannels = 1;
>  			break;
>  		}
> -	else if (DISPLAY_VER(dev_priv) == 11)
> +	else if (DISPLAY_VER(dev_priv) == 11) {
>  		qi->t_bl = dev_priv->dram_info.type == INTEL_DRAM_DDR4 ? 4 : 8;
> +		qi->max_numchannels = 1;

We don't have several of these new values for gen11, so that's going to
cause problems in the calculations below.  E.g., if we leave
channel_width as 0, that makes peakbw 0, which makes maxdebw 0.

So we either need to backcalculate the proper values that will make the
version 12 algorithm give the same values as the version 11 algorithm,
or we need to implement the two algorithms separately.  Bspec 54023 vs
bspec 64631 look a bit different, but I didn't inspect them carefully
enough to see if 54023 just has some of these values implicitly baked
into the calculations already.


> +	}
>  
>  	if (drm_WARN_ON(&dev_priv->drm,
>  			qi->num_points > ARRAY_SIZE(qi->points)))
> @@ -263,37 +291,59 @@ static const struct intel_sa_info adlp_sa_info = {
>  static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
>  {
>  	struct intel_qgv_info qi = {};
> +	const struct dram_info *dram_info = &dev_priv->dram_info;
>  	bool is_y_tile = true; /* assume y tile may be used */
>  	int num_channels = max_t(u8, 1, dev_priv->dram_info.num_channels);
> -	int deinterleave;
>  	int ipqdepth, ipqdepthpch;
>  	int dclk_max;
> -	int maxdebw;
> +	int maxdebw, peakbw;
> +	int clperchgroup;
> +	int num_groups = ARRAY_SIZE(dev_priv->max_bw);
>  	int i, ret;
>  
> -	ret = icl_get_qgv_points(dev_priv, &qi);
> +	ret = icl_get_qgv_points(dev_priv, &qi, is_y_tile);
>  	if (ret) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Failed to get memory subsystem information, ignoring bandwidth limits");
>  		return ret;
>  	}
>  
> -	deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
> -	dclk_max = icl_sagv_max_dclk(&qi);
> +	if (dram_info->type == INTEL_DRAM_LPDDR4 || dram_info->type == INTEL_DRAM_LPDDR5)
> +		num_channels *= 2;
> +
> +	qi.deinterleave = qi.deinterleave ? : DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
> +
> +	if (num_channels < qi.max_numchannels && DISPLAY_VER(dev_priv) >= 12)
> +		qi.deinterleave = DIV_ROUND_UP(qi.deinterleave, 2);

This becomes 0 for DDR4/DDR5 y-tile.  The bspec has another MAX()
operation here to ensure that we end up with a value of at least 1.

> +
> +	if (qi.max_numchannels != 0)
> +		num_channels = min_t(u8, num_channels, qi.max_numchannels);

I don't see this in the bspec, but it makes sense.  Should we have some
kind of debug message / WARN if the number of channels we think we have
exceeds the maximum?

> +
> +	dclk_max = icl_calc_bw(icl_sagv_max_dclk(&qi), 16, 1);

dclk_max in the old code was the maximum clock rate (and corresponds to
"clk_max" in the updated algorithm).  But here we're modifying scaling
it into different units (I'm not sure what they're supposed to
represent).

>  
>  	ipqdepthpch = 16;
>  
> -	maxdebw = min(sa->deprogbwlimit * 1000,
> -		      icl_calc_bw(dclk_max, 16, 1) * 6 / 10); /* 60% */
> +	peakbw = num_channels * DIV_ROUND_UP(qi.deinterleave, 8) * dclk_max;

qi.deinterleave here is supposed to be channel_width isn't it?
deinterleave/8 would be 0 for all possible values of deinterleave I
think.

> +	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * 6 / 10); /* 60% */
>  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
> +	/*
> +	 * clperchgroup = 4kpagespermempage * clperchperblock,
> +	 * clperchperblock = 8 / num_channels * interleave

Based on the way this is written in the bspec, I wonder if they meant to
have parentheses around (num_channels * deinterleave)?  Probably worth
confirming.

> +	 */
> +	clperchgroup = 4 * DIV_ROUND_UP(8, num_channels) * qi.deinterleave;
>  
> -	for (i = 0; i < ARRAY_SIZE(dev_priv->max_bw); i++) {
> +	for (i = 0; i < num_groups; i++) {
>  		struct intel_bw_info *bi = &dev_priv->max_bw[i];
>  		int clpchgroup;
>  		int j;
>  
> -		clpchgroup = (sa->deburst * deinterleave / num_channels) << i;
> -		bi->num_planes = (ipqdepth - clpchgroup) / clpchgroup + 1;
> +		clpchgroup = (sa->deburst * qi.deinterleave / num_channels) << i;
> +
> +		if ((i < num_groups - 1 && clpchgroup < clperchgroup) ||
> +		    DISPLAY_VER(dev_priv) == 11)
> +			bi->num_planes = (ipqdepth - clpchgroup) / clpchgroup + 1;
> +		else
> +			bi->num_planes = 0;

I think these are off by one.  num_planes[0] is supposed to be 0.  The
loop in the bspec is assigning values for numplanes[i + 1].  The loop
you have here is going to leave numplanes[num_groups - 1] as 0 instead.
This does differ from the old version of the algorithm.

>  
>  		bi->num_qgv_points = qi.num_points;
>  		bi->num_psf_gv_points = qi.num_psf_points;
> @@ -339,7 +389,7 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
>  	 * SAGV point, but we can't send PCode commands to restrict it
>  	 * as it will fail and pointless anyway.
>  	 */
> -	if (qi.num_points == 1)
> +	if (qi.num_points >= 1)

Was this change a mistake?  This is going to prevent us from using SAGV
in the situations where it should be used (i.e., where the BIOS properly
tells us about multiple QGV points we can switch between).


Matt

>  		dev_priv->sagv_status = I915_SAGV_NOT_CONTROLLED;
>  	else
>  		dev_priv->sagv_status = I915_SAGV_ENABLED;
> -- 
> 2.20.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
