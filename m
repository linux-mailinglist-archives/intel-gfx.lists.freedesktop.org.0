Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3998364780B
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 22:35:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB78C10E1F6;
	Thu,  8 Dec 2022 21:35:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06CC510E1F6
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 21:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670535303; x=1702071303;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lPhZYpdhAR2mn3imNT1bQ1LIFTHk0AncZq0aMoqFbAI=;
 b=dq8sgphNIMnA04WMSV4s3v4BOgS78+DUfvTMAb16zrvUENVBcIXc7Uj0
 +n3LznrJ8T6jLPpBblh901X6vhDf/rDVKwTLjNWvGrGoTSy0fHHiLHKHO
 +Ms5eLxckPcPIWp7Gxx6OEsngYvtnayD4jIUBPsBYj3bHTQadzQvYt9JP
 dEgN8oX+9e1p4odbbg9aOiNjGbMUSqXHzba7O4Nv7np8J731exVcOoa0I
 a313IEDWr/s/b9K57pdou5tOytXICxH98hEZr7gQO/jif/MyTAAGGZUj7
 ppEZTkPhjLEu09YHAOGGZ72eIfQNoTyi8IVUPbwJO5dCi0BtRp3Onzeb3 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="381616123"
X-IronPort-AV: E=Sophos;i="5.96,228,1665471600"; d="scan'208";a="381616123"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 13:35:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="597507423"
X-IronPort-AV: E=Sophos;i="5.96,228,1665471600"; d="scan'208";a="597507423"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga003.jf.intel.com with SMTP; 08 Dec 2022 13:34:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Dec 2022 23:34:58 +0200
Date: Thu, 8 Dec 2022 23:34:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <Y5JYgrd4rJMUtnyf@intel.com>
References: <20221202101028.803630-1-ankit.k.nautiyal@intel.com>
 <20221202101028.803630-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221202101028.803630-2-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v6 01/14] drm/i915/display: Add new member
 to configure PCON color conversion
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

