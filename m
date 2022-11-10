Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D70624C09
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 21:38:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D20C10E867;
	Thu, 10 Nov 2022 20:38:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7809A10E88E
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 20:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668112718; x=1699648718;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3gNPBmXxNYG4oxKJQh2eMCHWi51jv3SPrihPiY1MMvY=;
 b=KKzJC5UKtdnJqf4BuOPLXyER+T7+JPuSDXingAO0A3fpaAEJJQqec0YF
 lVgOjcLSe0VESMJKFK7Nnz1JEzisMM98C5SD40UXQh0PzG904pAM7oHXj
 mxzsqapp0OAxHja7qIhIb4gMPL3deYO3mGzxaGyD4TtyaBxvQzGyAmIQG
 s/6nSulcK5RKgFe7/OvHRww8ffK180VeCEhSViSlRNveaYFXr1SvSpKnA
 zvoPYX+XSX6Uisf6qYDsx/9ZNo67pYUIlFaR5JF8bGiTrGF63kIVhPrmg
 8F9P9Eil6AsAuZR02op99M6rZRp8JBf6yTgJUs9fI7HCzDssBuzN1yVFV g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="309063193"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="309063193"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 12:38:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="637323128"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="637323128"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 10 Nov 2022 12:38:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Nov 2022 22:38:20 +0200
Date: Thu, 10 Nov 2022 22:38:20 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <Y21hPPewENMIzCpk@intel.com>
References: <20221028094411.3673476-1-ankit.k.nautiyal@intel.com>
 <20221028094411.3673476-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221028094411.3673476-2-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v5 1/9] drm/i915/display: Add new member to
 configure PCON color conversion
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

On Fri, Oct 28, 2022 at 03:14:03PM +0530, Ankit Nautiyal wrote:
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
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  1 +
>  drivers/gpu/drm/i915/display/intel_crt.c      |  1 +
>  .../drm/i915/display/intel_crtc_state_dump.c  |  5 +--
>  drivers/gpu/drm/i915/display/intel_display.c  |  5 +++
>  .../drm/i915/display/intel_display_types.h    | 11 +++++-
>  drivers/gpu/drm/i915/display/intel_dp.c       | 34 +++++++++++++------
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  1 +
>  drivers/gpu/drm/i915/display/intel_dvo.c      |  1 +
>  drivers/gpu/drm/i915/display/intel_hdmi.c     | 24 ++++++++-----
>  drivers/gpu/drm/i915/display/intel_lvds.c     |  1 +
>  drivers/gpu/drm/i915/display/intel_tv.c       |  1 +
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |  1 +

We seem to miss intel_sdvo.c here. Apart from that looks nice.

With sdvo fixed
Reviewed-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>

>  12 files changed, 63 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index e05e7cd6c412..533563e94f58 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1666,6 +1666,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
>  		&pipe_config->hw.adjusted_mode;
>  	int ret;
>  
> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  
>  	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index 94d0a5e1dd03..1b46d10fc6f4 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -391,6 +391,7 @@ static int intel_crt_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index e9212f69c360..ed427b9cbf09 100644
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
> index 9697179309c4..6edb3f2af376 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3240,6 +3240,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
>  		return false;
>  
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> +	pipe_config->sink_format = pipe_config->output_format;
>  	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
>  	pipe_config->shared_dpll = NULL;
>  
> @@ -3699,6 +3700,8 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
>  		break;
>  	}
>  
> +	pipe_config->sink_format = pipe_config->output_format;
> +
>  	pipe_config->gamma_mode = REG_FIELD_GET(PIPECONF_GAMMA_MODE_MASK_ILK, tmp);
>  
>  	pipe_config->framestart_delay = REG_FIELD_GET(PIPECONF_FRAME_START_DELAY_MASK, tmp) + 1;
> @@ -4094,6 +4097,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>  			bdw_get_pipemisc_output_format(crtc);
>  	}
>  
> +	pipe_config->sink_format = pipe_config->output_format;
> +
>  	pipe_config->gamma_mode = intel_de_read(dev_priv,
>  						GAMMA_MODE(crtc->pipe));
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 609eeb5c7b71..924b7b656097 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1254,9 +1254,18 @@ struct intel_crtc_state {
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
> index 7400d6b4c587..0e4f7b467970 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -787,11 +787,12 @@ static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
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
> @@ -830,8 +831,14 @@ intel_dp_mode_min_output_bpp(struct intel_connector *connector,
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
> @@ -1984,23 +1991,28 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
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
> index cd4e61026d98..496795476213 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -147,6 +147,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->has_pch_encoder = false;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
> index 595087288922..8f5b5612cba8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -278,6 +278,7 @@ static int intel_dvo_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 93519fb23d9d..bd802ce69174 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2191,9 +2191,10 @@ static bool intel_hdmi_has_audio(struct intel_encoder *encoder,
>  
>  static enum intel_output_format
>  intel_hdmi_output_format(struct intel_connector *connector,
> -			 bool ycbcr_420_output)
> +			 enum intel_output_format sink_format)
>  {
> -	if (connector->base.ycbcr_420_allowed && ycbcr_420_output)
> +	if (connector->base.ycbcr_420_allowed &&
> +	    sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>  		return INTEL_OUTPUT_FORMAT_YCBCR420;
>  	else
>  		return INTEL_OUTPUT_FORMAT_RGB;
> @@ -2211,22 +2212,27 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
>  	bool ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
>  	int ret;
>  
> -	crtc_state->output_format = intel_hdmi_output_format(connector, ycbcr_420_only);
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
> +	crtc_state->output_format = intel_hdmi_output_format(connector,
> +							     crtc_state->sink_format);
>  	ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
>  	if (ret) {
> -		if (intel_hdmi_is_ycbcr420(crtc_state) ||
> -		    !connector->base.ycbcr_420_allowed ||
> +		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
>  		    !drm_mode_is_420_also(info, adjusted_mode))
>  			return ret;
>  
> -		crtc_state->output_format = intel_hdmi_output_format(connector, true);
> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> +		crtc_state->output_format = intel_hdmi_output_format(connector,
> +								     crtc_state->sink_format);
>  		ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> index 246787bbf5ef..6d98bc8789a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -439,6 +439,7 @@ static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
>  		pipe_config->pipe_bpp = lvds_bpp;
>  	}
>  
> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
> index cf7d5c1ab406..9fe1fdca8336 100644
> --- a/drivers/gpu/drm/i915/display/intel_tv.c
> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> @@ -1204,6 +1204,7 @@ intel_tv_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  
>  	drm_dbg_kms(&dev_priv->drm, "forcing bpc to 8 for TV\n");
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index 5a741ea4505f..11d9691c78cf 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -279,6 +279,7 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
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
Ville Syrj�l�
Intel
