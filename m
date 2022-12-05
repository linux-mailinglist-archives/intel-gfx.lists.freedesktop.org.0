Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 084C2642392
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 08:29:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A48D10E0FA;
	Mon,  5 Dec 2022 07:29:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77ECB10E0FA
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 07:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670225349; x=1701761349;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=QNTDi8Uv023zp9mc1dk02Tmuumo31FzgctLncw/R41Q=;
 b=M+NayRJ4PUsmNAkbJKVhUe7JqgPddL6mquuIB9kOPsv7qm4XzOM4Xz8X
 av8gmGG2HD702RCnO9xPWJSQuKKVoX+6Gnwzrk0LKQeDGg3XJXdPGOFka
 c/PQn2+xks3YwdbK5YOOOl+KZ3/ztUfsuUkVcpP8IOuPqVRmlr6hBBbwC
 OImw35dfncafeKYL1/UOS58DucW/31BOCV/zfn2OG+PcDPLw6yHbWpKov
 FjxW4yMeD7pPTBYMuhvhrI87zqBaocov1yXl4x3T0q/J6P5HmkDnjrVLf
 Vl3Iwh9mtVdkCeA3pNqEMtZQks8HM+3q0unqBULDTtKL5MsG5eTfqGEsY Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="303900679"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="303900679"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2022 23:29:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="770257361"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="770257361"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2022 23:29:07 -0800
