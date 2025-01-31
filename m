Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D89A23EF2
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 15:04:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB2B410EAC7;
	Fri, 31 Jan 2025 14:04:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RuctBvhI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6803F10EAC2;
 Fri, 31 Jan 2025 14:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738332265; x=1769868265;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Bp/axb7hB4GinuIfaPS6ViljWyopqKNYoDnVnYfbkEU=;
 b=RuctBvhIOD2FxekM0bg3yyj0TYGr4Z2zhioan4GgXKQos/xojZ2Qb2LF
 NEihltDsrlQYjTsL4hG3J8XNntRJUAvJbXUF/zRwPtvlsm1972zNJt+nb
 FzfAPjV6lhDdxAVTVrDvXpkpH7IxZfdW2R06GtrFfbADmIy0+zFEuGzz4
 l8zOi9JvpTcvMnZY4//pVS3DoYAUSRJDkhftV2Ut05D/FFFwsB92/nDSZ
 jIC5JEJEjTyaKjZOWe50ztdgglaEWhy+NCv+VW5SSjNPb1+cCzFTEgk3o
 hyL/26+n+G13yqax8bb+mIUnTvWYDqmpicwOagIXoLj5Nfy3di7OaSeqn w==;
X-CSE-ConnectionGUID: qwHLoC/eSbCVEZtUDwcJBg==
X-CSE-MsgGUID: ba49ddD1R/ugw1N+Hmi8Sw==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="38605656"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="38605656"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 06:04:25 -0800
X-CSE-ConnectionGUID: N0N+fXbuQdaphPshzhyrpA==
X-CSE-MsgGUID: jW5g8dCtRKqBBkkRb4+RWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="114632132"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 06:04:23 -0800
Date: Fri, 31 Jan 2025 16:05:19 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 04/14] drm/i915/dp: Pass .4 BPP values to
 {icl,xelpd}_dsc_compute_link_config()
Message-ID: <Z5zYn5XGX3wfyjia@ideak-desk.fi.intel.com>
References: <cover.1738327620.git.jani.nikula@intel.com>
 <e72f153fd28755e41ee8c5a7b9e6de257c3b27ac.1738327620.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e72f153fd28755e41ee8c5a7b9e6de257c3b27ac.1738327620.git.jani.nikula@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 31, 2025 at 02:49:57PM +0200, Jani Nikula wrote:
> Try to keep the variables in the same domain a bit longer to reduce
> juggling between integers and .4 fixed point. Change parameter order to
> min, max while at it.
> 
> For now, keep the juggling in dsc_compute_compressed_bpp() ensure
> min/max will always have 0 fractional part. To be fixed later.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 28 ++++++++++++++-----------
>  1 file changed, 16 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 02d1a5453b46..b13d806c9de7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2077,8 +2077,8 @@ static int
>  icl_dsc_compute_link_config(struct intel_dp *intel_dp,
>  			    struct intel_crtc_state *pipe_config,
>  			    const struct link_config_limits *limits,
> -			    int dsc_max_bpp,
> -			    int dsc_min_bpp,
> +			    int min_bpp_x16,
> +			    int max_bpp_x16,
>  			    int pipe_bpp,
>  			    int timeslots)
>  {
> @@ -2086,11 +2086,11 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
>  	int output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
>  
>  	/* Compressed BPP should be less than the Input DSC bpp */
> -	dsc_max_bpp = min(dsc_max_bpp, output_bpp - 1);
> +	max_bpp_x16 = min(max_bpp_x16, fxp_q4_from_int(output_bpp - 1));
>  
>  	for (i = ARRAY_SIZE(valid_dsc_bpp) - 1; i >= 0; i--) {
> -		if (valid_dsc_bpp[i] < dsc_min_bpp ||
> -		    valid_dsc_bpp[i] > dsc_max_bpp)
> +		if (valid_dsc_bpp[i] < fxp_q4_to_int(min_bpp_x16) ||
> +		    valid_dsc_bpp[i] > fxp_q4_to_int(max_bpp_x16))
>  			continue;
>  
>  		ret = dsc_compute_link_config(intel_dp,
> @@ -2119,8 +2119,8 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
>  			      const struct intel_connector *connector,
>  			      struct intel_crtc_state *pipe_config,
>  			      const struct link_config_limits *limits,
> -			      int dsc_max_bpp,
> -			      int dsc_min_bpp,
> +			      int min_bpp_x16,
> +			      int max_bpp_x16,
>  			      int pipe_bpp,
>  			      int timeslots)
>  {
> @@ -2132,10 +2132,9 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
>  	bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
>  
>  	/* Compressed BPP should be less than the Input DSC bpp */
> -	dsc_max_bpp = min(dsc_max_bpp << 4, (output_bpp << 4) - bpp_step_x16);
> -	dsc_min_bpp = dsc_min_bpp << 4;
> +	max_bpp_x16 = min(max_bpp_x16, fxp_q4_from_int(output_bpp) - bpp_step_x16);
>  
> -	for (bpp_x16 = dsc_max_bpp; bpp_x16 >= dsc_min_bpp; bpp_x16 -= bpp_step_x16) {
> +	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
>  		if (intel_dp->force_dsc_fractional_bpp_en &&
>  		    !fxp_q4_to_frac(bpp_x16))
>  			continue;
> @@ -2168,6 +2167,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>  	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
>  	int dsc_min_bpp;
>  	int dsc_max_bpp;
> +	int min_bpp_x16, max_bpp_x16;
>  	int dsc_joiner_max_bpp;
>  	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
>  
> @@ -2178,11 +2178,15 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>  								num_joined_pipes);
>  	dsc_max_bpp = min(dsc_joiner_max_bpp, fxp_q4_to_int(limits->link.max_bpp_x16));
>  
> +	/* FIXME: remove the round trip via integers */
> +	min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
> +	max_bpp_x16 = fxp_q4_from_int(dsc_max_bpp);
> +
>  	if (DISPLAY_VER(display) >= 13)
>  		return xelpd_dsc_compute_link_config(intel_dp, connector, pipe_config, limits,
> -						     dsc_max_bpp, dsc_min_bpp, pipe_bpp, timeslots);
> +						     min_bpp_x16, max_bpp_x16, pipe_bpp, timeslots);
>  	return icl_dsc_compute_link_config(intel_dp, pipe_config, limits,
> -					   dsc_max_bpp, dsc_min_bpp, pipe_bpp, timeslots);
> +					   min_bpp_x16, max_bpp_x16, pipe_bpp, timeslots);
>  }
>  
>  int intel_dp_dsc_min_src_input_bpc(void)
> -- 
> 2.39.5
> 
