Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 699C4495D23
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 10:57:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F88210E9C2;
	Fri, 21 Jan 2022 09:57:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A46010E9C2
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 09:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642759065; x=1674295065;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HKSw80MpswAhuWo7IXtlWQUWFohJ5ZnXFNCzs+1Qr5M=;
 b=R4y4Jaf+ikLnPqHB/EYf3v2PXO3O2vAwSz0aDjo6GLLa3tlRLWngf3IQ
 WDRHHtfgtZX7fE0tfAzDf7qbiAriH3YXp7j0bu/LPugauOw9NnposRm39
 atO4tQU/pXO5dm9LvinmdI+MXl8EKUkwhOHl5qz3ShHqyfe26+xzTG/C1
 p/u/fDNUShrgRgPV77fOwxSuwxhgTlaqi51f6WSMP6G7LGdY6boeLO/q3
 r/xH2FjU0OgzhLO2Mex4mz6YCnAmK/Ww+S16Ne4FzoZRU1lP8mEK0OpP3
 Rqv4qnevpJ5eJhUAFZO5MMGwR4LsQF77eLvIh5Y0orwuzYUWzi6gXrudV A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="245402338"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="245402338"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 01:57:44 -0800
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="533212099"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 01:57:42 -0800
Date: Fri, 21 Jan 2022 11:57:41 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220121095741.GA10059@intel.com>
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
 <20211015133921.4609-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211015133921.4609-7-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 06/20] drm/i915/hdmi: Clean up TMDS clock
 limit exceeding user mode handling
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