On Fri, Dec 02, 2022 at 03:40:15PM +0530, Ankit Nautiyal wrote:
> The decision to use DFP output format conversion capabilities should be
> during compute_config phase.
> 
> This patch adds new member to crtc_state to represent the final
> output_format to the sink. In case of a DFP this can be different than
> the output_format, as per the format conversion done via the PCON.
> 
> This will help to store only the format conversion capabilities of the
> DP device in intel_dp->dfp, and use crtc_state to compute and store the
> configuration for color/format conversion for a given mode.
> 
> v2: modified the new member to crtc_state to represent the final
> output_format that eaches the sink, after possible conversion by
> PCON kind of devices. (Ville)
> 
> v3: Addressed comments from Ville:
> -Added comments to clarify difference between sink_format and
> output_format.
> -Corrected the order of setting sink_format and output_format.
> -Added readout for sink_format in get_pipe_config hooks.
> 
> v4: Set sink_format for intel_sdvo too. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> (v3)
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  1 +
>  drivers/gpu/drm/i915/display/intel_crt.c      |  1 +
>  .../drm/i915/display/intel_crtc_state_dump.c  |  5 +--
>  drivers/gpu/drm/i915/display/intel_display.c  |  5 +++
>  .../drm/i915/display/intel_display_types.h    | 11 +++++-
>  drivers/gpu/drm/i915/display/intel_dp.c       | 34 +++++++++++++------
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  1 +
>  drivers/gpu/drm/i915/display/intel_dvo.c      |  1 +
>  drivers/gpu/drm/i915/display/intel_hdmi.c     | 24 +++++++------
>  drivers/gpu/drm/i915/display/intel_lvds.c     |  1 +
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  1 +
>  drivers/gpu/drm/i915/display/intel_tv.c       |  1 +
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |  1 +
>  13 files changed, 62 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index d16b30a2dded..0ca0d23f42c6 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1667,6 +1667,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
>  		&pipe_config->hw.adjusted_mode;
>  	int ret;
>  
> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  
>  	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index 797ad9489f7e..eb5964b3ff95 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -393,6 +393,7 @@ static int intel_crt_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index e3273fe8ddac..9b61884851fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -163,10 +163,11 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>  
>  	snprintf_output_types(buf, sizeof(buf), pipe_config->output_types);
>  	drm_dbg_kms(&i915->drm,
> -		    "active: %s, output_types: %s (0x%x), output format: %s\n",
> +		    "active: %s, output_types: %s (0x%x), output format: %s, sink format: %s\n",
>  		    str_yes_no(pipe_config->hw.active),
>  		    buf, pipe_config->output_types,
> -		    output_formats(pipe_config->output_format));
> +		    output_formats(pipe_config->output_format),
> +		    output_formats(pipe_config->sink_format));
>  
>  	drm_dbg_kms(&i915->drm,
>  		    "cpu_transcoder: %s, pipe bpp: %i, dithering: %i\n",
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 32b257157186..789667e1b2cb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3242,6 +3242,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
>  		return false;
>  
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> +	pipe_config->sink_format = pipe_config->output_format;
>  	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
>  	pipe_config->shared_dpll = NULL;
>  
> @@ -3701,6 +3702,8 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
>  		break;
>  	}
>  
> +	pipe_config->sink_format = pipe_config->output_format;
> +
>  	pipe_config->gamma_mode = REG_FIELD_GET(PIPECONF_GAMMA_MODE_MASK_ILK, tmp);
>  
>  	pipe_config->framestart_delay = REG_FIELD_GET(PIPECONF_FRAME_START_DELAY_MASK, tmp) + 1;
> @@ -4099,6 +4102,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>  			bdw_get_pipemisc_output_format(crtc);
>  	}
>  
> +	pipe_config->sink_format = pipe_config->output_format;
> +
>  	pipe_config->gamma_mode = intel_de_read(dev_priv,
>  						GAMMA_MODE(crtc->pipe));
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index ff3ef37d099e..136866615223 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1267,9 +1267,18 @@ struct intel_crtc_state {
>  	/* HDMI High TMDS char rate ratio */
>  	bool hdmi_high_tmds_clock_ratio;
>  
> -	/* Output format RGB/YCBCR etc */
> +	/*
> +	 * Output format RGB/YCBCR etc., that is coming out
> +	 * at the end of the pipe.
> +	 */
>  	enum intel_output_format output_format;
>  
> +	/*
> +	 * Sink output format RGB/YCBCR etc., that is going
> +	 * into the sink.
> +	 */
> +	enum intel_output_format sink_format;
> +
>  	/* enable pipe gamma? */
>  	bool gamma_enable;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1607c86af025..3ec8a248a928 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -788,11 +788,12 @@ static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
>  
>  static enum intel_output_format
>  intel_dp_output_format(struct intel_connector *connector,
> -		       bool ycbcr_420_output)
> +		       enum intel_output_format sink_format)
>  {
>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
>  
> -	if (!connector->base.ycbcr_420_allowed || !ycbcr_420_output)
> +	if (!connector->base.ycbcr_420_allowed ||
> +	    sink_format != INTEL_OUTPUT_FORMAT_YCBCR420)
>  		return INTEL_OUTPUT_FORMAT_RGB;
>  
>  	if (intel_dp->dfp.rgb_to_ycbcr &&
> @@ -831,8 +832,14 @@ intel_dp_mode_min_output_bpp(struct intel_connector *connector,
>  			     const struct drm_display_mode *mode)
>  {
>  	const struct drm_display_info *info = &connector->base.display_info;
> -	enum intel_output_format output_format =
> -		intel_dp_output_format(connector, drm_mode_is_420_only(info, mode));
> +	enum intel_output_format output_format, sink_format;
> +
> +	if (drm_mode_is_420_only(info, mode))
> +		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> +	else
> +		sink_format = INTEL_OUTPUT_FORMAT_RGB;
> +
> +	output_format = intel_dp_output_format(connector, sink_format);
>  
>  	return intel_dp_output_bpp(output_format, intel_dp_min_bpp(output_format));
>  }
> @@ -1985,23 +1992,28 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>  
>  	ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
>  
> -	crtc_state->output_format = intel_dp_output_format(connector, ycbcr_420_only);
> -
> -	if (ycbcr_420_only && !intel_dp_is_ycbcr420(intel_dp, crtc_state)) {
> +	if (ycbcr_420_only && !connector->base.ycbcr_420_allowed) {
>  		drm_dbg_kms(&i915->drm,
>  			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
> -		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> +	} else if (ycbcr_420_only) {
> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> +	} else {
> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	}
>  
> +	crtc_state->output_format = intel_dp_output_format(connector, crtc_state->sink_format);
> +
>  	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>  					   respect_downstream_limits);
>  	if (ret) {
> -		if (intel_dp_is_ycbcr420(intel_dp, crtc_state) ||
> -		    !connector->base.ycbcr_420_allowed ||

Hmm. Where did that ycbcr_420_allowed check go? It seems we'll now try
to enable things thinking we can somehow output 4:2:0 when in fact we
can't. Same issue in the HDMI path.

> +		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
>  		    !drm_mode_is_420_also(info, adjusted_mode))
>  			return ret;
>  
> -		crtc_state->output_format = intel_dp_output_format(connector, true);
> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> +		crtc_state->output_format = intel_dp_output_format(connector,
> +								   crtc_state->sink_format);
>  		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>  						   respect_downstream_limits);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 4077a979a924..e53e7ece624c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -148,6 +148,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->has_pch_encoder = false;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
> index 4aeae0f3ac91..68ba70751527 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -271,6 +271,7 @@ static int intel_dvo_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index e82f8a07e2b0..0dd60bb9d7e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2190,13 +2190,13 @@ static bool intel_hdmi_has_audio(struct intel_encoder *encoder,
>  
>  static enum intel_output_format
>  intel_hdmi_output_format(const struct intel_crtc_state *crtc_state,
> -			 struct intel_connector *connector,
> -			 bool ycbcr_420_output)
> +			 struct intel_connector *connector)
>  {
>  	if (!crtc_state->has_hdmi_sink)
>  		return INTEL_OUTPUT_FORMAT_RGB;
>  
> -	if (connector->base.ycbcr_420_allowed && ycbcr_420_output)
> +	if (connector->base.ycbcr_420_allowed &&
> +	    crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>  		return INTEL_OUTPUT_FORMAT_YCBCR420;
>  	else
>  		return INTEL_OUTPUT_FORMAT_RGB;
> @@ -2214,23 +2214,25 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
>  	bool ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
>  	int ret;
>  
> -	crtc_state->output_format =
> -		intel_hdmi_output_format(crtc_state, connector, ycbcr_420_only);
> -
> -	if (ycbcr_420_only && !intel_hdmi_is_ycbcr420(crtc_state)) {
> +	if (ycbcr_420_only && !connector->base.ycbcr_420_allowed) {
>  		drm_dbg_kms(&i915->drm,
>  			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
> -		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> +	} else if (ycbcr_420_only) {
> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> +	} else {
> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	}
>  
> +	crtc_state->output_format = intel_hdmi_output_format(crtc_state, connector);
>  	ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
>  	if (ret) {
> -		if (intel_hdmi_is_ycbcr420(crtc_state) ||
> -		    !connector->base.ycbcr_420_allowed ||
> +		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
>  		    !drm_mode_is_420_also(info, adjusted_mode))
>  			return ret;
>  
> -		crtc_state->output_format = intel_hdmi_output_format(crtc_state, connector, true);
> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> +		crtc_state->output_format = intel_hdmi_output_format(crtc_state, connector);
>  		ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> index 7bf1bdfd03ec..ee526fef2276 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -440,6 +440,7 @@ static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
>  		pipe_config->pipe_bpp = lvds_bpp;
>  	}
>  
> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
> index 329b9d9af667..f6b09412da5a 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -1327,6 +1327,7 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
>  
>  	DRM_DEBUG_KMS("forcing bpc to 8 for SDVO\n");
>  	pipe_config->pipe_bpp = 8*3;
> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  
>  	if (HAS_PCH_SPLIT(to_i915(encoder->base.dev)))
> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
> index b986bf075889..2a205a21d0c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_tv.c
> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> @@ -1206,6 +1206,7 @@ intel_tv_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  
>  	drm_dbg_kms(&dev_priv->drm, "forcing bpc to 8 for TV\n");
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index 84481030883a..1958774860dc 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -280,6 +280,7 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
>  	int ret;
>  
>  	drm_dbg_kms(&dev_priv->drm, "\n");
> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  
>  	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
