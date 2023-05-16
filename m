Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C93BD704AF4
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 12:43:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FBE910E21E;
	Tue, 16 May 2023 10:43:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1ADE10E331;
 Tue, 16 May 2023 10:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684233830; x=1715769830;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Kw5uu8/ffgsU4jMh0Uwzm3M4i8c0e5CQysNXqq/BtXk=;
 b=jVvSyse9e6sTsbPdFb9jqBhc/7JEhIVlE/fu8DVNiZkrD09h5NP+Owkb
 25PopsG3Q4RDVWGmuiHi7sPtPH4weUp1nfAwbFJae+kO+imsqVmNUIurr
 x7JJkMBPEQucRlITuoOl0XOuzFeziIh8LKYuXKtEcXIXcHjZBreOjNhYJ
 QMDR9obg9ivEjq7vqzG0rwKyNdG7wX5xXsXcnvwCGwLLTMbTB9HCsJkbd
 xEZb+9E8NB6ddwiZHCF/oCTqAG612DNZO87Vblc+M0h6GvXG6ERT+Z3X8
 R29hO7/jKrVuqSv+H2rF3Y89UxshPZH4i5j3RV4/n1MneGPw3gFiSm/wI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="331062910"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="331062910"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 03:43:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="770992624"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="770992624"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 03:43:48 -0700
Date: Tue, 16 May 2023 13:43:44 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <ZGNeYFSFzInncdQm@intel.com>
References: <20230512062417.2584427-1-ankit.k.nautiyal@intel.com>
 <20230512062417.2584427-13-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230512062417.2584427-13-ankit.k.nautiyal@intel.com>
