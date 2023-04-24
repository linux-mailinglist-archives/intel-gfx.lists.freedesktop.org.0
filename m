Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 070B26ECC21
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 14:37:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3548410E4E7;
	Mon, 24 Apr 2023 12:37:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 643D010E4E7
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Apr 2023 12:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682339861; x=1713875861;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NvolCzwVvuGKO1Cm50t6UemoQr5sEemdkXKl7WgQPWs=;
 b=agk6F0RSwHMRFnB1bK458MJsdWlrfMD9MzvJzxl9MT7IE89eTBsFAPS/
 JCGXImO83gSxHbRDAtq12cqF0D1ASy0aB4TNfeT4eP8ACLqFvDvnPKIKC
 BDzSo1O98ihnj1FzJ2hb146MXZxIOqkYdhOXzfQCqoykhqi5JbvU5Zhfk
 /4kwnCSmCvU2wauGI4CC6D2O0NBtif+LEbo/xFfVHmtRdKanJr3kaYA03
 47Faj0jcB+E4U5pQs4j8i2yHQfIo1JOOgN3tupRArNbb76+Ls8XyTmK81
 h78Y96wK30b6wEg0Pqm21R+NTHXFhRe20Qtx1sin8VixilR/K2T6X3EQg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10689"; a="411716972"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="411716972"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 05:37:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="686827683"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="686827683"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 24 Apr 2023 05:37:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Apr 2023 15:37:29 +0300
Date: Mon, 24 Apr 2023 15:37:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <ZEZ4CU0r4sKRR4wq@intel.com>
References: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
 <20230331101613.936776-6-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230331101613.936776-6-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 05/13] drm/i915/display: Use sink_format
 instead of ycbcr420_output flag
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

On Fri, Mar 31, 2023 at 03:46:05PM +0530, Ankit Nautiyal wrote:
> Start passing the sink_format, to all functions that take a bool
> ycbcr420_output as parameter. This will make the functions generic,
> and will serve as a slight step towards 4:2:2 support later.
> 
> v2: Rebased.
> 
> v3: Correct the checks in places concerned with pipe output. (Ville)
> Other minor styling and refactoring fixes, as suggested by Ville.
> 
> Suggested-by: Ville Syrj_l_ <ville.syrjala@linux.intel.com>

