Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 858C66BDDDC
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 02:00:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 691FD10E239;
	Fri, 17 Mar 2023 01:00:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27A8D10E239
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 01:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679014850; x=1710550850;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3Zxrqpkb+gbIkheXOc+0+dgV3Lkmw8Hh5kPXaKrusqI=;
 b=Y/+bv5zkHmhqJEnHeuPrzy3DgIoWMTmDldgR09qGi+qbcry5v6q4VwpO
 KyPi5LPoNVLsbbwvgQd+o5ePXJCBmRwascasJuC9kThyNfBlTnrttvIQM
 vWMcs73lidh96c177w4axVcDbAH6rvhvh6hLGdDu8iHGq7HxRkp6/RNCe
 hfXAySatS4Q72Ji4k2kjqf3EHwrEyIWke+nKerOSGwaSiG1fvBx/aenBv
 BSOKBmZJr6ftkG5FjfT/smdZso/xhMKiMK1jGpn6huMqP6yYTUUehfRuw
 Cj4+Rnnyuje5W7fye8LZgZFoSis/hO3cnmEAMxbh8K/+u4juiAcZMYGPA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="335639599"
X-IronPort-AV: E=Sophos;i="5.98,267,1673942400"; d="scan'208";a="335639599"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 18:00:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="744372552"
X-IronPort-AV: E=Sophos;i="5.98,267,1673942400"; d="scan'208";a="744372552"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga008.fm.intel.com with SMTP; 16 Mar 2023 18:00:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Mar 2023 03:00:46 +0200
Date: Fri, 17 Mar 2023 03:00:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <ZBO7vvuob0AHHmwZ@intel.com>
References: <20230314110415.2882484-1-ankit.k.nautiyal@intel.com>
 <20230314110415.2882484-7-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230314110415.2882484-7-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v11 06/11] drm/i915/dp: Consider
 output_format while computing dsc bpp for mode_valid
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

On Tue, Mar 14, 2023 at 04:34:10PM +0530, Ankit Nautiyal wrote:
> During modevalid step, the pipe bpp is computed assuming RGB output
> format. When checking with DSC, consider the output_format and compute
> the input bpp for DSC appropriately.
> 
> v2: For DP-MST we currently use RGB output format only, so continue
> using RGB while computing dsc_bpp for MST case.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 28 ++++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_dp.h     |  4 ++-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +-
>  3 files changed, 26 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index dcb3c2519041..499390c519ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1110,11 +1110,21 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  
>  	if (HAS_DSC(dev_priv) &&
>  	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
> +		int pipe_bpp;
> +		enum intel_output_format output_format, sink_format;
> +		const struct drm_display_info *info = &connector->base.display_info;
> +
> +		if (drm_mode_is_420_only(info, mode))
> +			sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> +		else
> +			sink_format = INTEL_OUTPUT_FORMAT_RGB;

I think I saw this same code duplicated somewhere else already.
Time for a intel_dp_sink_format()?

> +
> +		output_format = intel_dp_output_format(connector, sink_format);
>  		/*
>  		 * TBD pass the connector BPC,
>  		 * for now U8_MAX so that max BPC on that platform would be picked
>  		 */
> -		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
> +		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, output_format, U8_MAX);
>  
>  		/*
>  		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
> @@ -1454,12 +1464,15 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>  	return -EINVAL;
>  }
>  
> -int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
> +int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp,
> +			     enum intel_output_format output_format,
> +			     u8 max_req_bpc)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	int i, num_bpc;
>  	u8 dsc_bpc[3] = {0};
>  	u8 dsc_max_bpc;
> +	int pipe_bpp = 0;
>  
>  	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
>  	if (DISPLAY_VER(i915) >= 12)
> @@ -1470,11 +1483,13 @@ int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
>  	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp->dsc_dpcd,
>  						       dsc_bpc);
>  	for (i = 0; i < num_bpc; i++) {
> -		if (dsc_max_bpc >= dsc_bpc[i])
> -			return dsc_bpc[i] * 3;
> +		if (dsc_max_bpc >= dsc_bpc[i]) {
> +			pipe_bpp = dsc_bpc[i] * 3;
> +			break;
> +		}
>  	}
>  
> -	return 0;
> +	return intel_dp_output_bpp(output_format, pipe_bpp);

The pipe_bpp vs. output_bpp terms seem a bit confused now in the dsc
code.

In the non-compressed cases pipe_bpp does not include any
subsampling, output_bpp is the subsampled version.

What this dsc code seems to want is an intermediate value which
is the subsampled pipe_bpp that is the input to dsc compressor?
And output_bpp/dsc.compressed_bpp is then the final bpp coming
out of the compressor.

I think we should invent a consistent set of names for each so that
it's clear which value the code is concerned with.

>  }
>  
>  static int intel_dp_source_dsc_version_minor(struct intel_dp *intel_dp)
> @@ -1588,7 +1603,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  		return -EINVAL;
>  
>  	if (compute_pipe_bpp)
> -		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
> +		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, pipe_config->output_format,
> +						    conn_state->max_requested_bpc);

This pipe_bpp gets plugged back into crtc_state->pipe_bpp later and
then it'll be the subsampled version. I don't think that is what we want
eg. for dithering setup and whatnot.

>  	else
>  		pipe_bpp = pipe_config->pipe_bpp;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index ef39e4f7a329..2f4136e43f38 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -102,7 +102,9 @@ void intel_read_dp_sdp(struct intel_encoder *encoder,
>  		       struct intel_crtc_state *crtc_state,
>  		       unsigned int type);
>  bool intel_digital_port_connected(struct intel_encoder *encoder);
> -int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
> +int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp,
> +			     enum intel_output_format output_format,
> +			     u8 dsc_max_bpc);
>  u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>  				u32 link_clock, u32 lane_count,
>  				u32 mode_clock, u32 mode_hdisplay,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index ff0b821a901a..bdc5c53ccd75 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -917,7 +917,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  		 * TBD pass the connector BPC,
>  		 * for now U8_MAX so that max BPC on that platform would be picked
>  		 */
> -		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
> +		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, INTEL_OUTPUT_FORMAT_RGB, U8_MAX);
>  
>  		if (drm_dp_sink_supports_fec(intel_dp->fec_capable)) {
>  			dsc_max_output_bpp =
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