Subject: Re: [Intel-gfx] [PATCH 12/13] drm/i915/dp: Get optimal link config
 to have best compressed bpp
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 12, 2023 at 11:54:16AM +0530, Ankit Nautiyal wrote:
> Currently, we take the max lane, rate and pipe bpp, to get the maximum
> compressed bpp possible. We then set the output bpp to this value.
> This patch provides support to have max bpp, min rate and min lanes,
> that can support the min compressed bpp.
> 
> v2:
> -Avoid ending up with compressed bpp, same as pipe bpp. (Stan)
> -Fix the checks for limits->max/min_bpp while iterating over list of
>  valid DSC bpcs. (Stan)
> 
> v3:
> -Refactor the code to have pipe bpp/compressed bpp computation and slice
> count calculation separately for different cases.
> 
> v4:
> -Separate the pipe_bpp calculation for eDP and DP.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 305 +++++++++++++++++++-----
>  1 file changed, 245 insertions(+), 60 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 39e2bf3d738d..578320220c9a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1642,6 +1642,209 @@ static bool intel_dp_dsc_supports_format(struct intel_dp *intel_dp,
>  	return drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd, sink_dsc_format);
>  }
>  
> +static bool is_dsc_bw_sufficient(int link_rate, int lane_count, int compressed_bpp,
> +				 const struct drm_display_mode *adjusted_mode)
> +{
> +	int mode_rate = intel_dp_link_required(adjusted_mode->crtc_clock, compressed_bpp);
> +	int link_avail = intel_dp_max_data_rate(link_rate, lane_count);
> +
> +	return mode_rate <= link_avail;
> +}
> +
> +static int dsc_compute_link_config(struct intel_dp *intel_dp,
> +				   struct intel_crtc_state *pipe_config,
> +				   struct link_config_limits *limits,
> +				   int pipe_bpp,
> +				   u16 compressed_bpp,
> +				   int timeslots)
> +{
> +	const struct drm_display_mode *adjusted_mode =
> +		&pipe_config->hw.adjusted_mode;
> +	int link_rate, lane_count;
> +	int dsc_max_bpp;
> +	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +	int i;
> +
> +	for (i = 0; i < intel_dp->num_common_rates; i++) {
> +		link_rate = intel_dp_common_rate(intel_dp, i);
> +		if (link_rate < limits->min_rate || link_rate > limits->max_rate)
> +			continue;
> +
> +		for (lane_count = limits->min_lane_count;
> +		     lane_count <= limits->max_lane_count;
> +		     lane_count <<= 1) {
> +			dsc_max_bpp = intel_dp_dsc_get_max_compressed_bpp(dev_priv,
> +									  link_rate,
> +									  lane_count,
> +									  adjusted_mode->crtc_clock,
> +									  adjusted_mode->crtc_hdisplay,
> +									  pipe_config->bigjoiner_pipes,
> +									  pipe_config->output_format,
> +									  pipe_bpp, timeslots);
> +			/*
> +			 * According to DSC 1.2a Section 4.1.1 Table 4.1 the maximum
> +			 * supported PPS value can be 63.9375 and with the further
> +			 * mention that bpp should be programmed double the target bpp
> +			 * restricting our target bpp to be 31.9375 at max
> +			 */
> +			if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
> +				dsc_max_bpp = min_t(u16, dsc_max_bpp, 31);
> +
> +			if (compressed_bpp > dsc_max_bpp)
> +				continue;
> +
> +			if (!is_dsc_bw_sufficient(link_rate, lane_count,
> +						  compressed_bpp, adjusted_mode))
> +				continue;
> +
> +			pipe_config->lane_count = lane_count;
> +			pipe_config->port_clock = link_rate;
> +
> +			return 0;
> +		}
> +	}
> +
> +	return -EINVAL;
> +}
> +
> +static
> +u16 intel_dp_dsc_max_sink_compressed_bppx16(struct intel_dp *intel_dp,
> +					    struct intel_crtc_state *pipe_config,
> +					    int bpc)
> +{
> +	u16 max_bppx16 = drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd);
> +
> +	if (max_bppx16)
> +		return max_bppx16;
> +	/*
> +	 * If support not given in DPCD 67h, 68h use the Maximum Allowed bit rate
> +	 * values as given in spec Table 2-157 DP v2.0
> +	 */
> +	switch (pipe_config->output_format) {
> +	case INTEL_OUTPUT_FORMAT_RGB:
> +	case INTEL_OUTPUT_FORMAT_YCBCR444:
> +		return (3 * bpc) << 4;
> +	case INTEL_OUTPUT_FORMAT_YCBCR420:
> +		return (3 * (bpc / 2)) << 4;
> +	default:
> +		MISSING_CASE(pipe_config->output_format);
> +		break;
> +	}
> +
> +	return 0;
> +}
> +
> +static u16 intel_dp_dsc_min_compressed_bppx16(struct intel_crtc_state *pipe_config)
> +{
> +	switch (pipe_config->output_format) {
> +	case INTEL_OUTPUT_FORMAT_RGB:
> +	case INTEL_OUTPUT_FORMAT_YCBCR444:
> +		return 8 << 4;
> +	case INTEL_OUTPUT_FORMAT_YCBCR420:
> +		return 6 << 4;
> +	default:
> +		MISSING_CASE(pipe_config->output_format);
> +		break;
> +	}
> +
> +	return 0;
> +}
> +
> +static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
> +				      struct intel_crtc_state *pipe_config,
> +				      struct link_config_limits *limits,
> +				      int pipe_bpp,
> +				      int timeslots)
> +{
> +	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +	u16 compressed_bpp;
> +	int dsc_min_bpp, dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
> +	int ret;
> +
> +	dsc_min_bpp = max(intel_dp_dsc_min_compressed_bppx16(pipe_config) >> 4, 8);
> +	if (DISPLAY_VER(dev_priv) <= 12)
> +		dsc_src_max_bpp = 23;
> +	else
> +		dsc_src_max_bpp = 27;

I would may be added some comment about what are those "23/27" numbers or
may be even created some self-explanatory #define constants for those.
Otherwise in a couple of years, even we ourselves might not be able to recall
immediately where those numbers are taken from.

Otherwise looks good to me,

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> +	dsc_sink_max_bpp =
> +		intel_dp_dsc_max_sink_compressed_bppx16(intel_dp,
> +							pipe_config, pipe_bpp / 3) >> 4;
> +
> +	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
> +
> +	/* Compressed BPP should be less than the Input DSC bpp */
> +	dsc_max_bpp = min(dsc_max_bpp, pipe_bpp - 1);
> +
> +	for (compressed_bpp = dsc_max_bpp;
> +	     compressed_bpp >= dsc_min_bpp;
> +	     compressed_bpp--) {
> +		ret = dsc_compute_link_config(intel_dp,
> +					      pipe_config,
> +					      limits,
> +					      pipe_bpp,
> +					      compressed_bpp,
> +					      timeslots);
> +		if (ret == 0) {
> +			pipe_config->dsc.compressed_bpp = compressed_bpp;
> +			return 0;
> +		}
> +	}
> +
> +	return -EINVAL;
> +}
> +
> +static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
> +					 struct intel_crtc_state *pipe_config,
> +					 struct drm_connector_state *conn_state,
> +					 struct link_config_limits *limits,
> +					 int timeslots)
> +{
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	u8 dsc_bpc[3] = {0};
> +	u8 dsc_max_bpc, dsc_max_bpp;
> +	u8 dsc_min_bpc, dsc_min_bpp;
> +	u8 max_req_bpc = conn_state->max_requested_bpc;
> +	int i, bpp, ret;
> +	int num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp->dsc_dpcd,
> +							   dsc_bpc);
> +
> +	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
> +	if (DISPLAY_VER(i915) >= 12)
> +		dsc_max_bpc = min_t(u8, 12, max_req_bpc);
> +	else
> +		dsc_max_bpc = min_t(u8, 10, max_req_bpc);
> +
> +	dsc_max_bpp = min(dsc_max_bpc * 3, limits->max_bpp);
> +
> +	/* Min DSC Input BPC for ICL+ is 8 */
> +	dsc_min_bpc = 8;
> +	dsc_min_bpp = max(dsc_min_bpc * 3, limits->min_bpp);
> +
> +	/*
> +	 * Get the maximum DSC bpc that will be supported by any valid
> +	 * link configuration and compressed bpp.
> +	 */
> +	for (i = 0; i < num_bpc; i++) {
> +		bpp = dsc_bpc[i] * 3;
> +
> +		if (bpp < dsc_min_bpp)
> +			break;
> +
> +		if (bpp > dsc_max_bpp)
> +			continue;
> +
> +		ret = dsc_compute_compressed_bpp(intel_dp, pipe_config,
> +						 limits, bpp, timeslots);
> +		if (ret == 0) {
> +			pipe_config->pipe_bpp = bpp;
> +
> +			return 0;
> +		}
> +	}
> +
> +	return -EINVAL;
> +}
> +
>  static
>  bool is_dsc_pipe_bpp_sufficient(int pipe_bpp)
>  {
> @@ -1649,6 +1852,31 @@ bool is_dsc_pipe_bpp_sufficient(int pipe_bpp)
>  	return (pipe_bpp < 8 * 3);
>  }
>  
> +static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
> +					  struct intel_crtc_state *pipe_config,
> +					  struct drm_connector_state *conn_state,
> +					  struct link_config_limits *limits)
> +{
> +	/* For eDP use max bpp that can be supported with DSC. */
> +	int pipe_bpp = intel_dp_dsc_compute_max_bpp(intel_dp,
> +						    conn_state->max_requested_bpc);
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +
> +	if (!is_dsc_pipe_bpp_sufficient(pipe_bpp)) {
> +		drm_dbg_kms(&i915->drm,
> +			    "No DSC support for less than 8bpc\n");
> +		return -EINVAL;
> +	}
> +	pipe_config->pipe_bpp = pipe_bpp;
> +	pipe_config->port_clock = limits->max_rate;
> +	pipe_config->lane_count = limits->max_lane_count;
> +	pipe_config->dsc.compressed_bpp =
> +		min_t(u16, drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4,
> +		      pipe_config->pipe_bpp);
> +
> +	return 0;
> +}
> +
>  int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  				struct intel_crtc_state *pipe_config,
>  				struct drm_connector_state *conn_state,
> @@ -1671,6 +1899,12 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  	if (!intel_dp_dsc_supports_format(intel_dp, pipe_config->output_format))
>  		return -EINVAL;
>  
> +	/*
> +	 * compute pipe bpp is set to false for DP MST DSC case
> +	 * and compressed_bpp is calculated same time once
> +	 * vpci timeslots are allocated, because overall bpp
> +	 * calculation procedure is bit different for MST case.
> +	 */
>  	if (compute_pipe_bpp) {
>  		int pipe_bpp;
>  		int forced_bpp = intel_dp->force_dsc_bpc * 3;
> @@ -1683,31 +1917,25 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  				 forced_bpp && !is_dsc_pipe_bpp_sufficient(forced_bpp),
>  				 "Cannot force dsc bpc:%d, due to dsc bpc limits\n",
>  				 intel_dp->force_dsc_bpc);
> -
> -			pipe_bpp = intel_dp_dsc_compute_max_bpp(intel_dp,
> -								conn_state->max_requested_bpc);
> -
> -			if (!is_dsc_pipe_bpp_sufficient(pipe_bpp)) {
> -				drm_dbg_kms(&dev_priv->drm, "No DSC support for less than 8bpc\n");
> -				return -EINVAL;
> +			if (intel_dp_is_edp(intel_dp))
> +				ret = intel_edp_dsc_compute_pipe_bpp(intel_dp, pipe_config,
> +								     conn_state, limits);
> +			else
> +				ret = intel_dp_dsc_compute_pipe_bpp(intel_dp, pipe_config,
> +								    conn_state, limits, timeslots);
> +			if (ret) {
> +				drm_dbg_kms(&dev_priv->drm,
> +					    "No Valid pipe bpp for given mode ret = %d\n", ret);
> +				return ret;
>  			}
>  		}
> -
> -		pipe_config->pipe_bpp = pipe_bpp;
>  	}
>  
> -	/*
> -	 * For now enable DSC for max link rate, max lane count.
> -	 * Optimize this later for the minimum possible link rate/lane count
> -	 * with DSC enabled for the requested mode.
> -	 */
>  	pipe_config->port_clock = limits->max_rate;
>  	pipe_config->lane_count = limits->max_lane_count;
>  
> +	/* Calculate Slice count */
>  	if (intel_dp_is_edp(intel_dp)) {
> -		pipe_config->dsc.compressed_bpp =
> -			min_t(u16, drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4,
> -			      pipe_config->pipe_bpp);
>  		pipe_config->dsc.slice_count =
>  			drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd,
>  							true);
> @@ -1717,37 +1945,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  			return -EINVAL;
>  		}
>  	} else {
> -		u16 dsc_max_compressed_bpp = 0;
>  		u8 dsc_dp_slice_count;
>  
> -		if (compute_pipe_bpp) {
> -			dsc_max_compressed_bpp =
> -				intel_dp_dsc_get_max_compressed_bpp(dev_priv,
> -								    pipe_config->port_clock,
> -								    pipe_config->lane_count,
> -								    adjusted_mode->crtc_clock,
> -								    adjusted_mode->crtc_hdisplay,
> -								    pipe_config->bigjoiner_pipes,
> -								    pipe_config->output_format,
> -								    pipe_config->pipe_bpp,
> -								    timeslots);
> -			/*
> -			 * According to DSC 1.2a Section 4.1.1 Table 4.1 the maximum
> -			 * supported PPS value can be 63.9375 and with the further
> -			 * mention that bpp should be programmed double the target bpp
> -			 * restricting our target bpp to be 31.9375 at max
> -			 */
> -			if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
> -				dsc_max_compressed_bpp = min_t(u16,
> -							       dsc_max_compressed_bpp,
> -							       31);
> -
> -			if (!dsc_max_compressed_bpp) {
> -				drm_dbg_kms(&dev_priv->drm,
> -					    "Compressed BPP not supported\n");
> -				return -EINVAL;
> -			}
> -		}
>  		dsc_dp_slice_count =
>  			intel_dp_dsc_get_slice_count(intel_dp,
>  						     adjusted_mode->crtc_clock,
> @@ -1759,20 +1958,6 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  			return -EINVAL;
>  		}
>  
> -		/*
> -		 * compute pipe bpp is set to false for DP MST DSC case
> -		 * and compressed_bpp is calculated same time once
> -		 * vpci timeslots are allocated, because overall bpp
> -		 * calculation procedure is bit different for MST case.
> -		 */
> -		if (compute_pipe_bpp) {
> -			u16 output_bpp = intel_dp_output_bpp(pipe_config->output_format,
> -							     pipe_config->pipe_bpp);
> -
> -			pipe_config->dsc.compressed_bpp = min_t(u16,
> -								dsc_max_compressed_bpp,
> -								output_bpp);
> -		}
>  		pipe_config->dsc.slice_count = dsc_dp_slice_count;
>  	}
>  	/*
> -- 
> 2.25.1
> 
