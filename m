Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A46589C4284
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 17:22:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18CA910E19F;
	Mon, 11 Nov 2024 16:21:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UajoMBkL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8551210E12B;
 Mon, 11 Nov 2024 16:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731342118; x=1762878118;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Oo45N3KmhWDz5EXRwf7dG/2QzpsbJ4Ib8q/FKSUMf34=;
 b=UajoMBkL13iuOGixwxQmA+JhBV3dpVH2ZfFAZNhbcgPFzdYMEKSRrprt
 L66z1WBORpNdJrOYk333yWuIfvZoDrj2iMOsx7amOOQWGUCPBqHO+GdW9
 8XhfLrqR6KdI/tqdtRBMgp4AsGTV8hZ/qgLINysILjyWzpGW0vm/2YxvZ
 ZTbXmA4QwVe8ISYZkN3qAqGy5bkECzT6jAqb2A1kcRGwTiSOyXz/Xp0Ky
 smvsHl/Eb13fAJeTPstwvBnGlCet09FJPbXSDrN2Bo/k119v119g97RFC
 rXvRz3De3Gl6KcCds4X5M93rRB0ZvzDY9Q6nuEX+35W6hwPyXl06fnGyJ A==;
X-CSE-ConnectionGUID: ci4ei6rhRoiZHibJ+pgQWw==
X-CSE-MsgGUID: C25NRldAS1uX5/jDGCLOkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30919652"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30919652"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 08:21:58 -0800
X-CSE-ConnectionGUID: sHUBj6asRiSF2kOdFb2XDw==
X-CSE-MsgGUID: trmgPvXDQa23TJxvTiG3IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="110257508"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 08:21:55 -0800
Date: Mon, 11 Nov 2024 18:22:30 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH 6/8] drm/i915/mst: convert to struct intel_display
Message-ID: <ZzIvRiGw9l2XHHo6@ideak-desk.fi.intel.com>
References: <cover.1731011435.git.jani.nikula@intel.com>
 <66578195d58c9b0925e0e3d06b86cf98ef0c8bc8.1731011435.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <66578195d58c9b0925e0e3d06b86cf98ef0c8bc8.1731011435.git.jani.nikula@intel.com>
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