On Fri, Oct 15, 2021 at 04:39:07PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Currently we just use all the hdmi_deep_color_possible() stuff
> to compute whether deep color is possible, and leave the 8bpc
> case to do its own thing. That doesn't mesh super well with 4:2:0
> handling because we might end up going for 8bpc RGB without
> considering that it's essentially illegal and we could instead
> go for a legal 4:2:0 config.
> 
> So let's run through all the clock checks even for 8bpc first.
> If we've fully exhausted all options only then do we re-run
> the computation for 8bpc while ignoring the downstream TMDS
> clock limits. This will guarantee that if there's a config
> that respects all limits we will find it, and if there is not
> we still allow the user to override the mode manually.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c   | 13 ++--
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 92 +++++++++++++----------
>  drivers/gpu/drm/i915/display/intel_hdmi.h |  4 +-
>  3 files changed, 62 insertions(+), 47 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 9d8132dd4cc5..5cc99ffc1841 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1097,14 +1097,13 @@ static bool intel_dp_hdmi_tmds_clock_valid(struct intel_dp *intel_dp,
>  	return true;
>  }
>  
> -static bool intel_dp_hdmi_deep_color_possible(struct intel_dp *intel_dp,
> -					      const struct intel_crtc_state *crtc_state,
> -					      int bpc)
> +static bool intel_dp_hdmi_bpc_possible(struct intel_dp *intel_dp,
> +				       const struct intel_crtc_state *crtc_state,
> +				       int bpc)
>  {
>  
> -	return intel_hdmi_deep_color_possible(crtc_state, bpc,
> -					      intel_dp->has_hdmi_sink,
> -					      intel_dp_hdmi_ycbcr420(intel_dp, crtc_state)) &&
> +	return intel_hdmi_bpc_possible(crtc_state, bpc, intel_dp->has_hdmi_sink,
> +				       intel_dp_hdmi_ycbcr420(intel_dp, crtc_state)) &&
>  		intel_dp_hdmi_tmds_clock_valid(intel_dp, crtc_state, bpc);
>  }
>  
> @@ -1122,7 +1121,7 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
>  
>  	if (intel_dp->dfp.min_tmds_clock) {
>  		for (; bpc >= 10; bpc -= 2) {
> -			if (intel_dp_hdmi_deep_color_possible(intel_dp, crtc_state, bpc))
> +			if (intel_dp_hdmi_bpc_possible(intel_dp, crtc_state, bpc))
>  				break;
>  		}
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 7e6af959bf83..b5af986b2778 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2001,17 +2001,14 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
>  	return intel_mode_valid_max_plane_size(dev_priv, mode, false);
>  }
>  
> -bool intel_hdmi_deep_color_possible(const struct intel_crtc_state *crtc_state,
> -				    int bpc, bool has_hdmi_sink, bool ycbcr420_output)
> +bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
> +			     int bpc, bool has_hdmi_sink, bool ycbcr420_output)
>  {
>  	struct drm_atomic_state *state = crtc_state->uapi.state;
>  	struct drm_connector_state *connector_state;
>  	struct drm_connector *connector;
>  	int i;
>  
> -	if (crtc_state->pipe_bpp < bpc * 3)
> -		return false;
> -
>  	for_each_new_connector_in_state(state, connector, connector_state, i) {
>  		if (connector_state->crtc != crtc_state->uapi.crtc)
>  			continue;
> @@ -2023,8 +2020,7 @@ bool intel_hdmi_deep_color_possible(const struct intel_crtc_state *crtc_state,
>  	return true;
>  }
>  
> -static bool hdmi_deep_color_possible(const struct intel_crtc_state *crtc_state,
> -				     int bpc)
> +static bool hdmi_bpc_possible(const struct intel_crtc_state *crtc_state, int bpc)
>  {
>  	struct drm_i915_private *dev_priv =
>  		to_i915(crtc_state->uapi.crtc->dev);
> @@ -2038,7 +2034,7 @@ static bool hdmi_deep_color_possible(const struct intel_crtc_state *crtc_state,
>  	 * HDMI deep color affects the clocks, so it's only possible
>  	 * when not cloning with other encoder types.
>  	 */
> -	if (crtc_state->output_types != BIT(INTEL_OUTPUT_HDMI))
> +	if (bpc > 8 && crtc_state->output_types != BIT(INTEL_OUTPUT_HDMI))
>  		return false;
>  
>  	/* Display Wa_1405510057:icl,ehl */
> @@ -2048,35 +2044,50 @@ static bool hdmi_deep_color_possible(const struct intel_crtc_state *crtc_state,
>  	     adjusted_mode->crtc_hblank_start) % 8 == 2)
>  		return false;
>  
> -	return intel_hdmi_deep_color_possible(crtc_state, bpc,
> -					      crtc_state->has_hdmi_sink,
> -					      intel_hdmi_is_ycbcr420(crtc_state));
> +	return intel_hdmi_bpc_possible(crtc_state, bpc, crtc_state->has_hdmi_sink,
> +				       intel_hdmi_is_ycbcr420(crtc_state));
>  }
>  
>  static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
>  				  struct intel_crtc_state *crtc_state,
> -				  int clock)
> +				  int clock, bool respect_downstream_limits)
>  {
>  	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
>  	bool ycbcr420_output = intel_hdmi_is_ycbcr420(crtc_state);
>  	int bpc;
>  
> -	for (bpc = 12; bpc >= 10; bpc -= 2) {
> -		if (hdmi_deep_color_possible(crtc_state, bpc) &&
> -		    hdmi_port_clock_valid(intel_hdmi,
> -					  intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output),
> -					  true, crtc_state->has_hdmi_sink) == MODE_OK)
> +	/*
> +	 * pipe_bpp could already be below 8bpc due to FDI
> +	 * bandwidth constraints. HDMI minimum is 8bpc however.
> +	 */
> +	bpc = max(crtc_state->pipe_bpp / 3, 8);
> +
> +	/*
> +	 * We will never exceed downstream TMDS clock limits while
> +	 * attempting deep color. If the user insists on forcing an
> +	 * out of spec mode they will have to be satisfied with 8bpc.
> +	 */
> +	if (!respect_downstream_limits)
> +		bpc = 8;
> +
> +	for (; bpc >= 8; bpc -= 2) {
> +		int tmds_clock = intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output);
> +
> +		if (hdmi_bpc_possible(crtc_state, bpc) &&
> +		    hdmi_port_clock_valid(intel_hdmi, tmds_clock,
> +					  respect_downstream_limits,
> +					  crtc_state->has_hdmi_sink) == MODE_OK)
>  			return bpc;
>  	}
>  
> -	return 8;
> +	return -EINVAL;
>  }
>  
>  static int intel_hdmi_compute_clock(struct intel_encoder *encoder,
> -				    struct intel_crtc_state *crtc_state)
> +				    struct intel_crtc_state *crtc_state,
> +				    bool respect_downstream_limits)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
>  	int bpc, clock = adjusted_mode->crtc_clock;
> @@ -2084,31 +2095,25 @@ static int intel_hdmi_compute_clock(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK)
>  		clock *= 2;
>  
> -	bpc = intel_hdmi_compute_bpc(encoder, crtc_state, clock);
> +	bpc = intel_hdmi_compute_bpc(encoder, crtc_state, clock,
> +				     respect_downstream_limits);
> +	if (bpc < 0)
> +		return bpc;
>  
> -	crtc_state->port_clock = intel_hdmi_tmds_clock(clock, bpc,
> -						       intel_hdmi_is_ycbcr420(crtc_state));
> +	crtc_state->port_clock =
> +		intel_hdmi_tmds_clock(clock, bpc, intel_hdmi_is_ycbcr420(crtc_state));
>  
>  	/*
>  	 * pipe_bpp could already be below 8bpc due to
>  	 * FDI bandwidth constraints. We shouldn't bump it
> -	 * back up to 8bpc in that case.
> +	 * back up to the HDMI minimum 8bpc in that case.
>  	 */
> -	if (crtc_state->pipe_bpp > bpc * 3)
> -		crtc_state->pipe_bpp = bpc * 3;
> +	crtc_state->pipe_bpp = min(crtc_state->pipe_bpp, bpc * 3);
>  
>  	drm_dbg_kms(&i915->drm,
>  		    "picking %d bpc for HDMI output (pipe bpp: %d)\n",
>  		    bpc, crtc_state->pipe_bpp);
>  
> -	if (hdmi_port_clock_valid(intel_hdmi, crtc_state->port_clock,
> -				  false, crtc_state->has_hdmi_sink) != MODE_OK) {
> -		drm_dbg_kms(&i915->drm,
> -			    "unsupported HDMI clock (%d kHz), rejecting mode\n",
> -			    crtc_state->port_clock);
> -		return -EINVAL;
> -	}
> -
>  	return 0;
>  }
>  
> @@ -2169,7 +2174,8 @@ intel_hdmi_output_format(struct intel_connector *connector,
>  
>  static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
>  					    struct intel_crtc_state *crtc_state,
> -					    const struct drm_connector_state *conn_state)
> +					    const struct drm_connector_state *conn_state,
> +					    bool respect_downstream_limits)
>  {
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> @@ -2186,7 +2192,7 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
>  		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  	}
>  
> -	ret = intel_hdmi_compute_clock(encoder, crtc_state);
> +	ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
>  	if (ret) {
>  		if (intel_hdmi_is_ycbcr420(crtc_state) ||
>  		    !connector->base.ycbcr_420_allowed ||
> @@ -2194,7 +2200,7 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
>  			return ret;
>  
>  		crtc_state->output_format = intel_hdmi_output_format(connector, true);
> -		ret = intel_hdmi_compute_clock(encoder, crtc_state);
> +		ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
>  	}
>  
>  	return ret;
> @@ -2230,9 +2236,19 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  	pipe_config->has_audio =
>  		intel_hdmi_has_audio(encoder, pipe_config, conn_state);
>  
> -	ret = intel_hdmi_compute_output_format(encoder, pipe_config, conn_state);
> +	/*
> +	 * Try to respect downstream TMDS clock limits first, if
> +	 * that fails assume the user might know something we don't.
> +	 */
> +	ret = intel_hdmi_compute_output_format(encoder, pipe_config, conn_state, true);
>  	if (ret)
> +		ret = intel_hdmi_compute_output_format(encoder, pipe_config, conn_state, false);
> +	if (ret) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "unsupported HDMI clock (%d kHz), rejecting mode\n",
> +			    pipe_config->hw.adjusted_mode.crtc_clock);
>  		return ret;
> +	}
>  
>  	if (intel_hdmi_is_ycbcr420(pipe_config)) {
>  		ret = intel_panel_fitting(pipe_config, conn_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
> index b43a180d007e..ee144db67e66 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
> @@ -45,8 +45,8 @@ void intel_read_infoframe(struct intel_encoder *encoder,
>  			  union hdmi_infoframe *frame);
>  bool intel_hdmi_limited_color_range(const struct intel_crtc_state *crtc_state,
>  				    const struct drm_connector_state *conn_state);
> -bool intel_hdmi_deep_color_possible(const struct intel_crtc_state *crtc_state, int bpc,
> -				    bool has_hdmi_sink, bool ycbcr420_output);
> +bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
> +			     int bpc, bool has_hdmi_sink, bool ycbcr420_output);
>  int intel_hdmi_dsc_get_bpp(int src_fractional_bpp, int slice_width,
>  			   int num_slices, int output_format, bool hdmi_all_bpp,
>  			   int hdmi_max_chunk_bytes);
> -- 
> 2.32.0
> 
