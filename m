Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BD36ECC8B
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 15:04:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B10010E48F;
	Mon, 24 Apr 2023 13:04:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56A0910E453
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Apr 2023 13:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682341490; x=1713877490;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=R695IHGufp9KD1n4NyaL5Vf+kSOMViILVb8Z29rrmC8=;
 b=d3AkA3Iv1A8KqidV3tUtJ9xcOvpYzwGg3Y/3kwEmQxnQw1YVjt/zwv+g
 6LG0nX1cyLNx8QJ2t5YLGq1WcNXrts9WgOIYLn2v827JGuQa2x9+LrSdS
 llikbqxtpzr23+l8vl9QsI6eDg9ogwZEQl+Td/FLBdCErSGUzbL6srxSB
 2qDdHoatyd35Cot6Qx0DFmp/UOJaujxn7pxoM720WXahpBe6I4ZbGWJ/4
 82JL+GadXZBP4/krk9mGRaBYqW+FsCiisIsaR9/i5EefDY1ZQ1nq12H4e
 g0HvPFuoE2fomVNRiG77BjY8PIAIcWXmzl9j7LYUJQY161nKtee+8cR1h g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="335333637"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="335333637"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 06:04:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="782394675"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="782394675"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 24 Apr 2023 06:04:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Apr 2023 16:04:39 +0300
Date: Mon, 24 Apr 2023 16:04:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <ZEZ+Z5AaeX8XtpJa@intel.com>
References: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
 <20230331101613.936776-14-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230331101613.936776-14-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 13/13] drm/i915/dp: Use consistent name for
 link bpp and compressed bpp
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