Name borked here.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c   | 32 ++++++++---------
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 44 ++++++++++++++---------
>  drivers/gpu/drm/i915/display/intel_hdmi.h |  5 +--
>  3 files changed, 45 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index c3f3003c52ca..ce9384a0d153 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -987,7 +987,8 @@ static int intel_dp_max_tmds_clock(struct intel_dp *intel_dp)
>  
>  static enum drm_mode_status
>  intel_dp_tmds_clock_valid(struct intel_dp *intel_dp,
> -			  int clock, int bpc, bool ycbcr420_output,
> +			  int clock, int bpc,
> +			  enum intel_output_format sink_format,
>  			  bool respect_downstream_limits)
>  {
>  	int tmds_clock, min_tmds_clock, max_tmds_clock;
> @@ -995,7 +996,7 @@ intel_dp_tmds_clock_valid(struct intel_dp *intel_dp,
>  	if (!respect_downstream_limits)
>  		return MODE_OK;
>  
> -	tmds_clock = intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output);
> +	tmds_clock = intel_hdmi_tmds_clock(clock, bpc, sink_format);
>  
>  	min_tmds_clock = intel_dp->dfp.min_tmds_clock;
>  	max_tmds_clock = intel_dp_max_tmds_clock(intel_dp);
> @@ -1018,6 +1019,7 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>  	const struct drm_display_info *info = &connector->base.display_info;
>  	enum drm_mode_status status;
>  	bool ycbcr_420_only;
> +	enum intel_output_format sink_format;
>  
>  	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
>  	if (intel_dp->dfp.pcon_max_frl_bw) {
> @@ -1044,18 +1046,23 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>  
>  	ycbcr_420_only = drm_mode_is_420_only(info, mode);
>  
> +	if (ycbcr_420_only)
> +		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> +	else
> +		sink_format = INTEL_OUTPUT_FORMAT_RGB;
> +
>  	/* Assume 8bpc for the DP++/HDMI/DVI TMDS clock check */
>  	status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
> -					   8, ycbcr_420_only, true);
> +					   8, sink_format, true);
>  
>  	if (status != MODE_OK) {
> -		if (ycbcr_420_only ||
> +		if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
>  		    !connector->base.ycbcr_420_allowed ||
>  		    !drm_mode_is_420_also(info, mode))
>  			return status;
> -
> +		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>  		status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
> -						   8, true, true);
> +						   8, sink_format, true);
>  		if (status != MODE_OK)
>  			return status;
>  	}
> @@ -1291,19 +1298,10 @@ static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
>  		drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd);
>  }
>  
> -static bool intel_dp_is_ycbcr420(struct intel_dp *intel_dp,
> -				 const struct intel_crtc_state *crtc_state)
> -{
> -	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
> -		(crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
> -		 intel_dp->dfp.ycbcr_444_to_420);
> -}
> -
>  static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
>  				     const struct intel_crtc_state *crtc_state,
>  				     int bpc, bool respect_downstream_limits)
>  {
> -	bool ycbcr420_output = intel_dp_is_ycbcr420(intel_dp, crtc_state);
>  	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
>  
>  	/*
> @@ -1323,8 +1321,8 @@ static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
>  
>  	for (; bpc >= 8; bpc -= 2) {
>  		if (intel_hdmi_bpc_possible(crtc_state, bpc,
> -					    intel_dp->has_hdmi_sink, ycbcr420_output) &&
> -		    intel_dp_tmds_clock_valid(intel_dp, clock, bpc, ycbcr420_output,
> +					    intel_dp->has_hdmi_sink) &&
> +		    intel_dp_tmds_clock_valid(intel_dp, clock, bpc, crtc_state->sink_format,
>  					      respect_downstream_limits) == MODE_OK)
>  			return bpc;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index f3af5efd281b..22990841c1bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1871,10 +1871,11 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
>  	return MODE_OK;
>  }
>  
> -int intel_hdmi_tmds_clock(int clock, int bpc, bool ycbcr420_output)
> +int intel_hdmi_tmds_clock(int clock, int bpc,
> +			  enum intel_output_format sink_format)
>  {
>  	/* YCBCR420 TMDS rate requirement is half the pixel clock */
> -	if (ycbcr420_output)
> +	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>  		clock /= 2;
>  
>  	/*
> @@ -1901,7 +1902,8 @@ static bool intel_hdmi_source_bpc_possible(struct drm_i915_private *i915, int bp
>  }
>  
>  static bool intel_hdmi_sink_bpc_possible(struct drm_connector *connector,
> -					 int bpc, bool has_hdmi_sink, bool ycbcr420_output)
> +					 int bpc, bool has_hdmi_sink,
> +					 enum intel_output_format sink_format)
>  {
>  	const struct drm_display_info *info = &connector->display_info;
>  	const struct drm_hdmi_info *hdmi = &info->hdmi;
> @@ -1911,7 +1913,7 @@ static bool intel_hdmi_sink_bpc_possible(struct drm_connector *connector,
>  		if (!has_hdmi_sink)
>  			return false;
>  
> -		if (ycbcr420_output)
> +		if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>  			return hdmi->y420_dc_modes & DRM_EDID_YCBCR420_DC_36;
>  		else
>  			return info->edid_hdmi_rgb444_dc_modes & DRM_EDID_HDMI_DC_36;
> @@ -1919,7 +1921,7 @@ static bool intel_hdmi_sink_bpc_possible(struct drm_connector *connector,
>  		if (!has_hdmi_sink)
>  			return false;
>  
> -		if (ycbcr420_output)
> +		if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>  			return hdmi->y420_dc_modes & DRM_EDID_YCBCR420_DC_30;
>  		else
>  			return info->edid_hdmi_rgb444_dc_modes & DRM_EDID_HDMI_DC_30;
> @@ -1933,7 +1935,8 @@ static bool intel_hdmi_sink_bpc_possible(struct drm_connector *connector,
>  
>  static enum drm_mode_status
>  intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
> -			    bool has_hdmi_sink, bool ycbcr420_output)
> +			    bool has_hdmi_sink,
> +			    enum intel_output_format sink_format)
>  {
>  	struct drm_i915_private *i915 = to_i915(connector->dev);
>  	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
> @@ -1946,12 +1949,12 @@ intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
>  	 * least one color depth is accepted.
>  	 */
>  	for (bpc = 12; bpc >= 8; bpc -= 2) {
> -		int tmds_clock = intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output);
> +		int tmds_clock = intel_hdmi_tmds_clock(clock, bpc, sink_format);
>  
>  		if (!intel_hdmi_source_bpc_possible(i915, bpc))
>  			continue;
>  
> -		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink, ycbcr420_output))
> +		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink, sink_format))
>  			continue;
>  
>  		status = hdmi_port_clock_valid(hdmi, tmds_clock, true, has_hdmi_sink);
> @@ -1976,6 +1979,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
>  	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
>  	bool has_hdmi_sink = intel_has_hdmi_sink(hdmi, connector->state);
>  	bool ycbcr_420_only;
> +	enum intel_output_format sink_format;
>  
>  	if ((mode->flags & DRM_MODE_FLAG_3D_MASK) == DRM_MODE_FLAG_3D_FRAME_PACKING)
>  		clock *= 2;
> @@ -2000,14 +2004,20 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
>  
>  	ycbcr_420_only = drm_mode_is_420_only(&connector->display_info, mode);
>  
> -	status = intel_hdmi_mode_clock_valid(connector, clock, has_hdmi_sink, ycbcr_420_only);
> +	if (ycbcr_420_only)
> +		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> +	else
> +		sink_format = INTEL_OUTPUT_FORMAT_RGB;
> +
> +	status = intel_hdmi_mode_clock_valid(connector, clock, has_hdmi_sink, sink_format);
>  	if (status != MODE_OK) {
>  		if (ycbcr_420_only ||
>  		    !connector->ycbcr_420_allowed ||
>  		    !drm_mode_is_420_also(&connector->display_info, mode))
>  			return status;
>  
> -		status = intel_hdmi_mode_clock_valid(connector, clock, has_hdmi_sink, true);
> +		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> +		status = intel_hdmi_mode_clock_valid(connector, clock, has_hdmi_sink, sink_format);
>  		if (status != MODE_OK)
>  			return status;
>  	}
> @@ -2016,7 +2026,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
>  }
>  
>  bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
> -			     int bpc, bool has_hdmi_sink, bool ycbcr420_output)
> +			     int bpc, bool has_hdmi_sink)
>  {
>  	struct drm_atomic_state *state = crtc_state->uapi.state;
>  	struct drm_connector_state *connector_state;
> @@ -2027,7 +2037,8 @@ bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
>  		if (connector_state->crtc != crtc_state->uapi.crtc)
>  			continue;
>  
> -		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink, ycbcr420_output))
> +		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink,
> +						  crtc_state->sink_format))
>  			return false;
>  	}
>  
> @@ -2051,8 +2062,7 @@ static bool hdmi_bpc_possible(const struct intel_crtc_state *crtc_state, int bpc
>  	     adjusted_mode->crtc_hblank_start) % 8 == 2)
>  		return false;
>  
> -	return intel_hdmi_bpc_possible(crtc_state, bpc, crtc_state->has_hdmi_sink,
> -				       intel_hdmi_is_ycbcr420(crtc_state));
> +	return intel_hdmi_bpc_possible(crtc_state, bpc, crtc_state->has_hdmi_sink);
>  }
>  
>  static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
> @@ -2060,7 +2070,6 @@ static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
>  				  int clock, bool respect_downstream_limits)
>  {
>  	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
> -	bool ycbcr420_output = intel_hdmi_is_ycbcr420(crtc_state);
>  	int bpc;
>  
>  	/*
> @@ -2078,7 +2087,8 @@ static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
>  		bpc = 8;
>  
>  	for (; bpc >= 8; bpc -= 2) {
> -		int tmds_clock = intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output);
> +		int tmds_clock = intel_hdmi_tmds_clock(clock, bpc,
> +						       crtc_state->sink_format);
>  
>  		if (hdmi_bpc_possible(crtc_state, bpc) &&
>  		    hdmi_port_clock_valid(intel_hdmi, tmds_clock,
> @@ -2108,7 +2118,7 @@ static int intel_hdmi_compute_clock(struct intel_encoder *encoder,
>  		return bpc;
>  
>  	crtc_state->port_clock =
> -		intel_hdmi_tmds_clock(clock, bpc, intel_hdmi_is_ycbcr420(crtc_state));
> +		intel_hdmi_tmds_clock(clock, bpc, crtc_state->sink_format);
>  
>  	/*
>  	 * pipe_bpp could already be below 8bpc due to
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
> index 774dda2376ed..d1e27247b657 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
> @@ -9,6 +9,7 @@
>  #include <linux/types.h>
>  
>  enum hdmi_infoframe_type;
> +enum intel_output_format;
>  enum port;
>  struct drm_connector;
>  struct drm_connector_state;
> @@ -45,8 +46,8 @@ void intel_read_infoframe(struct intel_encoder *encoder,
>  bool intel_hdmi_limited_color_range(const struct intel_crtc_state *crtc_state,
>  				    const struct drm_connector_state *conn_state);
>  bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
> -			     int bpc, bool has_hdmi_sink, bool ycbcr420_output);
> -int intel_hdmi_tmds_clock(int clock, int bpc, bool ycbcr420_output);
> +			     int bpc, bool has_hdmi_sink);
> +int intel_hdmi_tmds_clock(int clock, int bpc, enum intel_output_format sink_format);
>  int intel_hdmi_dsc_get_bpp(int src_fractional_bpp, int slice_width,
>  			   int num_slices, int output_format, bool hdmi_all_bpp,
>  			   int hdmi_max_chunk_bytes);
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