Date: Mon, 5 Dec 2022 09:28:59 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <Y42du6EzVtTs2ir5@intel.com>
References: <20221128101922.217217-1-ankit.k.nautiyal@intel.com>
 <20221128101922.217217-5-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221128101922.217217-5-ankit.k.nautiyal@intel.com>
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915/dp: Get optimal link config
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 28, 2022 at 03:49:15PM +0530, Ankit Nautiyal wrote:
> Currently, we take the max lane, rate and pipe bpp, to get the maximum
> compressed bpp possible. We then set the output bpp to this value.
> This patch provides support to have max bpp, min rate and min lanes,
> that can support the min compressed bpp.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 223 +++++++++++++++++++++---
>  1 file changed, 200 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 8ddbbada22ab..10f9292e1e0d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1461,6 +1461,187 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
>  	return drm_dsc_compute_rc_parameters(vdsc_cfg);
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
> +				   u16 compressed_bpp)
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
> +			dsc_max_bpp = intel_dp_dsc_get_output_bpp_max(dev_priv,
> +								      link_rate,
> +								      lane_count,
> +								      adjusted_mode->crtc_clock,
> +								      adjusted_mode->crtc_hdisplay,
> +								      pipe_config->bigjoiner_pipes,
> +								      pipe_bpp);
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
> +static u16 dsc_max_sink_compressed_bppx16(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE],
> +					  struct intel_crtc_state *pipe_config,
> +					  int bpc)
> +{
> +	u16 max_bpp = dsc_dpcd[DP_DSC_MAX_BITS_PER_PIXEL_LOW - DP_DSC_SUPPORT] |
> +		     (dsc_dpcd[DP_DSC_MAX_BITS_PER_PIXEL_HI - DP_DSC_SUPPORT] &
> +		      DP_DSC_MAX_BITS_PER_PIXEL_HI_MASK << DP_DSC_MAX_BITS_PER_PIXEL_HI_SHIFT);
> +
> +	if (max_bpp)
> +		return max_bpp;

I guess it should be max_bpp << 4, just as everything else returned, unless that
dpcd reg doesn't store it shifted already, which doesn't seem to be the case.

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
> +static u16 dsc_min_compressed_bppx16(struct intel_crtc_state *pipe_config)
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
> +				      int pipe_bpp)
> +{
> +	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +	u16 compressed_bpp;
> +	int dsc_min_bpp, dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
> +	int ret;
> +
> +	dsc_min_bpp = max(dsc_min_compressed_bppx16(pipe_config) >> 4, 8);
> +	if (DISPLAY_VER(dev_priv) <= 12)
> +		dsc_src_max_bpp = 23;
> +	else
> +		dsc_src_max_bpp = 27;
> +	dsc_sink_max_bpp = dsc_max_sink_compressed_bppx16(intel_dp->dsc_dpcd,
> +							  pipe_config, pipe_bpp / 3) >> 4;
> +
> +	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;

Another thing when I was checking it eventually could end up with same compressed bpp, just
as input bpp, which I guess is wrong(we should still try to get some benefit from DSC, no
point in having compressed bpp, same as input bpp, even if source/sink allows that)

Otherwise the situation was that we were getting compressed bpp = 24, input bpp = 24.

So I would add something like 

dsc_max_bpp = min(dsc_max_bpp, (pipe_bpp - 1));

in next patch where you switch to 16x form that would be like:

dsc_max_bppx16 = min(dsc_max_bppx16, (pipe_bpp - 1) << 4);

to prevent this.

> +
> +	for (compressed_bpp = dsc_max_bpp;
> +	     compressed_bpp >= dsc_min_bpp;
> +	     compressed_bpp--) {
> +		ret = dsc_compute_link_config(intel_dp,
> +					      pipe_config,
> +					      limits,
> +					      pipe_bpp,
> +					      compressed_bpp);
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
> +					 struct link_config_limits *limits)
> +{
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	u8 dsc_bpc[3] = {0};
> +	u8 dsc_max_bpc, dsc_max_bpp;
> +	u8 max_req_bpc = conn_state->max_requested_bpc;
> +	int i, bpp, ret;
> +	int num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp->dsc_dpcd,
> +							   dsc_bpc);
> +
> +	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
> +	if (DISPLAY_VER(i915) >= 12)
> +		dsc_max_bpc = min_t(u8, 12, limits->max_bpp);
> +	else
> +		dsc_max_bpc = min_t(u8, 10, max_req_bpc);
> +
> +	dsc_max_bpp = min(dsc_max_bpc * 3, limits->max_bpp);
> +
> +	/*
> +	 * Get the maximum DSC bpc that will be supported by any valid
> +	 * link configuration and compressed bpp.
> +	 */
> +	for (i = 0; i < num_bpc; i++) {
> +		bpp = dsc_bpc[i] * 3;
> +
> +		if (bpp < limits->min_bpp)
> +			continue;
> +
> +		if (bpp > limits->max_bpp)
> +			break;

When I was testing it myself with kms_dsc it didn't work initially, the reason 
was that you need "continue" here, instead of "break", the thing is that dsc_bpc 
is populated in descending order, so lets say the biggest bpc will come first, 
however even if it goes beyond the limits, it doesn't mean we should bail out, 
but rather we should continue and check the rest dsc_bpc array elements.

Stan

> +
> +		ret = dsc_compute_compressed_bpp(intel_dp, pipe_config,
> +						 limits, bpp);
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
>  static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  				       struct intel_crtc_state *pipe_config,
>  				       struct drm_connector_state *conn_state,
> @@ -1505,17 +1686,11 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  		return -EINVAL;
>  	}
>  
> -	pipe_config->pipe_bpp = pipe_bpp;
> -
> -	/*
> -	 * For now enable DSC for max link rate, max lane count.
> -	 * Optimize this later for the minimum possible link rate/lane count
> -	 * with DSC enabled for the requested mode.
> -	 */
> -	pipe_config->port_clock = limits->max_rate;
> -	pipe_config->lane_count = limits->max_lane_count;
> -
>  	if (intel_dp_is_edp(intel_dp)) {
> +		pipe_config->pipe_bpp = pipe_bpp;
> +		pipe_config->port_clock = limits->max_rate;
> +		pipe_config->lane_count = limits->max_lane_count;
> +
>  		pipe_config->dsc.compressed_bpp =
>  			min_t(u16, drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4,
>  			      pipe_config->pipe_bpp);
> @@ -1523,29 +1698,31 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  			drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd,
>  							true);
>  	} else {
> -		u16 dsc_max_output_bpp;
>  		u8 dsc_dp_slice_count;
>  
> -		dsc_max_output_bpp =
> -			intel_dp_dsc_get_output_bpp_max(dev_priv,
> -							pipe_config->port_clock,
> -							pipe_config->lane_count,
> -							adjusted_mode->crtc_clock,
> -							adjusted_mode->crtc_hdisplay,
> -							pipe_config->bigjoiner_pipes,
> -							pipe_bpp);
> +		if (intel_dp->force_dsc_bpc &&
> +		    intel_dp->force_dsc_bpc <= conn_state->max_requested_bpc)
> +			ret = dsc_compute_compressed_bpp(intel_dp, pipe_config,
> +							 limits, pipe_bpp);
> +		else
> +			ret = intel_dp_dsc_compute_pipe_bpp(intel_dp, pipe_config,
> +							    conn_state, limits);
> +		if (ret < 0) {
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "Cannot support mode with DSC with any link config\n");
> +			return ret;
> +		}
> +
>  		dsc_dp_slice_count =
>  			intel_dp_dsc_get_slice_count(intel_dp,
>  						     adjusted_mode->crtc_clock,
>  						     adjusted_mode->crtc_hdisplay,
>  						     pipe_config->bigjoiner_pipes);
> -		if (!dsc_max_output_bpp || !dsc_dp_slice_count) {
> +		if (!dsc_dp_slice_count) {
>  			drm_dbg_kms(&dev_priv->drm,
> -				    "Compressed BPP/Slice Count not supported\n");
> +				    "Slice Count not supported\n");
>  			return -EINVAL;
>  		}
> -		pipe_config->dsc.compressed_bpp = min_t(u16, dsc_max_output_bpp,
> -							pipe_config->pipe_bpp);
>  		pipe_config->dsc.slice_count = dsc_dp_slice_count;
>  	}
>  
> -- 
> 2.25.1
> 