On Fri, Mar 31, 2023 at 03:46:13PM +0530, Ankit Nautiyal wrote:
> Currently there are many places where we use output_bpp for link bpp and
> compressed bpp.
> Lets use consistent naming:
> output_bpp : The intermediate value taking into account the
> output_format chroma subsampling.
> compressed_bpp : target bpp for the DSC encoder.
> link_bpp : final bpp used in the link.
> 
> For 444 sampling without DSC:
> link_bpp = output_bpp = pipe_bpp
> 
> For 420 sampling without DSC:
> output_bpp = pipe_bpp / 2
> link_bpp = output_bpp
> 
> For 444 sampling with DSC:
> output_bpp = pipe_bpp
> link_bpp = compressed_bpp, computed with output_bpp (i.e. pipe_bpp in
> this case)
> 
> For 420 sampling with DSC:
> output_bpp = pipe_bpp/2
> link_bpp = compressed_bpp, computed with output_bpp
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 84 ++++++++++-----------
>  drivers/gpu/drm/i915/display/intel_dp.h     | 14 ++--
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 22 +++---
>  3 files changed, 60 insertions(+), 60 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 63f3f6ff2cad..22b98653d539 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -710,13 +710,13 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
>  	return bits_per_pixel;
>  }
>  
> -u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
> -				u32 link_clock, u32 lane_count,
> -				u32 mode_clock, u32 mode_hdisplay,
> -				bool bigjoiner,
> -				enum intel_output_format output_format,
> -				u32 pipe_bpp,
> -				u32 timeslots)
> +u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
> +					u32 link_clock, u32 lane_count,
> +					u32 mode_clock, u32 mode_hdisplay,
> +					bool bigjoiner,
> +					enum intel_output_format output_format,
> +					u32 pipe_bpp,
> +					u32 timeslots)
>  {
>  	u32 bits_per_pixel, max_bpp_small_joiner_ram;
>  
> @@ -1118,7 +1118,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	int target_clock = mode->clock;
>  	int max_rate, mode_rate, max_lanes, max_link_clock;
>  	int max_dotclk = dev_priv->max_dotclk_freq;
> -	u16 dsc_max_output_bpp = 0;
> +	u16 dsc_max_compressed_bpp = 0;
>  	u8 dsc_slice_count = 0;
>  	enum drm_mode_status status;
>  	bool dsc = false, bigjoiner = false;
> @@ -1173,21 +1173,21 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  		 * integer value since we support only integer values of bpp.
>  		 */
>  		if (intel_dp_is_edp(intel_dp)) {
> -			dsc_max_output_bpp =
> +			dsc_max_compressed_bpp =
>  				drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4;

Renaming that as well would be nice, as a separate patch.

>  			dsc_slice_count =
>  				drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd,
>  								true);
>  		} else if (drm_dp_sink_supports_fec(intel_dp->fec_capable)) {
> -			dsc_max_output_bpp =
> -				intel_dp_dsc_get_output_bpp(dev_priv,
> -							    max_link_clock,
> -							    max_lanes,
> -							    target_clock,
> -							    mode->hdisplay,
> -							    bigjoiner,
> -							    output_format,
> -							    pipe_bpp, 64) >> 4;
> +			dsc_max_compressed_bpp =
> +				intel_dp_dsc_get_max_compressed_bpp(dev_priv,
> +								    max_link_clock,
> +								    max_lanes,
> +								    target_clock,
> +								    mode->hdisplay,
> +								    bigjoiner,
> +								    output_format,
> +								    pipe_bpp, 64) >> 4;
>  			dsc_slice_count =
>  				intel_dp_dsc_get_slice_count(intel_dp,
>  							     target_clock,
> @@ -1195,7 +1195,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  							     bigjoiner);
>  		}
>  
> -		dsc = dsc_max_output_bpp && dsc_slice_count;
> +		dsc = dsc_max_compressed_bpp && dsc_slice_count;
>  	}
>  
>  	/*
> @@ -1477,9 +1477,9 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>  	int mode_rate, link_rate, link_avail;
>  
>  	for (bpp = limits->max_bpp; bpp >= limits->min_bpp; bpp -= 2 * 3) {
> -		int output_bpp = intel_dp_output_bpp(pipe_config->output_format, bpp);
> +		int link_bpp = intel_dp_output_bpp(pipe_config->output_format, bpp);
>  
> -		mode_rate = intel_dp_link_required(clock, output_bpp);
> +		mode_rate = intel_dp_link_required(clock, link_bpp);
>  
>  		for (i = 0; i < intel_dp->num_common_rates; i++) {
>  			link_rate = intel_dp_common_rate(intel_dp, i);
> @@ -1728,21 +1728,21 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  			drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd,
>  							true);
>  	} else {
> -		u16 dsc_max_output_bpp = 0;
> +		u16 dsc_max_compressed_bpp = 0;
>  		u8 dsc_dp_slice_count;
>  
>  		if (compute_pipe_bpp) {
> -			dsc_max_output_bpp =
> -				intel_dp_dsc_get_output_bpp(dev_priv,
> -							    pipe_config->port_clock,
> -							    pipe_config->lane_count,
> -							    adjusted_mode->crtc_clock,
> -							    adjusted_mode->crtc_hdisplay,
> -							    pipe_config->bigjoiner_pipes,
> -							    pipe_config->output_format,
> -							    pipe_bpp,
> -							    timeslots);
> -			if (!dsc_max_output_bpp) {
> +			dsc_max_compressed_bpp =
> +				intel_dp_dsc_get_max_compressed_bpp(dev_priv,
> +								    pipe_config->port_clock,
> +								    pipe_config->lane_count,
> +								    adjusted_mode->crtc_clock,
> +								    adjusted_mode->crtc_hdisplay,
> +								    pipe_config->bigjoiner_pipes,
> +								    pipe_config->output_format,
> +								    pipe_bpp,
> +								    timeslots);
> +			if (!dsc_max_compressed_bpp) {
>  				drm_dbg_kms(&dev_priv->drm,
>  					    "Compressed BPP not supported\n");
>  				return -EINVAL;
> @@ -1767,7 +1767,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  		 */
>  		if (compute_pipe_bpp) {
>  			pipe_config->dsc.compressed_bpp = min_t(u16,
> -								dsc_max_output_bpp >> 4,
> +								dsc_max_compressed_bpp >> 4,
>  								pipe_config->pipe_bpp);

Should that be min(max_compressed_bpp>>4, output_bpp) ?

The rest makes sense
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  		}
>  		pipe_config->dsc.slice_count = dsc_dp_slice_count;
> @@ -2143,7 +2143,7 @@ static bool can_enable_drrs(struct intel_connector *connector,
>  static void
>  intel_dp_drrs_compute_config(struct intel_connector *connector,
>  			     struct intel_crtc_state *pipe_config,
> -			     int output_bpp)
> +			     int link_bpp)
>  {
>  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	const struct drm_display_mode *downclock_mode =
> @@ -2168,7 +2168,7 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
>  	if (pipe_config->splitter.enable)
>  		pixel_clock /= pipe_config->splitter.link_count;
>  
> -	intel_link_compute_m_n(output_bpp, pipe_config->lane_count, pixel_clock,
> +	intel_link_compute_m_n(link_bpp, pipe_config->lane_count, pixel_clock,
>  			       pipe_config->port_clock, &pipe_config->dp_m2_n2,
>  			       pipe_config->fec_enable);
>  
> @@ -2265,7 +2265,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	const struct drm_display_mode *fixed_mode;
>  	struct intel_connector *connector = intel_dp->attached_connector;
> -	int ret = 0, output_bpp;
> +	int ret = 0, link_bpp;
>  
>  	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
>  		pipe_config->has_pch_encoder = true;
> @@ -2315,10 +2315,10 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  		intel_dp_limited_color_range(pipe_config, conn_state);
>  
>  	if (pipe_config->dsc.compression_enable)
> -		output_bpp = pipe_config->dsc.compressed_bpp;
> +		link_bpp = pipe_config->dsc.compressed_bpp;
>  	else
> -		output_bpp = intel_dp_output_bpp(pipe_config->output_format,
> -						 pipe_config->pipe_bpp);
> +		link_bpp = intel_dp_output_bpp(pipe_config->output_format,
> +					       pipe_config->pipe_bpp);
>  
>  	if (intel_dp->mso_link_count) {
>  		int n = intel_dp->mso_link_count;
> @@ -2342,7 +2342,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  
>  	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
>  
> -	intel_link_compute_m_n(output_bpp,
> +	intel_link_compute_m_n(link_bpp,
>  			       pipe_config->lane_count,
>  			       adjusted_mode->crtc_clock,
>  			       pipe_config->port_clock,
> @@ -2358,7 +2358,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  
>  	intel_vrr_compute_config(pipe_config, conn_state);
>  	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
> -	intel_dp_drrs_compute_config(connector, pipe_config, output_bpp);
> +	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp);
>  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
>  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 856172bfa13e..42b98546c140 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -103,13 +103,13 @@ void intel_read_dp_sdp(struct intel_encoder *encoder,
>  		       unsigned int type);
>  bool intel_digital_port_connected(struct intel_encoder *encoder);
>  int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
> -u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
> -				u32 link_clock, u32 lane_count,
> -				u32 mode_clock, u32 mode_hdisplay,
> -				bool bigjoiner,
> -				enum intel_output_format output_format,
> -				u32 pipe_bpp,
> -				u32 timeslots);
> +u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
> +					u32 link_clock, u32 lane_count,
> +					u32 mode_clock, u32 mode_hdisplay,
> +					bool bigjoiner,
> +					enum intel_output_format output_format,
> +					u32 pipe_bpp,
> +					u32 timeslots);
>  u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
>  				int mode_clock, int mode_hdisplay,
>  				bool bigjoiner);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index fec3f310fc9b..7b91c6c9c286 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -869,7 +869,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  	int max_rate, mode_rate, max_lanes, max_link_clock;
>  	int ret;
>  	bool dsc = false, bigjoiner = false;
> -	u16 dsc_max_output_bpp = 0;
> +	u16 dsc_max_compressed_bpp = 0;
>  	u8 dsc_slice_count = 0;
>  	int target_clock = mode->clock;
>  
> @@ -923,15 +923,15 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
>  
>  		if (drm_dp_sink_supports_fec(intel_dp->fec_capable)) {
> -			dsc_max_output_bpp =
> -				intel_dp_dsc_get_output_bpp(dev_priv,
> -							    max_link_clock,
> -							    max_lanes,
> -							    target_clock,
> -							    mode->hdisplay,
> -							    bigjoiner,
> -							    INTEL_OUTPUT_FORMAT_RGB,
> -							    pipe_bpp, 64) >> 4;
> +			dsc_max_compressed_bpp =
> +				intel_dp_dsc_get_max_compressed_bpp(dev_priv,
> +								    max_link_clock,
> +								    max_lanes,
> +								    target_clock,
> +								    mode->hdisplay,
> +								    bigjoiner,
> +								    INTEL_OUTPUT_FORMAT_RGB,
> +								    pipe_bpp, 64) >> 4;
>  			dsc_slice_count =
>  				intel_dp_dsc_get_slice_count(intel_dp,
>  							     target_clock,
> @@ -939,7 +939,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  							     bigjoiner);
>  		}
>  
> -		dsc = dsc_max_output_bpp && dsc_slice_count;
> +		dsc = dsc_max_compressed_bpp && dsc_slice_count;
>  	}
>  
>  	/*
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