On Thu, Nov 07, 2024 at 10:32:19PM +0200, Jani Nikula wrote:
> struct intel_display will replace struct drm_i915_private as the main
> display device data structure. Convert the DP MST code to struct
> intel_display as much as possible.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 170 ++++++++++----------
>  1 file changed, 85 insertions(+), 85 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 3c898c7dbc36..481510819cc6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -74,11 +74,11 @@ static struct intel_dp *to_primary_dp(struct intel_encoder *encoder)
>  static int intel_dp_mst_max_dpt_bpp(const struct intel_crtc_state *crtc_state,
>  				    bool dsc)
>  {
> -	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
>  
> -	if (!intel_dp_is_uhbr(crtc_state) || DISPLAY_VER(i915) >= 20 || !dsc)
> +	if (!intel_dp_is_uhbr(crtc_state) || DISPLAY_VER(display) >= 20 || !dsc)
>  		return INT_MAX;
>  
>  	/*
> @@ -188,12 +188,12 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  						int step,
>  						bool dsc)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct drm_atomic_state *state = crtc_state->uapi.state;
>  	struct intel_dp *intel_dp = to_primary_dp(encoder);
>  	struct drm_dp_mst_topology_state *mst_state;
>  	struct intel_connector *connector =
>  		to_intel_connector(conn_state->connector);
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
>  	int bpp, slots = -EINVAL;
> @@ -221,18 +221,18 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  
>  	max_dpt_bpp = intel_dp_mst_max_dpt_bpp(crtc_state, dsc);
>  	if (max_bpp > max_dpt_bpp) {
> -		drm_dbg_kms(&i915->drm, "Limiting bpp to max DPT bpp (%d -> %d)\n",
> +		drm_dbg_kms(display->drm, "Limiting bpp to max DPT bpp (%d -> %d)\n",
>  			    max_bpp, max_dpt_bpp);
>  		max_bpp = max_dpt_bpp;
>  	}
>  
> -	drm_dbg_kms(&i915->drm, "Looking for slots in range min bpp %d max bpp %d\n",
> +	drm_dbg_kms(display->drm, "Looking for slots in range min bpp %d max bpp %d\n",
>  		    min_bpp, max_bpp);
>  
>  	if (dsc) {
>  		dsc_slice_count = intel_dp_mst_dsc_get_slice_count(connector, crtc_state);
>  		if (!dsc_slice_count) {
> -			drm_dbg_kms(&i915->drm, "Can't get valid DSC slice count\n");
> +			drm_dbg_kms(display->drm, "Can't get valid DSC slice count\n");
>  
>  			return -ENOSPC;
>  		}
> @@ -245,7 +245,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  		int remote_tu;
>  		fixed20_12 pbn;
>  
> -		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
> +		drm_dbg_kms(display->drm, "Trying bpp %d\n", bpp);
>  
>  		link_bpp_x16 = fxp_q4_from_int(dsc ? bpp :
>  					       intel_dp_output_bpp(crtc_state->output_format, bpp));
> @@ -298,7 +298,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  		pbn.full = remote_tu * mst_state->pbn_div.full;
>  		crtc_state->pbn = dfixed_trunc(pbn);
>  
> -		drm_WARN_ON(&i915->drm, remote_tu < crtc_state->dp_m_n.tu);
> +		drm_WARN_ON(display->drm, remote_tu < crtc_state->dp_m_n.tu);
>  		crtc_state->dp_m_n.tu = remote_tu;
>  
>  		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
> @@ -308,7 +308,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  			return slots;
>  
>  		if (slots >= 0) {
> -			drm_WARN_ON(&i915->drm, slots != crtc_state->dp_m_n.tu);
> +			drm_WARN_ON(display->drm, slots != crtc_state->dp_m_n.tu);
>  
>  			break;
>  		}
> @@ -319,14 +319,15 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  		slots = ret;
>  
>  	if (slots < 0) {
> -		drm_dbg_kms(&i915->drm, "failed finding vcpi slots:%d\n",
> +		drm_dbg_kms(display->drm, "failed finding vcpi slots:%d\n",
>  			    slots);
>  	} else {
>  		if (!dsc)
>  			crtc_state->pipe_bpp = bpp;
>  		else
>  			crtc_state->dsc.compressed_bpp_x16 = fxp_q4_from_int(bpp);
> -		drm_dbg_kms(&i915->drm, "Got %d slots for pipe bpp %d dsc %d\n", slots, bpp, dsc);
> +		drm_dbg_kms(display->drm, "Got %d slots for pipe bpp %d dsc %d\n",
> +			    slots, bpp, dsc);
>  	}
>  
>  	return slots;
> @@ -360,8 +361,8 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>  						struct drm_connector_state *conn_state,
>  						struct link_config_limits *limits)
>  {
> -	struct intel_connector *connector =
> -		to_intel_connector(conn_state->connector);
> +	struct intel_display *display = to_intel_display(encoder);
> +	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	int slots = -EINVAL;
>  	int i, num_bpc;
> @@ -371,7 +372,7 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>  	int min_compressed_bpp, max_compressed_bpp;
>  
>  	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
> -	if (DISPLAY_VER(i915) >= 12)
> +	if (DISPLAY_VER(display) >= 12)
>  		dsc_max_bpc = min_t(u8, 12, conn_state->max_requested_bpc);
>  	else
>  		dsc_max_bpc = min_t(u8, 10, conn_state->max_requested_bpc);
> @@ -382,7 +383,7 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>  	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
>  						       dsc_bpc);
>  
> -	drm_dbg_kms(&i915->drm, "DSC Source supported min bpp %d max bpp %d\n",
> +	drm_dbg_kms(display->drm, "DSC Source supported min bpp %d max bpp %d\n",
>  		    min_bpp, max_bpp);
>  
>  	sink_max_bpp = dsc_bpc[0] * 3;
> @@ -395,7 +396,7 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>  			sink_max_bpp = dsc_bpc[i] * 3;
>  	}
>  
> -	drm_dbg_kms(&i915->drm, "DSC Sink supported min bpp %d max bpp %d\n",
> +	drm_dbg_kms(display->drm, "DSC Sink supported min bpp %d max bpp %d\n",
>  		    sink_min_bpp, sink_max_bpp);
>  
>  	if (min_bpp < sink_min_bpp)
> @@ -416,7 +417,7 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>  	min_compressed_bpp = max(min_compressed_bpp,
>  				 fxp_q4_to_int_roundup(limits->link.min_bpp_x16));
>  
> -	drm_dbg_kms(&i915->drm, "DSC Sink supported compressed min bpp %d compressed max bpp %d\n",
> +	drm_dbg_kms(display->drm, "DSC Sink supported compressed min bpp %d compressed max bpp %d\n",
>  		    min_compressed_bpp, max_compressed_bpp);
>  
>  	/* Align compressed bpps according to our own constraints */
> @@ -438,7 +439,7 @@ static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
>  				     struct intel_crtc_state *crtc_state,
>  				     struct drm_connector_state *conn_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_dp *intel_dp = to_primary_dp(encoder);
>  	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
>  	struct drm_dp_mst_topology_state *topology_state;
> @@ -447,7 +448,7 @@ static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
>  
>  	topology_state = drm_atomic_get_mst_topology_state(conn_state->state, mgr);
>  	if (IS_ERR(topology_state)) {
> -		drm_dbg_kms(&i915->drm, "slot update failed\n");
> +		drm_dbg_kms(display->drm, "slot update failed\n");
>  		return PTR_ERR(topology_state);
>  	}
>  
> @@ -495,7 +496,7 @@ adjust_limits_for_dsc_hblank_expansion_quirk(const struct intel_connector *conne
>  					     struct link_config_limits *limits,
>  					     bool dsc)
>  {
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	int min_bpp_x16 = limits->link.min_bpp_x16;
>  
> @@ -504,14 +505,14 @@ adjust_limits_for_dsc_hblank_expansion_quirk(const struct intel_connector *conne
>  
>  	if (!dsc) {
>  		if (intel_dp_supports_dsc(connector, crtc_state)) {
> -			drm_dbg_kms(&i915->drm,
> +			drm_dbg_kms(display->drm,
>  				    "[CRTC:%d:%s][CONNECTOR:%d:%s] DSC needed by hblank expansion quirk\n",
>  				    crtc->base.base.id, crtc->base.name,
>  				    connector->base.base.id, connector->base.name);
>  			return false;
>  		}
>  
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "[CRTC:%d:%s][CONNECTOR:%d:%s] Increasing link min bpp to 24 due to hblank expansion quirk\n",
>  			    crtc->base.base.id, crtc->base.name,
>  			    connector->base.base.id, connector->base.name);
> @@ -524,7 +525,7 @@ adjust_limits_for_dsc_hblank_expansion_quirk(const struct intel_connector *conne
>  		return true;
>  	}
>  
> -	drm_WARN_ON(&i915->drm, limits->min_rate != limits->max_rate);
> +	drm_WARN_ON(display->drm, limits->min_rate != limits->max_rate);
>  
>  	if (limits->max_rate < 540000)
>  		min_bpp_x16 = fxp_q4_from_int(13);
> @@ -534,7 +535,7 @@ adjust_limits_for_dsc_hblank_expansion_quirk(const struct intel_connector *conne
>  	if (limits->link.min_bpp_x16 >= min_bpp_x16)
>  		return true;
>  
> -	drm_dbg_kms(&i915->drm,
> +	drm_dbg_kms(display->drm,
>  		    "[CRTC:%d:%s][CONNECTOR:%d:%s] Increasing link min bpp to " FXP_Q4_FMT " in DSC mode due to hblank expansion quirk\n",
>  		    crtc->base.base.id, crtc->base.name,
>  		    connector->base.base.id, connector->base.name,
> @@ -594,6 +595,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  				       struct intel_crtc_state *pipe_config,
>  				       struct drm_connector_state *conn_state)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
>  	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> @@ -646,7 +648,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  
>  	/* enable compression if the mode doesn't fit available BW */
>  	if (dsc_needed) {
> -		drm_dbg_kms(&dev_priv->drm, "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
> +		drm_dbg_kms(display->drm, "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
>  			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
>  			    str_yes_no(intel_dp->force_dsc_en));
>  
> @@ -664,12 +666,13 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  		 * FIXME: As bpc is hardcoded to 8, as mentioned above,
>  		 * WARN and ignore the debug flag force_dsc_bpc for now.
>  		 */
> -		drm_WARN(&dev_priv->drm, intel_dp->force_dsc_bpc, "Cannot Force BPC for MST\n");
> +		drm_WARN(display->drm, intel_dp->force_dsc_bpc,
> +			 "Cannot Force BPC for MST\n");
>  		/*
>  		 * Try to get at least some timeslots and then see, if
>  		 * we can fit there with DSC.
>  		 */
> -		drm_dbg_kms(&dev_priv->drm, "Trying to find VCPI slots in DSC mode\n");
> +		drm_dbg_kms(display->drm, "Trying to find VCPI slots in DSC mode\n");
>  
>  		ret = intel_dp_dsc_mst_compute_link_config(encoder, pipe_config,
>  							   conn_state, &limits);
> @@ -691,7 +694,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  	pipe_config->limited_color_range =
>  		intel_dp_limited_color_range(pipe_config, conn_state);
>  
> -	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> +	if (display->platform.geminilake || display->platform.broxton)
>  		pipe_config->lane_lat_optim_mask =
>  			bxt_dpio_phy_calc_lane_lat_optim_mask(pipe_config->lane_count);
>  
> @@ -713,13 +716,13 @@ static unsigned int
>  intel_dp_mst_transcoder_mask(struct intel_atomic_state *state,
>  			     struct intel_dp *mst_port)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	struct intel_display *display = to_intel_display(state);
>  	const struct intel_digital_connector_state *conn_state;
>  	struct intel_connector *connector;
>  	u8 transcoders = 0;
>  	int i;
>  
> -	if (DISPLAY_VER(dev_priv) < 12)
> +	if (DISPLAY_VER(display) < 12)
>  		return 0;
>  
>  	for_each_new_intel_connector_in_state(state, connector, conn_state, i) {
> @@ -773,7 +776,7 @@ static int intel_dp_mst_check_fec_change(struct intel_atomic_state *state,
>  					 struct drm_dp_mst_topology_mgr *mst_mgr,
>  					 struct intel_link_bw_limits *limits)
>  {
> -	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct intel_display *display = to_intel_display(state);
>  	struct intel_crtc *crtc;
>  	u8 mst_pipe_mask;
>  	u8 fec_pipe_mask = 0;
> @@ -781,12 +784,12 @@ static int intel_dp_mst_check_fec_change(struct intel_atomic_state *state,
>  
>  	mst_pipe_mask = get_pipes_downstream_of_mst_port(state, mst_mgr, NULL);
>  
> -	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, mst_pipe_mask) {
> +	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, mst_pipe_mask) {
>  		struct intel_crtc_state *crtc_state =
>  			intel_atomic_get_new_crtc_state(state, crtc);
>  
>  		/* Atomic connector check should've added all the MST CRTCs. */
> -		if (drm_WARN_ON(&i915->drm, !crtc_state))
> +		if (drm_WARN_ON(display->drm, !crtc_state))
>  			return -EINVAL;
>  
>  		if (crtc_state->fec_enable)
> @@ -896,7 +899,7 @@ static int
>  intel_dp_mst_atomic_topology_check(struct intel_connector *connector,
>  				   struct intel_atomic_state *state)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct drm_connector_list_iter connector_list_iter;
>  	struct intel_connector *connector_iter;
>  	int ret = 0;
> @@ -904,7 +907,7 @@ intel_dp_mst_atomic_topology_check(struct intel_connector *connector,
>  	if (!intel_connector_needs_modeset(state, &connector->base))
>  		return 0;
>  
> -	drm_connector_list_iter_begin(&dev_priv->drm, &connector_list_iter);
> +	drm_connector_list_iter_begin(display->drm, &connector_list_iter);
>  	for_each_intel_connector_iter(connector_iter, &connector_list_iter) {
>  		struct intel_digital_connector_state *conn_iter_state;
>  		struct intel_crtc_state *crtc_state;
> @@ -974,21 +977,21 @@ intel_dp_mst_atomic_check(struct drm_connector *connector,
>  static void clear_act_sent(struct intel_encoder *encoder,
>  			   const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  
> -	intel_de_write(i915, dp_tp_status_reg(encoder, crtc_state),
> +	intel_de_write(display, dp_tp_status_reg(encoder, crtc_state),
>  		       DP_TP_STATUS_ACT_SENT);
>  }
>  
>  static void wait_for_act_sent(struct intel_encoder *encoder,
>  			      const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_dp *intel_dp = to_primary_dp(encoder);
>  
> -	if (intel_de_wait_for_set(i915, dp_tp_status_reg(encoder, crtc_state),
> +	if (intel_de_wait_for_set(display, dp_tp_status_reg(encoder, crtc_state),
>  				  DP_TP_STATUS_ACT_SENT, 1))
> -		drm_err(&i915->drm, "Timed out waiting for ACT sent\n");
> +		drm_err(display->drm, "Timed out waiting for ACT sent\n");
>  
>  	drm_dp_check_act_status(&intel_dp->mst_mgr);
>  }
> @@ -998,13 +1001,13 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
>  				 const struct intel_crtc_state *old_crtc_state,
>  				 const struct drm_connector_state *old_conn_state)
>  {
> +	struct intel_display *display = to_intel_display(state);
>  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
>  	struct intel_dp *intel_dp = to_primary_dp(encoder);
>  	struct intel_connector *connector =
>  		to_intel_connector(old_conn_state->connector);
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  
> -	drm_dbg_kms(&i915->drm, "active links %d\n",
> +	drm_dbg_kms(display->drm, "active links %d\n",
>  		    intel_dp->active_mst_links);
>  
>  	if (intel_dp->active_mst_links == 1)
> @@ -1034,15 +1037,13 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  		drm_atomic_get_mst_payload_state(old_mst_state, connector->port);
>  	struct drm_dp_mst_atomic_payload *new_payload =
>  		drm_atomic_get_mst_payload_state(new_mst_state, connector->port);
> -	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>  	struct intel_crtc *pipe_crtc;
>  	bool last_mst_stream;
>  	int i;
>  
>  	intel_dp->active_mst_links--;
>  	last_mst_stream = intel_dp->active_mst_links == 0;
> -	drm_WARN_ON(&dev_priv->drm,
> -		    DISPLAY_VER(dev_priv) >= 12 && last_mst_stream &&
> +	drm_WARN_ON(display->drm, DISPLAY_VER(display) >= 12 && last_mst_stream &&
>  		    !intel_dp_mst_is_master_trans(old_crtc_state));
>  
>  	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
> @@ -1058,8 +1059,8 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  
>  	clear_act_sent(encoder, old_crtc_state);
>  
> -	intel_de_rmw(dev_priv,
> -		     TRANS_DDI_FUNC_CTL(dev_priv, old_crtc_state->cpu_transcoder),
> +	intel_de_rmw(display,
> +		     TRANS_DDI_FUNC_CTL(display, old_crtc_state->cpu_transcoder),
>  		     TRANS_DDI_DP_VC_PAYLOAD_ALLOC, 0);
>  
>  	wait_for_act_sent(encoder, old_crtc_state);
> @@ -1075,7 +1076,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  
>  		intel_dsc_disable(old_pipe_crtc_state);
>  
> -		if (DISPLAY_VER(dev_priv) >= 9)
> +		if (DISPLAY_VER(display) >= 9)
>  			skl_scaler_disable(old_pipe_crtc_state);
>  		else
>  			ilk_pfit_disable(old_pipe_crtc_state);
> @@ -1100,7 +1101,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  	 * From older GENs spec: "Configure Transcoder Clock Select to direct
>  	 * no clock to the transcoder"
>  	 */
> -	if (DISPLAY_VER(dev_priv) < 12 || !last_mst_stream)
> +	if (DISPLAY_VER(display) < 12 || !last_mst_stream)
>  		intel_ddi_disable_transcoder_clock(old_crtc_state);
>  
>  
> @@ -1109,7 +1110,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  		primary_encoder->post_disable(state, primary_encoder,
>  					      old_crtc_state, NULL);
>  
> -	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
> +	drm_dbg_kms(display->drm, "active links %d\n",
>  		    intel_dp->active_mst_links);
>  }
>  
> @@ -1178,10 +1179,10 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
>  				    const struct intel_crtc_state *pipe_config,
>  				    const struct drm_connector_state *conn_state)
>  {
> +	struct intel_display *display = to_intel_display(state);
>  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
>  	struct intel_encoder *primary_encoder = to_primary_encoder(encoder);
>  	struct intel_dp *intel_dp = to_primary_dp(encoder);
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_connector *connector =
>  		to_intel_connector(conn_state->connector);
>  	struct drm_dp_mst_topology_state *mst_state =
> @@ -1195,11 +1196,10 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
>  	connector->encoder = encoder;
>  	intel_mst->connector = connector;
>  	first_mst_stream = intel_dp->active_mst_links == 0;
> -	drm_WARN_ON(&dev_priv->drm,
> -		    DISPLAY_VER(dev_priv) >= 12 && first_mst_stream &&
> +	drm_WARN_ON(display->drm, DISPLAY_VER(display) >= 12 && first_mst_stream &&
>  		    !intel_dp_mst_is_master_trans(pipe_config));
>  
> -	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
> +	drm_dbg_kms(display->drm, "active links %d\n",
>  		    intel_dp->active_mst_links);
>  
>  	if (first_mst_stream)
> @@ -1230,10 +1230,10 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
>  	 * first MST stream, so it's done on the DDI for the first stream and
>  	 * here for the following ones.
>  	 */
> -	if (DISPLAY_VER(dev_priv) < 12 || !first_mst_stream)
> +	if (DISPLAY_VER(display) < 12 || !first_mst_stream)
>  		intel_ddi_enable_transcoder_clock(encoder, pipe_config);
>  
> -	if (DISPLAY_VER(dev_priv) >= 13 && !first_mst_stream)
> +	if (DISPLAY_VER(display) >= 13 && !first_mst_stream)
>  		intel_ddi_config_transcoder_func(encoder, pipe_config);
>  
>  	intel_dsc_dp_pps_write(primary_encoder, pipe_config);
> @@ -1242,6 +1242,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
>  
>  static void enable_bs_jitter_was(const struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>  	u32 clear = 0;
>  	u32 set = 0;
> @@ -1249,7 +1250,7 @@ static void enable_bs_jitter_was(const struct intel_crtc_state *crtc_state)
>  	if (!IS_ALDERLAKE_P(i915))
>  		return;
>  
> -	if (!IS_DISPLAY_STEP(i915, STEP_D0, STEP_FOREVER))
> +	if (!IS_DISPLAY_STEP(display, STEP_D0, STEP_FOREVER))
>  		return;
>  
>  	/* Wa_14013163432:adlp */
> @@ -1257,7 +1258,7 @@ static void enable_bs_jitter_was(const struct intel_crtc_state *crtc_state)
>  		set |= DP_MST_FEC_BS_JITTER_WA(crtc_state->cpu_transcoder);
>  
>  	/* Wa_14014143976:adlp */
> -	if (IS_DISPLAY_STEP(i915, STEP_E0, STEP_FOREVER)) {
> +	if (IS_DISPLAY_STEP(display, STEP_E0, STEP_FOREVER)) {
>  		if (intel_dp_is_uhbr(crtc_state))
>  			set |= DP_MST_SHORT_HBLANK_WA(crtc_state->cpu_transcoder);
>  		else if (crtc_state->fec_enable)
> @@ -1270,7 +1271,7 @@ static void enable_bs_jitter_was(const struct intel_crtc_state *crtc_state)
>  	if (!clear && !set)
>  		return;
>  
> -	intel_de_rmw(i915, CHICKEN_MISC_3, clear, set);
> +	intel_de_rmw(display, CHICKEN_MISC_3, clear, set);
>  }
>  
>  static void intel_mst_enable_dp(struct intel_atomic_state *state,
> @@ -1282,7 +1283,6 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  	struct intel_encoder *primary_encoder = to_primary_encoder(encoder);
>  	struct intel_dp *intel_dp = to_primary_dp(encoder);
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct drm_dp_mst_topology_state *mst_state =
>  		drm_atomic_get_new_mst_topology_state(&state->base, &intel_dp->mst_mgr);
>  	enum transcoder trans = pipe_config->cpu_transcoder;
> @@ -1290,16 +1290,16 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  	struct intel_crtc *pipe_crtc;
>  	int ret, i;
>  
> -	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
> +	drm_WARN_ON(display->drm, pipe_config->has_pch_encoder);
>  
>  	if (intel_dp_is_uhbr(pipe_config)) {
>  		const struct drm_display_mode *adjusted_mode =
>  			&pipe_config->hw.adjusted_mode;
>  		u64 crtc_clock_hz = KHz(adjusted_mode->crtc_clock);
>  
> -		intel_de_write(dev_priv, TRANS_DP2_VFREQHIGH(pipe_config->cpu_transcoder),
> +		intel_de_write(display, TRANS_DP2_VFREQHIGH(pipe_config->cpu_transcoder),
>  			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz >> 24));
> -		intel_de_write(dev_priv, TRANS_DP2_VFREQLOW(pipe_config->cpu_transcoder),
> +		intel_de_write(display, TRANS_DP2_VFREQLOW(pipe_config->cpu_transcoder),
>  			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz & 0xffffff));
>  	}
>  
> @@ -1309,10 +1309,10 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  
>  	clear_act_sent(encoder, pipe_config);
>  
> -	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, trans), 0,
> +	intel_de_rmw(display, TRANS_DDI_FUNC_CTL(display, trans), 0,
>  		     TRANS_DDI_DP_VC_PAYLOAD_ALLOC);
>  
> -	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
> +	drm_dbg_kms(display->drm, "active links %d\n",
>  		    intel_dp->active_mst_links);
>  
>  	wait_for_act_sent(encoder, pipe_config);
> @@ -1445,13 +1445,14 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  			    struct drm_modeset_acquire_ctx *ctx,
>  			    enum drm_mode_status *status)
>  {
> +	struct intel_display *display = to_intel_display(connector->dev);
>  	struct drm_i915_private *dev_priv = to_i915(connector->dev);
>  	struct intel_connector *intel_connector = to_intel_connector(connector);
>  	struct intel_dp *intel_dp = intel_connector->mst_port;
>  	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
>  	struct drm_dp_mst_port *port = intel_connector->port;
>  	const int min_bpp = 18;
> -	int max_dotclk = to_i915(connector->dev)->display.cdclk.max_dotclk_freq;
> +	int max_dotclk = display->cdclk.max_dotclk_freq;
>  	int max_rate, mode_rate, max_lanes, max_link_clock;
>  	int ret;
>  	bool dsc = false;
> @@ -1623,12 +1624,12 @@ static int intel_dp_mst_add_properties(struct intel_dp *intel_dp,
>  				       struct drm_connector *connector,
>  				       const char *pathprop)
>  {
> -	struct drm_i915_private *i915 = to_i915(connector->dev);
> +	struct intel_display *display = to_intel_display(intel_dp);
>  
>  	drm_object_attach_property(&connector->base,
> -				   i915->drm.mode_config.path_property, 0);
> +				   display->drm->mode_config.path_property, 0);
>  	drm_object_attach_property(&connector->base,
> -				   i915->drm.mode_config.tile_property, 0);
> +				   display->drm->mode_config.tile_property, 0);
>  
>  	intel_attach_force_audio_property(connector);
>  	intel_attach_broadcast_rgb_property(connector);
> @@ -1662,7 +1663,7 @@ intel_dp_mst_read_decompression_port_dsc_caps(struct intel_dp *intel_dp,
>  
>  static bool detect_dsc_hblank_expansion_quirk(const struct intel_connector *connector)
>  {
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct drm_dp_aux *aux = connector->dp.dsc_decompression_aux;
>  	struct drm_dp_desc desc;
>  	u8 dpcd[DP_RECEIVER_CAP_SIZE];
> @@ -1700,7 +1701,7 @@ static bool detect_dsc_hblank_expansion_quirk(const struct intel_connector *conn
>  	    !(dpcd[DP_RECEIVE_PORT_0_CAP_0] & DP_HBLANK_EXPANSION_CAPABLE))
>  		return false;
>  
> -	drm_dbg_kms(&i915->drm,
> +	drm_dbg_kms(display->drm,
>  		    "[CONNECTOR:%d:%s] DSC HBLANK expansion quirk detected\n",
>  		    connector->base.base.id, connector->base.name);
>  
> @@ -1712,9 +1713,8 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
>  							const char *pathprop)
>  {
>  	struct intel_dp *intel_dp = container_of(mgr, struct intel_dp, mst_mgr);
> +	struct intel_display *display = to_intel_display(intel_dp);
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> -	struct drm_device *dev = dig_port->base.base.dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
>  	struct intel_connector *intel_connector;
>  	struct drm_connector *connector;
>  	enum pipe pipe;
> @@ -1738,7 +1738,7 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
>  		detect_dsc_hblank_expansion_quirk(intel_connector);
>  
>  	connector = &intel_connector->base;
> -	ret = drm_connector_init(dev, connector, &intel_dp_mst_connector_funcs,
> +	ret = drm_connector_init(display->drm, connector, &intel_dp_mst_connector_funcs,
>  				 DRM_MODE_CONNECTOR_DisplayPort);
>  	if (ret) {
>  		drm_dp_mst_put_port_malloc(port);
> @@ -1748,7 +1748,7 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
>  
>  	drm_connector_helper_add(connector, &intel_dp_mst_connector_helper_funcs);
>  
> -	for_each_pipe(dev_priv, pipe) {
> +	for_each_pipe(display, pipe) {
>  		struct drm_encoder *enc =
>  			&intel_dp->mst_encoders[pipe]->base.base;
>  
> @@ -1763,7 +1763,7 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
>  
>  	ret = intel_dp_hdcp_init(dig_port, intel_connector);
>  	if (ret)
> -		drm_dbg_kms(&dev_priv->drm, "[%s:%d] HDCP MST init failed, skipping.\n",
> +		drm_dbg_kms(display->drm, "[%s:%d] HDCP MST init failed, skipping.\n",
>  			    connector->name, connector->base.id);
>  
>  	return connector;
> @@ -1789,10 +1789,10 @@ static const struct drm_dp_mst_topology_cbs mst_cbs = {
>  static struct intel_dp_mst_encoder *
>  intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe pipe)
>  {
> +	struct intel_display *display = to_intel_display(dig_port);
>  	struct intel_encoder *primary_encoder = &dig_port->base;
>  	struct intel_dp_mst_encoder *intel_mst;
>  	struct intel_encoder *encoder;
> -	struct drm_device *dev = dig_port->base.base.dev;
>  
>  	intel_mst = kzalloc(sizeof(*intel_mst), GFP_KERNEL);
>  
> @@ -1803,7 +1803,7 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe
>  	encoder = &intel_mst->base;
>  	intel_mst->primary = dig_port;
>  
> -	drm_encoder_init(dev, &encoder->base, &intel_dp_mst_enc_funcs,
> +	drm_encoder_init(display->drm, &encoder->base, &intel_dp_mst_enc_funcs,
>  			 DRM_MODE_ENCODER_DPMST, "DP-MST %c", pipe_name(pipe));
>  
>  	encoder->type = INTEL_OUTPUT_DP_MST;
> @@ -1842,11 +1842,11 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe
>  static bool
>  intel_dp_create_fake_mst_encoders(struct intel_digital_port *dig_port)
>  {
> +	struct intel_display *display = to_intel_display(dig_port);
>  	struct intel_dp *intel_dp = &dig_port->dp;
> -	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>  	enum pipe pipe;
>  
> -	for_each_pipe(dev_priv, pipe)
> +	for_each_pipe(display, pipe)
>  		intel_dp->mst_encoders[pipe] = intel_dp_create_fake_mst_encoder(dig_port, pipe);
>  	return true;
>  }
> @@ -1860,25 +1860,25 @@ intel_dp_mst_encoder_active_links(struct intel_digital_port *dig_port)
>  int
>  intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_base_id)
>  {
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	struct intel_display *display = to_intel_display(dig_port);
>  	struct intel_dp *intel_dp = &dig_port->dp;
>  	enum port port = dig_port->base.port;
>  	int ret;
>  
> -	if (!HAS_DP_MST(i915) || intel_dp_is_edp(intel_dp))
> +	if (!HAS_DP_MST(display) || intel_dp_is_edp(intel_dp))
>  		return 0;
>  
> -	if (DISPLAY_VER(i915) < 12 && port == PORT_A)
> +	if (DISPLAY_VER(display) < 12 && port == PORT_A)
>  		return 0;
>  
> -	if (DISPLAY_VER(i915) < 11 && port == PORT_E)
> +	if (DISPLAY_VER(display) < 11 && port == PORT_E)
>  		return 0;
>  
>  	intel_dp->mst_mgr.cbs = &mst_cbs;
>  
>  	/* create encoders */
>  	intel_dp_create_fake_mst_encoders(dig_port);
> -	ret = drm_dp_mst_topology_mgr_init(&intel_dp->mst_mgr, &i915->drm,
> +	ret = drm_dp_mst_topology_mgr_init(&intel_dp->mst_mgr, display->drm,
>  					   &intel_dp->aux, 16, 3, conn_base_id);
>  	if (ret) {
>  		intel_dp->mst_mgr.cbs = NULL;
> -- 
> 2.39.5
> 
