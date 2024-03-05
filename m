Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A52871869
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 09:42:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BD14112946;
	Tue,  5 Mar 2024 08:42:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IBKVWgJ+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAD08112945
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 08:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709628121; x=1741164121;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qmyWDonkd2mquNnTd1RMSlJz4K+5B3QsxZ3mJm7j+B4=;
 b=IBKVWgJ+hnjBzUF8kxR5SUsW76qWnV/rLM08zROHtD+NpPUnGblsBdfn
 2c5Z8DzF4cRGhP57sY+b8n5ckshV9ClaD4G4Cg7LF2Ei1XaEQgd6kGEze
 Pois+x/Uk8jBgiq/j6xZunlX5Lb+ygWeA9qcmygpqSPkQVlP36Nccv2XI
 rR/z2XY7emjXRfbaIZnuQH3UScr7FG/0DpKNuoLm1ZHyQIOnuxVHtupdF
 43d+SaoV/HCCY9aoeQ7ijB9AsYoSb/Yxw6cROFnUyMZsni77feq2kDia8
 dExnEwdhJBr6qJH74Q9xWhbj1u6ZlGux9OKZByTMh7K0UEQzM+TnBPCtr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="15594736"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="15594736"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 00:42:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="9473708"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 00:41:56 -0800
Date: Tue, 5 Mar 2024 10:41:49 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/8] drm/i915: Rename the crtc/crtc_states in the top
 level DDI hooks/etc
Message-ID: <ZebazalH8c1j1GGH@intel.com>
References: <20240301143600.1334-1-ville.syrjala@linux.intel.com>
 <20240301143600.1334-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240301143600.1334-2-ville.syrjala@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 01, 2024 at 04:35:53PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> In preparation for doing a more sensible pipe vs. transcoder
> handling for bigjoiner let's rename the crtc/crtc_state in the
> top level crtc_enable/disable and the DDI encoder hooks to
> include "master" in the name. This way they won't collide with
> the per-pipe stuff.
> 
> Note that at this point this is (at least partially) telling
> lies as we still run through some of these for slave pipes as
> well. But I wanted to get the huge rename out of the way so
> it won't clutter the functional patches so much.
> 
> TODO: or perhaps use some other names for the per-pipe stuff instead?
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

I will then review now the patches which you could merge before the bigjoiner
stuff could be finished.
Checked this patch I guess, you were also talking that this renaming might
be not the best idea.
I also wonder whether should we really emphasize things like "master"/"slave"
in function names. I thought that one idea in our refactoring was to unify
joined pipes handling so that there are no(or at least almost no) explicit code
paths/function names for masters/slaves.

Stan

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 326 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_display.c | 100 +++---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  |  91 +++---
>  3 files changed, 258 insertions(+), 259 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index c587a8efeafc..6287629f9e77 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2490,21 +2490,21 @@ static void mtl_port_buf_ctl_io_selection(struct intel_encoder *encoder)
>  
>  static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  				  struct intel_encoder *encoder,
> -				  const struct intel_crtc_state *crtc_state,
> +				  const struct intel_crtc_state *master_crtc_state,
>  				  const struct drm_connector_state *conn_state)
>  {
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> -	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> +	bool is_mst = intel_crtc_has_type(master_crtc_state, INTEL_OUTPUT_DP_MST);
>  
>  	intel_dp_set_link_params(intel_dp,
> -				 crtc_state->port_clock,
> -				 crtc_state->lane_count);
> +				 master_crtc_state->port_clock,
> +				 master_crtc_state->lane_count);
>  
>  	/*
>  	 * We only configure what the register value will be here.  Actual
>  	 * enabling happens during link training farther down.
>  	 */
> -	intel_ddi_init_dp_buf_reg(encoder, crtc_state);
> +	intel_ddi_init_dp_buf_reg(encoder, master_crtc_state);
>  
>  	/*
>  	 * 1. Enable Power Wells
> @@ -2522,48 +2522,48 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	intel_pps_on(intel_dp);
>  
>  	/* 5. Enable the port PLL */
> -	intel_ddi_enable_clock(encoder, crtc_state);
> +	intel_ddi_enable_clock(encoder, master_crtc_state);
>  
>  	/*
>  	 * 6.a Configure Transcoder Clock Select to direct the Port clock to the
>  	 * Transcoder.
>  	 */
> -	intel_ddi_enable_transcoder_clock(encoder, crtc_state);
> +	intel_ddi_enable_transcoder_clock(encoder, master_crtc_state);
>  
>  	/*
>  	 * 6.b If DP v2.0/128b mode - Configure TRANS_DP2_CTL register settings.
>  	 */
> -	intel_ddi_config_transcoder_dp2(encoder, crtc_state);
> +	intel_ddi_config_transcoder_dp2(encoder, master_crtc_state);
>  
>  	/*
>  	 * 6.c Configure TRANS_DDI_FUNC_CTL DDI Select, DDI Mode Select & MST
>  	 * Transport Select
>  	 */
> -	intel_ddi_config_transcoder_func(encoder, crtc_state);
> +	intel_ddi_config_transcoder_func(encoder, master_crtc_state);
>  
>  	/*
>  	 * 6.e Program CoG/MSO configuration bits in DSS_CTL1 if selected.
>  	 */
> -	intel_ddi_mso_configure(crtc_state);
> +	intel_ddi_mso_configure(master_crtc_state);
>  
>  	if (!is_mst)
>  		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
>  
> -	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
> +	intel_dp_configure_protocol_converter(intel_dp, master_crtc_state);
>  	if (!is_mst)
>  		intel_dp_sink_enable_decompression(state,
>  						   to_intel_connector(conn_state->connector),
> -						   crtc_state);
> +						   master_crtc_state);
>  
>  	/*
>  	 * DDI FEC: "anticipates enabling FEC encoding sets the FEC_READY bit
>  	 * in the FEC_CONFIGURATION register to 1 before initiating link
>  	 * training
>  	 */
> -	intel_dp_sink_set_fec_ready(intel_dp, crtc_state, true);
> +	intel_dp_sink_set_fec_ready(intel_dp, master_crtc_state, true);
>  
>  	intel_dp_check_frl_training(intel_dp);
> -	intel_dp_pcon_dsc_configure(intel_dp, crtc_state);
> +	intel_dp_pcon_dsc_configure(intel_dp, master_crtc_state);
>  
>  	/*
>  	 * 6. The rest of the below are substeps under the bspec's "Enable and
> @@ -2584,38 +2584,38 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	 *     Pattern, wait for 5 idle patterns (DP_TP_STATUS Min_Idles_Sent)
>  	 *     (timeout after 800 us)
>  	 */
> -	intel_dp_start_link_train(intel_dp, crtc_state);
> +	intel_dp_start_link_train(intel_dp, master_crtc_state);
>  
>  	/* 6.n Set DP_TP_CTL link training to Normal */
> -	if (!is_trans_port_sync_mode(crtc_state))
> -		intel_dp_stop_link_train(intel_dp, crtc_state);
> +	if (!is_trans_port_sync_mode(master_crtc_state))
> +		intel_dp_stop_link_train(intel_dp, master_crtc_state);
>  
>  	/* 6.o Configure and enable FEC if needed */
> -	intel_ddi_enable_fec(encoder, crtc_state);
> +	intel_ddi_enable_fec(encoder, master_crtc_state);
>  
>  	if (!is_mst)
> -		intel_dsc_dp_pps_write(encoder, crtc_state);
> +		intel_dsc_dp_pps_write(encoder, master_crtc_state);
>  }
>  
>  static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  				  struct intel_encoder *encoder,
> -				  const struct intel_crtc_state *crtc_state,
> +				  const struct intel_crtc_state *master_crtc_state,
>  				  const struct drm_connector_state *conn_state)
>  {
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> -	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> +	bool is_mst = intel_crtc_has_type(master_crtc_state, INTEL_OUTPUT_DP_MST);
>  
>  	intel_dp_set_link_params(intel_dp,
> -				 crtc_state->port_clock,
> -				 crtc_state->lane_count);
> +				 master_crtc_state->port_clock,
> +				 master_crtc_state->lane_count);
>  
>  	/*
>  	 * We only configure what the register value will be here.  Actual
>  	 * enabling happens during link training farther down.
>  	 */
> -	intel_ddi_init_dp_buf_reg(encoder, crtc_state);
> +	intel_ddi_init_dp_buf_reg(encoder, master_crtc_state);
>  
>  	/*
>  	 * 1. Enable Power Wells
> @@ -2642,7 +2642,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	 * hsw_crtc_enable()->intel_enable_shared_dpll().  We need only
>  	 * configure the PLL to port mapping here.
>  	 */
> -	intel_ddi_enable_clock(encoder, crtc_state);
> +	intel_ddi_enable_clock(encoder, master_crtc_state);
>  
>  	/* 5. If IO power is controlled through PWR_WELL_CTL, Enable IO Power */
>  	if (!intel_tc_port_in_tbt_alt_mode(dig_port)) {
> @@ -2652,7 +2652,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	}
>  
>  	/* 6. Program DP_MODE */
> -	icl_program_mg_dp_mode(dig_port, crtc_state);
> +	icl_program_mg_dp_mode(dig_port, master_crtc_state);
>  
>  	/*
>  	 * 7. The rest of the below are substeps under the bspec's "Enable and
> @@ -2668,16 +2668,16 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	 * 7.a Configure Transcoder Clock Select to direct the Port clock to the
>  	 * Transcoder.
>  	 */
> -	intel_ddi_enable_transcoder_clock(encoder, crtc_state);
> +	intel_ddi_enable_transcoder_clock(encoder, master_crtc_state);
>  
>  	if (HAS_DP20(dev_priv))
> -		intel_ddi_config_transcoder_dp2(encoder, crtc_state);
> +		intel_ddi_config_transcoder_dp2(encoder, master_crtc_state);
>  
>  	/*
>  	 * 7.b Configure TRANS_DDI_FUNC_CTL DDI Select, DDI Mode Select & MST
>  	 * Transport Select
>  	 */
> -	intel_ddi_config_transcoder_func(encoder, crtc_state);
> +	intel_ddi_config_transcoder_func(encoder, master_crtc_state);
>  
>  	/*
>  	 * 7.c Configure & enable DP_TP_CTL with link training pattern 1
> @@ -2688,36 +2688,36 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	 */
>  
>  	/* 7.e Configure voltage swing and related IO settings */
> -	encoder->set_signal_levels(encoder, crtc_state);
> +	encoder->set_signal_levels(encoder, master_crtc_state);
>  
>  	/*
>  	 * 7.f Combo PHY: Configure PORT_CL_DW10 Static Power Down to power up
>  	 * the used lanes of the DDI.
>  	 */
> -	intel_ddi_power_up_lanes(encoder, crtc_state);
> +	intel_ddi_power_up_lanes(encoder, master_crtc_state);
>  
>  	/*
>  	 * 7.g Program CoG/MSO configuration bits in DSS_CTL1 if selected.
>  	 */
> -	intel_ddi_mso_configure(crtc_state);
> +	intel_ddi_mso_configure(master_crtc_state);
>  
>  	if (!is_mst)
>  		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
>  
> -	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
> +	intel_dp_configure_protocol_converter(intel_dp, master_crtc_state);
>  	if (!is_mst)
>  		intel_dp_sink_enable_decompression(state,
>  						   to_intel_connector(conn_state->connector),
> -						   crtc_state);
> +						   master_crtc_state);
>  	/*
>  	 * DDI FEC: "anticipates enabling FEC encoding sets the FEC_READY bit
>  	 * in the FEC_CONFIGURATION register to 1 before initiating link
>  	 * training
>  	 */
> -	intel_dp_sink_set_fec_ready(intel_dp, crtc_state, true);
> +	intel_dp_sink_set_fec_ready(intel_dp, master_crtc_state, true);
>  
>  	intel_dp_check_frl_training(intel_dp);
> -	intel_dp_pcon_dsc_configure(intel_dp, crtc_state);
> +	intel_dp_pcon_dsc_configure(intel_dp, master_crtc_state);
>  
>  	/*
>  	 * 7.i Follow DisplayPort specification training sequence (see notes for
> @@ -2726,29 +2726,29 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	 *     Pattern, wait for 5 idle patterns (DP_TP_STATUS Min_Idles_Sent)
>  	 *     (timeout after 800 us)
>  	 */
> -	intel_dp_start_link_train(intel_dp, crtc_state);
> +	intel_dp_start_link_train(intel_dp, master_crtc_state);
>  
>  	/* 7.k Set DP_TP_CTL link training to Normal */
> -	if (!is_trans_port_sync_mode(crtc_state))
> -		intel_dp_stop_link_train(intel_dp, crtc_state);
> +	if (!is_trans_port_sync_mode(master_crtc_state))
> +		intel_dp_stop_link_train(intel_dp, master_crtc_state);
>  
>  	/* 7.l Configure and enable FEC if needed */
> -	intel_ddi_enable_fec(encoder, crtc_state);
> +	intel_ddi_enable_fec(encoder, master_crtc_state);
>  
>  	if (!is_mst)
> -		intel_dsc_dp_pps_write(encoder, crtc_state);
> +		intel_dsc_dp_pps_write(encoder, master_crtc_state);
>  }
>  
>  static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  				  struct intel_encoder *encoder,
> -				  const struct intel_crtc_state *crtc_state,
> +				  const struct intel_crtc_state *master_crtc_state,
>  				  const struct drm_connector_state *conn_state)
>  {
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	enum port port = encoder->port;
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> -	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> +	bool is_mst = intel_crtc_has_type(master_crtc_state, INTEL_OUTPUT_DP_MST);
>  
>  	if (DISPLAY_VER(dev_priv) < 11)
>  		drm_WARN_ON(&dev_priv->drm,
> @@ -2757,18 +2757,18 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  		drm_WARN_ON(&dev_priv->drm, is_mst && port == PORT_A);
>  
>  	intel_dp_set_link_params(intel_dp,
> -				 crtc_state->port_clock,
> -				 crtc_state->lane_count);
> +				 master_crtc_state->port_clock,
> +				 master_crtc_state->lane_count);
>  
>  	/*
>  	 * We only configure what the register value will be here.  Actual
>  	 * enabling happens during link training farther down.
>  	 */
> -	intel_ddi_init_dp_buf_reg(encoder, crtc_state);
> +	intel_ddi_init_dp_buf_reg(encoder, master_crtc_state);
>  
>  	intel_pps_on(intel_dp);
>  
> -	intel_ddi_enable_clock(encoder, crtc_state);
> +	intel_ddi_enable_clock(encoder, master_crtc_state);
>  
>  	if (!intel_tc_port_in_tbt_alt_mode(dig_port)) {
>  		drm_WARN_ON(&dev_priv->drm, dig_port->ddi_io_wakeref);
> @@ -2776,39 +2776,39 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  								   dig_port->ddi_io_power_domain);
>  	}
>  
> -	icl_program_mg_dp_mode(dig_port, crtc_state);
> +	icl_program_mg_dp_mode(dig_port, master_crtc_state);
>  
>  	if (has_buf_trans_select(dev_priv))
> -		hsw_prepare_dp_ddi_buffers(encoder, crtc_state);
> +		hsw_prepare_dp_ddi_buffers(encoder, master_crtc_state);
>  
> -	encoder->set_signal_levels(encoder, crtc_state);
> +	encoder->set_signal_levels(encoder, master_crtc_state);
>  
> -	intel_ddi_power_up_lanes(encoder, crtc_state);
> +	intel_ddi_power_up_lanes(encoder, master_crtc_state);
>  
>  	if (!is_mst)
>  		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
> -	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
> +	intel_dp_configure_protocol_converter(intel_dp, master_crtc_state);
>  	if (!is_mst)
>  		intel_dp_sink_enable_decompression(state,
>  						   to_intel_connector(conn_state->connector),
> -						   crtc_state);
> -	intel_dp_sink_set_fec_ready(intel_dp, crtc_state, true);
> -	intel_dp_start_link_train(intel_dp, crtc_state);
> +						   master_crtc_state);
> +	intel_dp_sink_set_fec_ready(intel_dp, master_crtc_state, true);
> +	intel_dp_start_link_train(intel_dp, master_crtc_state);
>  	if ((port != PORT_A || DISPLAY_VER(dev_priv) >= 9) &&
> -	    !is_trans_port_sync_mode(crtc_state))
> -		intel_dp_stop_link_train(intel_dp, crtc_state);
> +	    !is_trans_port_sync_mode(master_crtc_state))
> +		intel_dp_stop_link_train(intel_dp, master_crtc_state);
>  
> -	intel_ddi_enable_fec(encoder, crtc_state);
> +	intel_ddi_enable_fec(encoder, master_crtc_state);
>  
>  	if (!is_mst) {
> -		intel_ddi_enable_transcoder_clock(encoder, crtc_state);
> -		intel_dsc_dp_pps_write(encoder, crtc_state);
> +		intel_ddi_enable_transcoder_clock(encoder, master_crtc_state);
> +		intel_dsc_dp_pps_write(encoder, master_crtc_state);
>  	}
>  }
>  
>  static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  				    struct intel_encoder *encoder,
> -				    const struct intel_crtc_state *crtc_state,
> +				    const struct intel_crtc_state *master_crtc_state,
>  				    const struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> @@ -2816,29 +2816,29 @@ static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  
>  	if (HAS_DP20(dev_priv)) {
>  		intel_dp_128b132b_sdp_crc16(enc_to_intel_dp(encoder),
> -					    crtc_state);
> -		if (crtc_state->has_panel_replay)
> +					    master_crtc_state);
> +		if (master_crtc_state->has_panel_replay)
>  			drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG,
>  					   DP_PANEL_REPLAY_ENABLE);
>  	}
>  
>  	if (DISPLAY_VER(dev_priv) >= 14)
> -		mtl_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
> +		mtl_ddi_pre_enable_dp(state, encoder, master_crtc_state, conn_state);
>  	else if (DISPLAY_VER(dev_priv) >= 12)
> -		tgl_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
> +		tgl_ddi_pre_enable_dp(state, encoder, master_crtc_state, conn_state);
>  	else
> -		hsw_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
> +		hsw_ddi_pre_enable_dp(state, encoder, master_crtc_state, conn_state);
>  
>  	/* MST will call a setting of MSA after an allocating of Virtual Channel
>  	 * from MST encoder pre_enable callback.
>  	 */
> -	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
> -		intel_ddi_set_dp_msa(crtc_state, conn_state);
> +	if (!intel_crtc_has_type(master_crtc_state, INTEL_OUTPUT_DP_MST))
> +		intel_ddi_set_dp_msa(master_crtc_state, conn_state);
>  }
>  
>  static void intel_ddi_pre_enable_hdmi(struct intel_atomic_state *state,
>  				      struct intel_encoder *encoder,
> -				      const struct intel_crtc_state *crtc_state,
> +				      const struct intel_crtc_state *master_crtc_state,
>  				      const struct drm_connector_state *conn_state)
>  {
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> @@ -2846,27 +2846,27 @@ static void intel_ddi_pre_enable_hdmi(struct intel_atomic_state *state,
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  
>  	intel_dp_dual_mode_set_tmds_output(intel_hdmi, true);
> -	intel_ddi_enable_clock(encoder, crtc_state);
> +	intel_ddi_enable_clock(encoder, master_crtc_state);
>  
>  	drm_WARN_ON(&dev_priv->drm, dig_port->ddi_io_wakeref);
>  	dig_port->ddi_io_wakeref = intel_display_power_get(dev_priv,
>  							   dig_port->ddi_io_power_domain);
>  
> -	icl_program_mg_dp_mode(dig_port, crtc_state);
> +	icl_program_mg_dp_mode(dig_port, master_crtc_state);
>  
> -	intel_ddi_enable_transcoder_clock(encoder, crtc_state);
> +	intel_ddi_enable_transcoder_clock(encoder, master_crtc_state);
>  
>  	dig_port->set_infoframes(encoder,
> -				 crtc_state->has_infoframe,
> -				 crtc_state, conn_state);
> +				 master_crtc_state->has_infoframe,
> +				 master_crtc_state, conn_state);
>  }
>  
>  static void intel_ddi_pre_enable(struct intel_atomic_state *state,
>  				 struct intel_encoder *encoder,
> -				 const struct intel_crtc_state *crtc_state,
> +				 const struct intel_crtc_state *master_crtc_state,
>  				 const struct drm_connector_state *conn_state)
>  {
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_crtc *crtc = to_intel_crtc(master_crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum pipe pipe = crtc->pipe;
>  
> @@ -2876,32 +2876,32 @@ static void intel_ddi_pre_enable(struct intel_atomic_state *state,
>  	 * - encoder will be the main encoder (ie. mst->primary)
>  	 * - the main connector associated with this port
>  	 *   won't be active or linked to a crtc
> -	 * - crtc_state will be the state of the first stream to
> +	 * - master_crtc_state will be the state of the first stream to
>  	 *   be activated on this port, and it may not be the same
>  	 *   stream that will be deactivated last, but each stream
>  	 *   should have a state that is identical when it comes to
>  	 *   the DP link parameteres
>  	 */
>  
> -	drm_WARN_ON(&dev_priv->drm, crtc_state->has_pch_encoder);
> +	drm_WARN_ON(&dev_priv->drm, master_crtc_state->has_pch_encoder);
>  
>  	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
>  
> -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> -		intel_ddi_pre_enable_hdmi(state, encoder, crtc_state,
> +	if (intel_crtc_has_type(master_crtc_state, INTEL_OUTPUT_HDMI)) {
> +		intel_ddi_pre_enable_hdmi(state, encoder, master_crtc_state,
>  					  conn_state);
>  	} else {
>  		struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  
> -		intel_ddi_pre_enable_dp(state, encoder, crtc_state,
> +		intel_ddi_pre_enable_dp(state, encoder, master_crtc_state,
>  					conn_state);
>  
>  		/* FIXME precompute everything properly */
>  		/* FIXME how do we turn infoframes off again? */
>  		if (dig_port->lspcon.active && intel_dp_has_hdmi_sink(&dig_port->dp))
>  			dig_port->set_infoframes(encoder,
> -						 crtc_state->has_infoframe,
> -						 crtc_state, conn_state);
> +						 master_crtc_state->has_infoframe,
> +						 master_crtc_state, conn_state);
>  	}
>  }
>  
> @@ -3000,19 +3000,19 @@ static void intel_disable_ddi_buf(struct intel_encoder *encoder,
>  
>  static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
>  				      struct intel_encoder *encoder,
> -				      const struct intel_crtc_state *old_crtc_state,
> +				      const struct intel_crtc_state *old_master_crtc_state,
>  				      const struct drm_connector_state *old_conn_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	struct intel_dp *intel_dp = &dig_port->dp;
>  	intel_wakeref_t wakeref;
> -	bool is_mst = intel_crtc_has_type(old_crtc_state,
> +	bool is_mst = intel_crtc_has_type(old_master_crtc_state,
>  					  INTEL_OUTPUT_DP_MST);
>  
>  	if (!is_mst)
>  		intel_dp_set_infoframes(encoder, false,
> -					old_crtc_state, old_conn_state);
> +					old_master_crtc_state, old_conn_state);
>  
>  	/*
>  	 * Power down sink before disabling the port, otherwise we end
> @@ -3022,7 +3022,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
>  
>  	if (DISPLAY_VER(dev_priv) >= 12) {
>  		if (is_mst) {
> -			enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
> +			enum transcoder cpu_transcoder = old_master_crtc_state->cpu_transcoder;
>  
>  			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder),
>  				     TGL_TRANS_DDI_PORT_MASK | TRANS_DDI_MODE_SELECT_MASK,
> @@ -3030,12 +3030,12 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
>  		}
>  	} else {
>  		if (!is_mst)
> -			intel_ddi_disable_transcoder_clock(old_crtc_state);
> +			intel_ddi_disable_transcoder_clock(old_master_crtc_state);
>  	}
>  
> -	intel_disable_ddi_buf(encoder, old_crtc_state);
> +	intel_disable_ddi_buf(encoder, old_master_crtc_state);
>  
> -	intel_dp_sink_set_fec_ready(intel_dp, old_crtc_state, false);
> +	intel_dp_sink_set_fec_ready(intel_dp, old_master_crtc_state, false);
>  
>  	/*
>  	 * From TGL spec: "If single stream or multi-stream master transcoder:
> @@ -3043,7 +3043,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
>  	 * transcoder"
>  	 */
>  	if (DISPLAY_VER(dev_priv) >= 12)
> -		intel_ddi_disable_transcoder_clock(old_crtc_state);
> +		intel_ddi_disable_transcoder_clock(old_master_crtc_state);
>  
>  	intel_pps_vdd_on(intel_dp);
>  	intel_pps_off(intel_dp);
> @@ -3065,7 +3065,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
>  
>  static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
>  					struct intel_encoder *encoder,
> -					const struct intel_crtc_state *old_crtc_state,
> +					const struct intel_crtc_state *old_master_crtc_state,
>  					const struct drm_connector_state *old_conn_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> @@ -3074,15 +3074,15 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
>  	intel_wakeref_t wakeref;
>  
>  	dig_port->set_infoframes(encoder, false,
> -				 old_crtc_state, old_conn_state);
> +				 old_master_crtc_state, old_conn_state);
>  
>  	if (DISPLAY_VER(dev_priv) < 12)
> -		intel_ddi_disable_transcoder_clock(old_crtc_state);
> +		intel_ddi_disable_transcoder_clock(old_master_crtc_state);
>  
> -	intel_disable_ddi_buf(encoder, old_crtc_state);
> +	intel_disable_ddi_buf(encoder, old_master_crtc_state);
>  
>  	if (DISPLAY_VER(dev_priv) >= 12)
> -		intel_ddi_disable_transcoder_clock(old_crtc_state);
> +		intel_ddi_disable_transcoder_clock(old_master_crtc_state);
>  
>  	wakeref = fetch_and_zero(&dig_port->ddi_io_wakeref);
>  	if (wakeref)
> @@ -3097,29 +3097,29 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
>  
>  static void intel_ddi_post_disable(struct intel_atomic_state *state,
>  				   struct intel_encoder *encoder,
> -				   const struct intel_crtc_state *old_crtc_state,
> +				   const struct intel_crtc_state *old_master_crtc_state,
>  				   const struct drm_connector_state *old_conn_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_crtc *slave_crtc;
>  
> -	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST)) {
> -		intel_crtc_vblank_off(old_crtc_state);
> +	if (!intel_crtc_has_type(old_master_crtc_state, INTEL_OUTPUT_DP_MST)) {
> +		intel_crtc_vblank_off(old_master_crtc_state);
>  
> -		intel_disable_transcoder(old_crtc_state);
> +		intel_disable_transcoder(old_master_crtc_state);
>  
> -		intel_ddi_disable_transcoder_func(old_crtc_state);
> +		intel_ddi_disable_transcoder_func(old_master_crtc_state);
>  
> -		intel_dsc_disable(old_crtc_state);
> +		intel_dsc_disable(old_master_crtc_state);
>  
>  		if (DISPLAY_VER(dev_priv) >= 9)
> -			skl_scaler_disable(old_crtc_state);
> +			skl_scaler_disable(old_master_crtc_state);
>  		else
> -			ilk_pfit_disable(old_crtc_state);
> +			ilk_pfit_disable(old_master_crtc_state);
>  	}
>  
>  	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
> -					 intel_crtc_bigjoiner_slave_pipes(old_crtc_state)) {
> +					 intel_crtc_bigjoiner_slave_pipes(old_master_crtc_state)) {
>  		const struct intel_crtc_state *old_slave_crtc_state =
>  			intel_atomic_get_old_crtc_state(state, slave_crtc);
>  
> @@ -3142,17 +3142,17 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
>  	 *   the DP link parameteres
>  	 */
>  
> -	if (intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_HDMI))
> -		intel_ddi_post_disable_hdmi(state, encoder, old_crtc_state,
> +	if (intel_crtc_has_type(old_master_crtc_state, INTEL_OUTPUT_HDMI))
> +		intel_ddi_post_disable_hdmi(state, encoder, old_master_crtc_state,
>  					    old_conn_state);
>  	else
> -		intel_ddi_post_disable_dp(state, encoder, old_crtc_state,
> +		intel_ddi_post_disable_dp(state, encoder, old_master_crtc_state,
>  					  old_conn_state);
>  }
>  
>  static void intel_ddi_post_pll_disable(struct intel_atomic_state *state,
>  				       struct intel_encoder *encoder,
> -				       const struct intel_crtc_state *old_crtc_state,
> +				       const struct intel_crtc_state *old_master_crtc_state,
>  				       const struct drm_connector_state *old_conn_state)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> @@ -3160,7 +3160,7 @@ static void intel_ddi_post_pll_disable(struct intel_atomic_state *state,
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
>  	bool is_tc_port = intel_phy_is_tc(i915, phy);
>  
> -	main_link_aux_power_domain_put(dig_port, old_crtc_state);
> +	main_link_aux_power_domain_put(dig_port, old_master_crtc_state);
>  
>  	if (is_tc_port)
>  		intel_tc_port_put_link(dig_port);
> @@ -3205,7 +3205,7 @@ static void trans_port_sync_stop_link_train(struct intel_atomic_state *state,
>  
>  static void intel_enable_ddi_dp(struct intel_atomic_state *state,
>  				struct intel_encoder *encoder,
> -				const struct intel_crtc_state *crtc_state,
> +				const struct intel_crtc_state *master_crtc_state,
>  				const struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> @@ -3214,15 +3214,15 @@ static void intel_enable_ddi_dp(struct intel_atomic_state *state,
>  	enum port port = encoder->port;
>  
>  	if (port == PORT_A && DISPLAY_VER(dev_priv) < 9)
> -		intel_dp_stop_link_train(intel_dp, crtc_state);
> +		intel_dp_stop_link_train(intel_dp, master_crtc_state);
>  
>  	drm_connector_update_privacy_screen(conn_state);
> -	intel_edp_backlight_on(crtc_state, conn_state);
> +	intel_edp_backlight_on(master_crtc_state, conn_state);
>  
>  	if (!dig_port->lspcon.active || intel_dp_has_hdmi_sink(&dig_port->dp))
> -		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
> +		intel_dp_set_infoframes(encoder, true, master_crtc_state, conn_state);
>  
> -	trans_port_sync_stop_link_train(state, encoder, crtc_state);
> +	trans_port_sync_stop_link_train(state, encoder, master_crtc_state);
>  }
>  
>  /* FIXME bad home for this function */
> @@ -3256,7 +3256,7 @@ gen9_chicken_trans_reg_by_port(struct drm_i915_private *dev_priv,
>  
>  static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  				  struct intel_encoder *encoder,
> -				  const struct intel_crtc_state *crtc_state,
> +				  const struct intel_crtc_state *master_crtc_state,
>  				  const struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> @@ -3267,20 +3267,20 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  	u32 buf_ctl;
>  
>  	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
> -					       crtc_state->hdmi_high_tmds_clock_ratio,
> -					       crtc_state->hdmi_scrambling))
> +					       master_crtc_state->hdmi_high_tmds_clock_ratio,
> +					       master_crtc_state->hdmi_scrambling))
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "[CONNECTOR:%d:%s] Failed to configure sink scrambling/TMDS bit clock ratio\n",
>  			    connector->base.id, connector->name);
>  
>  	if (has_buf_trans_select(dev_priv))
> -		hsw_prepare_hdmi_ddi_buffers(encoder, crtc_state);
> +		hsw_prepare_hdmi_ddi_buffers(encoder, master_crtc_state);
>  
>  	/* e. Enable D2D Link for C10/C20 Phy */
>  	if (DISPLAY_VER(dev_priv) >= 14)
>  		mtl_ddi_enable_d2d(encoder);
>  
> -	encoder->set_signal_levels(encoder, crtc_state);
> +	encoder->set_signal_levels(encoder, master_crtc_state);
>  
>  	/* Display WA #1143: skl,kbl,cfl */
>  	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv)) {
> @@ -3317,7 +3317,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  		intel_de_write(dev_priv, reg, val);
>  	}
>  
> -	intel_ddi_power_up_lanes(encoder, crtc_state);
> +	intel_ddi_power_up_lanes(encoder, master_crtc_state);
>  
>  	/* In HDMI/DVI mode, the port width, and swing/emphasis values
>  	 * are ignored so nothing special needs to be done besides
> @@ -3327,12 +3327,12 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  	 * these are both 0 for HDMI.
>  	 *
>  	 * But MTL onwards HDMI2.1 is supported and in TMDS mode this
> -	 * is filled with lane count, already set in the crtc_state.
> +	 * is filled with lane count, already set in the master_crtc_state.
>  	 * The same is required to be filled in PORT_BUF_CTL for C10/20 Phy.
>  	 */
>  	buf_ctl = dig_port->saved_port_bits | DDI_BUF_CTL_ENABLE;
>  	if (DISPLAY_VER(dev_priv) >= 14) {
> -		u8  lane_count = mtl_get_port_width(crtc_state->lane_count);
> +		u8  lane_count = mtl_get_port_width(master_crtc_state->lane_count);
>  		u32 port_buf = 0;
>  
>  		port_buf |= XELPDP_PORT_WIDTH(lane_count);
> @@ -3359,35 +3359,35 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  
>  static void intel_enable_ddi(struct intel_atomic_state *state,
>  			     struct intel_encoder *encoder,
> -			     const struct intel_crtc_state *crtc_state,
> +			     const struct intel_crtc_state *master_crtc_state,
>  			     const struct drm_connector_state *conn_state)
>  {
> -	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
> +	drm_WARN_ON(state->base.dev, master_crtc_state->has_pch_encoder);
>  
> -	if (!intel_crtc_is_bigjoiner_slave(crtc_state))
> -		intel_ddi_enable_transcoder_func(encoder, crtc_state);
> +	if (!intel_crtc_is_bigjoiner_slave(master_crtc_state))
> +		intel_ddi_enable_transcoder_func(encoder, master_crtc_state);
>  
>  	/* Enable/Disable DP2.0 SDP split config before transcoder */
> -	intel_audio_sdp_split_update(crtc_state);
> +	intel_audio_sdp_split_update(master_crtc_state);
>  
> -	intel_enable_transcoder(crtc_state);
> +	intel_enable_transcoder(master_crtc_state);
>  
> -	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
> +	intel_ddi_wait_for_fec_status(encoder, master_crtc_state, true);
>  
> -	intel_crtc_vblank_on(crtc_state);
> +	intel_crtc_vblank_on(master_crtc_state);
>  
> -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		intel_enable_ddi_hdmi(state, encoder, crtc_state, conn_state);
> +	if (intel_crtc_has_type(master_crtc_state, INTEL_OUTPUT_HDMI))
> +		intel_enable_ddi_hdmi(state, encoder, master_crtc_state, conn_state);
>  	else
> -		intel_enable_ddi_dp(state, encoder, crtc_state, conn_state);
> +		intel_enable_ddi_dp(state, encoder, master_crtc_state, conn_state);
>  
> -	intel_hdcp_enable(state, encoder, crtc_state, conn_state);
> +	intel_hdcp_enable(state, encoder, master_crtc_state, conn_state);
>  
>  }
>  
>  static void intel_disable_ddi_dp(struct intel_atomic_state *state,
>  				 struct intel_encoder *encoder,
> -				 const struct intel_crtc_state *old_crtc_state,
> +				 const struct intel_crtc_state *old_master_crtc_state,
>  				 const struct drm_connector_state *old_conn_state)
>  {
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> @@ -3396,19 +3396,19 @@ static void intel_disable_ddi_dp(struct intel_atomic_state *state,
>  
>  	intel_dp->link_trained = false;
>  
> -	intel_psr_disable(intel_dp, old_crtc_state);
> +	intel_psr_disable(intel_dp, old_master_crtc_state);
>  	intel_edp_backlight_off(old_conn_state);
>  	/* Disable the decompression in DP Sink */
>  	intel_dp_sink_disable_decompression(state,
> -					    connector, old_crtc_state);
> +					    connector, old_master_crtc_state);
>  	/* Disable Ignore_MSA bit in DP Sink */
> -	intel_dp_sink_set_msa_timing_par_ignore_state(intel_dp, old_crtc_state,
> +	intel_dp_sink_set_msa_timing_par_ignore_state(intel_dp, old_master_crtc_state,
>  						      false);
>  }
>  
>  static void intel_disable_ddi_hdmi(struct intel_atomic_state *state,
>  				   struct intel_encoder *encoder,
> -				   const struct intel_crtc_state *old_crtc_state,
> +				   const struct intel_crtc_state *old_master_crtc_state,
>  				   const struct drm_connector_state *old_conn_state)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> @@ -3423,55 +3423,55 @@ static void intel_disable_ddi_hdmi(struct intel_atomic_state *state,
>  
>  static void intel_disable_ddi(struct intel_atomic_state *state,
>  			      struct intel_encoder *encoder,
> -			      const struct intel_crtc_state *old_crtc_state,
> +			      const struct intel_crtc_state *old_master_crtc_state,
>  			      const struct drm_connector_state *old_conn_state)
>  {
>  	intel_tc_port_link_cancel_reset_work(enc_to_dig_port(encoder));
>  
>  	intel_hdcp_disable(to_intel_connector(old_conn_state->connector));
>  
> -	if (intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_HDMI))
> -		intel_disable_ddi_hdmi(state, encoder, old_crtc_state,
> +	if (intel_crtc_has_type(old_master_crtc_state, INTEL_OUTPUT_HDMI))
> +		intel_disable_ddi_hdmi(state, encoder, old_master_crtc_state,
>  				       old_conn_state);
>  	else
> -		intel_disable_ddi_dp(state, encoder, old_crtc_state,
> +		intel_disable_ddi_dp(state, encoder, old_master_crtc_state,
>  				     old_conn_state);
>  }
>  
>  static void intel_ddi_update_pipe_dp(struct intel_atomic_state *state,
>  				     struct intel_encoder *encoder,
> -				     const struct intel_crtc_state *crtc_state,
> +				     const struct intel_crtc_state *master_crtc_state,
>  				     const struct drm_connector_state *conn_state)
>  {
> -	intel_ddi_set_dp_msa(crtc_state, conn_state);
> +	intel_ddi_set_dp_msa(master_crtc_state, conn_state);
>  
> -	intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
> +	intel_dp_set_infoframes(encoder, true, master_crtc_state, conn_state);
>  
> -	intel_backlight_update(state, encoder, crtc_state, conn_state);
> +	intel_backlight_update(state, encoder, master_crtc_state, conn_state);
>  	drm_connector_update_privacy_screen(conn_state);
>  }
>  
>  void intel_ddi_update_pipe(struct intel_atomic_state *state,
>  			   struct intel_encoder *encoder,
> -			   const struct intel_crtc_state *crtc_state,
> +			   const struct intel_crtc_state *master_crtc_state,
>  			   const struct drm_connector_state *conn_state)
>  {
>  
> -	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
> +	if (!intel_crtc_has_type(master_crtc_state, INTEL_OUTPUT_HDMI) &&
>  	    !intel_encoder_is_mst(encoder))
> -		intel_ddi_update_pipe_dp(state, encoder, crtc_state,
> +		intel_ddi_update_pipe_dp(state, encoder, master_crtc_state,
>  					 conn_state);
>  
> -	intel_hdcp_update_pipe(state, encoder, crtc_state, conn_state);
> +	intel_hdcp_update_pipe(state, encoder, master_crtc_state, conn_state);
>  }
>  
>  void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
>  				  struct intel_encoder *encoder,
> -				  struct intel_crtc *crtc)
> +				  struct intel_crtc *master_crtc)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	struct intel_crtc_state *crtc_state =
> -		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct intel_crtc_state *master_crtc_state =
> +		intel_atomic_get_new_crtc_state(state, master_crtc);
>  	struct intel_crtc *slave_crtc;
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
>  
> @@ -3479,16 +3479,16 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
>  	if (DISPLAY_VER(i915) >= 14 || !intel_phy_is_tc(i915, phy))
>  		return;
>  
> -	intel_update_active_dpll(state, crtc, encoder);
> +	intel_update_active_dpll(state, master_crtc, encoder);
>  	for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
> -					 intel_crtc_bigjoiner_slave_pipes(crtc_state))
> +					 intel_crtc_bigjoiner_slave_pipes(master_crtc_state))
>  		intel_update_active_dpll(state, slave_crtc, encoder);
>  }
>  
>  static void
>  intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
>  			 struct intel_encoder *encoder,
> -			 const struct intel_crtc_state *crtc_state,
> +			 const struct intel_crtc_state *master_crtc_state,
>  			 const struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> @@ -3498,23 +3498,23 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
>  
>  	if (is_tc_port) {
>  		struct intel_crtc *master_crtc =
> -			to_intel_crtc(crtc_state->uapi.crtc);
> +			to_intel_crtc(master_crtc_state->uapi.crtc);
>  
> -		intel_tc_port_get_link(dig_port, crtc_state->lane_count);
> +		intel_tc_port_get_link(dig_port, master_crtc_state->lane_count);
>  		intel_ddi_update_active_dpll(state, encoder, master_crtc);
>  	}
>  
> -	main_link_aux_power_domain_get(dig_port, crtc_state);
> +	main_link_aux_power_domain_get(dig_port, master_crtc_state);
>  
>  	if (is_tc_port && !intel_tc_port_in_tbt_alt_mode(dig_port))
>  		/*
>  		 * Program the lane count for static/dynamic connections on
>  		 * Type-C ports.  Skip this step for TBT.
>  		 */
> -		intel_tc_port_set_fia_lane_count(dig_port, crtc_state->lane_count);
> +		intel_tc_port_set_fia_lane_count(dig_port, master_crtc_state->lane_count);
>  	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>  		bxt_ddi_phy_set_lane_optim_mask(encoder,
> -						crtc_state->lane_lat_optim_mask);
> +						master_crtc_state->lane_lat_optim_mask);
>  }
>  
>  static void adlp_tbt_to_dp_alt_switch_wa(struct intel_encoder *encoder)
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ab2f52d21bad..f29d38a8035e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1634,88 +1634,88 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
>  }
>  
>  static void hsw_crtc_enable(struct intel_atomic_state *state,
> -			    struct intel_crtc *crtc)
> +			    struct intel_crtc *master_crtc)
>  {
> -	const struct intel_crtc_state *new_crtc_state =
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	enum pipe pipe = crtc->pipe, hsw_workaround_pipe;
> -	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
> +	const struct intel_crtc_state *new_master_crtc_state =
> +		intel_atomic_get_new_crtc_state(state, master_crtc);
> +	struct drm_i915_private *dev_priv = to_i915(master_crtc->base.dev);
> +	enum transcoder cpu_transcoder = new_master_crtc_state->cpu_transcoder;
> +	enum pipe hsw_workaround_pipe;
>  	bool psl_clkgate_wa;
>  
> -	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
> +	if (drm_WARN_ON(&dev_priv->drm, master_crtc->active))
>  		return;
>  
> -	intel_dmc_enable_pipe(dev_priv, crtc->pipe);
> +	intel_dmc_enable_pipe(dev_priv, master_crtc->pipe);
>  
> -	if (!new_crtc_state->bigjoiner_pipes) {
> -		intel_encoders_pre_pll_enable(state, crtc);
> +	if (!new_master_crtc_state->bigjoiner_pipes) {
> +		intel_encoders_pre_pll_enable(state, master_crtc);
>  
> -		if (new_crtc_state->shared_dpll)
> -			intel_enable_shared_dpll(new_crtc_state);
> +		if (new_master_crtc_state->shared_dpll)
> +			intel_enable_shared_dpll(new_master_crtc_state);
>  
> -		intel_encoders_pre_enable(state, crtc);
> +		intel_encoders_pre_enable(state, master_crtc);
>  	} else {
> -		icl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
> +		icl_ddi_bigjoiner_pre_enable(state, new_master_crtc_state);
>  	}
>  
> -	intel_dsc_enable(new_crtc_state);
> +	intel_dsc_enable(new_master_crtc_state);
>  
>  	if (DISPLAY_VER(dev_priv) >= 13)
> -		intel_uncompressed_joiner_enable(new_crtc_state);
> +		intel_uncompressed_joiner_enable(new_master_crtc_state);
>  
> -	intel_set_pipe_src_size(new_crtc_state);
> +	intel_set_pipe_src_size(new_master_crtc_state);
>  	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
> -		bdw_set_pipe_misc(new_crtc_state);
> +		bdw_set_pipe_misc(new_master_crtc_state);
>  
> -	if (!intel_crtc_is_bigjoiner_slave(new_crtc_state) &&
> +	if (!intel_crtc_is_bigjoiner_slave(new_master_crtc_state) &&
>  	    !transcoder_is_dsi(cpu_transcoder))
> -		hsw_configure_cpu_transcoder(new_crtc_state);
> +		hsw_configure_cpu_transcoder(new_master_crtc_state);
>  
> -	crtc->active = true;
> +	master_crtc->active = true;
>  
>  	/* Display WA #1180: WaDisableScalarClockGating: glk */
>  	psl_clkgate_wa = DISPLAY_VER(dev_priv) == 10 &&
> -		new_crtc_state->pch_pfit.enabled;
> +		new_master_crtc_state->pch_pfit.enabled;
>  	if (psl_clkgate_wa)
> -		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
> +		glk_pipe_scaler_clock_gating_wa(dev_priv, master_crtc->pipe, true);
>  
>  	if (DISPLAY_VER(dev_priv) >= 9)
> -		skl_pfit_enable(new_crtc_state);
> +		skl_pfit_enable(new_master_crtc_state);
>  	else
> -		ilk_pfit_enable(new_crtc_state);
> +		ilk_pfit_enable(new_master_crtc_state);
>  
>  	/*
>  	 * On ILK+ LUT must be loaded before the pipe is running but with
>  	 * clocks enabled
>  	 */
> -	intel_color_load_luts(new_crtc_state);
> -	intel_color_commit_noarm(new_crtc_state);
> -	intel_color_commit_arm(new_crtc_state);
> +	intel_color_load_luts(new_master_crtc_state);
> +	intel_color_commit_noarm(new_master_crtc_state);
> +	intel_color_commit_arm(new_master_crtc_state);
>  	/* update DSPCNTR to configure gamma/csc for pipe bottom color */
>  	if (DISPLAY_VER(dev_priv) < 9)
> -		intel_disable_primary_plane(new_crtc_state);
> +		intel_disable_primary_plane(new_master_crtc_state);
>  
> -	hsw_set_linetime_wm(new_crtc_state);
> +	hsw_set_linetime_wm(new_master_crtc_state);
>  
>  	if (DISPLAY_VER(dev_priv) >= 11)
> -		icl_set_pipe_chicken(new_crtc_state);
> +		icl_set_pipe_chicken(new_master_crtc_state);
>  
> -	intel_initial_watermarks(state, crtc);
> +	intel_initial_watermarks(state, master_crtc);
>  
> -	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
> -		intel_crtc_vblank_on(new_crtc_state);
> +	if (intel_crtc_is_bigjoiner_slave(new_master_crtc_state))
> +		intel_crtc_vblank_on(new_master_crtc_state);
>  
> -	intel_encoders_enable(state, crtc);
> +	intel_encoders_enable(state, master_crtc);
>  
>  	if (psl_clkgate_wa) {
> -		intel_crtc_wait_for_next_vblank(crtc);
> -		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, false);
> +		intel_crtc_wait_for_next_vblank(master_crtc);
> +		glk_pipe_scaler_clock_gating_wa(dev_priv, master_crtc->pipe, false);
>  	}
>  
>  	/* If we change the relative order between pipe/planes enabling, we need
>  	 * to change the workaround. */
> -	hsw_workaround_pipe = new_crtc_state->hsw_workaround_pipe;
> +	hsw_workaround_pipe = new_master_crtc_state->hsw_workaround_pipe;
>  	if (IS_HASWELL(dev_priv) && hsw_workaround_pipe != INVALID_PIPE) {
>  		struct intel_crtc *wa_crtc;
>  
> @@ -1781,32 +1781,32 @@ static void ilk_crtc_disable(struct intel_atomic_state *state,
>  }
>  
>  static void hsw_crtc_disable(struct intel_atomic_state *state,
> -			     struct intel_crtc *crtc)
> +			     struct intel_crtc *master_crtc)
>  {
> -	const struct intel_crtc_state *old_crtc_state =
> -		intel_atomic_get_old_crtc_state(state, crtc);
> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	const struct intel_crtc_state *old_master_crtc_state =
> +		intel_atomic_get_old_crtc_state(state, master_crtc);
> +	struct drm_i915_private *i915 = to_i915(master_crtc->base.dev);
>  
>  	/*
>  	 * FIXME collapse everything to one hook.
>  	 * Need care with mst->ddi interactions.
>  	 */
> -	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
> -		intel_encoders_disable(state, crtc);
> -		intel_encoders_post_disable(state, crtc);
> +	if (!intel_crtc_is_bigjoiner_slave(old_master_crtc_state)) {
> +		intel_encoders_disable(state, master_crtc);
> +		intel_encoders_post_disable(state, master_crtc);
>  	}
>  
> -	intel_disable_shared_dpll(old_crtc_state);
> +	intel_disable_shared_dpll(old_master_crtc_state);
>  
> -	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
> +	if (!intel_crtc_is_bigjoiner_slave(old_master_crtc_state)) {
>  		struct intel_crtc *slave_crtc;
>  
> -		intel_encoders_post_pll_disable(state, crtc);
> +		intel_encoders_post_pll_disable(state, master_crtc);
>  
> -		intel_dmc_disable_pipe(i915, crtc->pipe);
> +		intel_dmc_disable_pipe(i915, master_crtc->pipe);
>  
>  		for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
> -						 intel_crtc_bigjoiner_slave_pipes(old_crtc_state))
> +						 intel_crtc_bigjoiner_slave_pipes(old_master_crtc_state))
>  			intel_dmc_disable_pipe(i915, slave_crtc->pipe);
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index db1254b036f1..e4e71e4ae0e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -917,7 +917,7 @@ static void wait_for_act_sent(struct intel_encoder *encoder,
>  
>  static void intel_mst_disable_dp(struct intel_atomic_state *state,
>  				 struct intel_encoder *encoder,
> -				 const struct intel_crtc_state *old_crtc_state,
> +				 const struct intel_crtc_state *old_master_crtc_state,
>  				 const struct drm_connector_state *old_conn_state)
>  {
>  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
> @@ -932,12 +932,12 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
>  
>  	intel_hdcp_disable(intel_mst->connector);
>  
> -	intel_dp_sink_disable_decompression(state, connector, old_crtc_state);
> +	intel_dp_sink_disable_decompression(state, connector, old_master_crtc_state);
>  }
>  
>  static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  				      struct intel_encoder *encoder,
> -				      const struct intel_crtc_state *old_crtc_state,
> +				      const struct intel_crtc_state *old_master_crtc_state,
>  				      const struct drm_connector_state *old_conn_state)
>  {
>  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
> @@ -960,32 +960,32 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  	last_mst_stream = intel_dp->active_mst_links == 0;
>  	drm_WARN_ON(&dev_priv->drm,
>  		    DISPLAY_VER(dev_priv) >= 12 && last_mst_stream &&
> -		    !intel_dp_mst_is_master_trans(old_crtc_state));
> +		    !intel_dp_mst_is_master_trans(old_master_crtc_state));
>  
> -	intel_crtc_vblank_off(old_crtc_state);
> +	intel_crtc_vblank_off(old_master_crtc_state);
>  
> -	intel_disable_transcoder(old_crtc_state);
> +	intel_disable_transcoder(old_master_crtc_state);
>  
>  	drm_dp_remove_payload_part1(&intel_dp->mst_mgr, new_mst_state, new_payload);
>  
> -	clear_act_sent(encoder, old_crtc_state);
> +	clear_act_sent(encoder, old_master_crtc_state);
>  
> -	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(old_crtc_state->cpu_transcoder),
> +	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(old_master_crtc_state->cpu_transcoder),
>  		     TRANS_DDI_DP_VC_PAYLOAD_ALLOC, 0);
>  
> -	wait_for_act_sent(encoder, old_crtc_state);
> +	wait_for_act_sent(encoder, old_master_crtc_state);
>  
>  	drm_dp_remove_payload_part2(&intel_dp->mst_mgr, new_mst_state,
>  				    old_payload, new_payload);
>  
> -	intel_ddi_disable_transcoder_func(old_crtc_state);
> +	intel_ddi_disable_transcoder_func(old_master_crtc_state);
>  
> -	intel_dsc_disable(old_crtc_state);
> +	intel_dsc_disable(old_master_crtc_state);
>  
>  	if (DISPLAY_VER(dev_priv) >= 9)
> -		skl_scaler_disable(old_crtc_state);
> +		skl_scaler_disable(old_master_crtc_state);
>  	else
> -		ilk_pfit_disable(old_crtc_state);
> +		ilk_pfit_disable(old_master_crtc_state);
>  
>  	/*
>  	 * Power down mst path before disabling the port, otherwise we end
> @@ -999,7 +999,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  	 * the transcoder clock select is set to none.
>  	 */
>  	intel_dp_set_infoframes(&dig_port->base, false,
> -				old_crtc_state, NULL);
> +				old_master_crtc_state, NULL);
>  	/*
>  	 * From TGL spec: "If multi-stream slave transcoder: Configure
>  	 * Transcoder Clock Select to direct no clock to the transcoder"
> @@ -1008,13 +1008,12 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  	 * no clock to the transcoder"
>  	 */
>  	if (DISPLAY_VER(dev_priv) < 12 || !last_mst_stream)
> -		intel_ddi_disable_transcoder_clock(old_crtc_state);
> -
> +		intel_ddi_disable_transcoder_clock(old_master_crtc_state);
>  
>  	intel_mst->connector = NULL;
>  	if (last_mst_stream)
>  		dig_port->base.post_disable(state, &dig_port->base,
> -						  old_crtc_state, NULL);
> +						  old_master_crtc_state, NULL);
>  
>  	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
>  		    intel_dp->active_mst_links);
> @@ -1022,7 +1021,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  
>  static void intel_mst_post_pll_disable_dp(struct intel_atomic_state *state,
>  					  struct intel_encoder *encoder,
> -					  const struct intel_crtc_state *old_crtc_state,
> +					  const struct intel_crtc_state *old_master_crtc_state,
>  					  const struct drm_connector_state *old_conn_state)
>  {
>  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
> @@ -1031,33 +1030,33 @@ static void intel_mst_post_pll_disable_dp(struct intel_atomic_state *state,
>  
>  	if (intel_dp->active_mst_links == 0 &&
>  	    dig_port->base.post_pll_disable)
> -		dig_port->base.post_pll_disable(state, encoder, old_crtc_state, old_conn_state);
> +		dig_port->base.post_pll_disable(state, encoder, old_master_crtc_state, old_conn_state);
>  }
>  
>  static void intel_mst_pre_pll_enable_dp(struct intel_atomic_state *state,
>  					struct intel_encoder *encoder,
> -					const struct intel_crtc_state *pipe_config,
> +					const struct intel_crtc_state *master_crtc_state,
>  					const struct drm_connector_state *conn_state)
>  {
> +	struct intel_crtc *master_crtc = to_intel_crtc(master_crtc_state->uapi.crtc);
>  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
>  	struct intel_digital_port *dig_port = intel_mst->primary;
>  	struct intel_dp *intel_dp = &dig_port->dp;
>  
>  	if (intel_dp->active_mst_links == 0)
>  		dig_port->base.pre_pll_enable(state, &dig_port->base,
> -						    pipe_config, NULL);
> +					      master_crtc_state, NULL);
>  	else
>  		/*
>  		 * The port PLL state needs to get updated for secondary
>  		 * streams as for the primary stream.
>  		 */
> -		intel_ddi_update_active_dpll(state, &dig_port->base,
> -					     to_intel_crtc(pipe_config->uapi.crtc));
> +		intel_ddi_update_active_dpll(state, &dig_port->base, master_crtc);
>  }
>  
>  static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
>  				    struct intel_encoder *encoder,
> -				    const struct intel_crtc_state *pipe_config,
> +				    const struct intel_crtc_state *master_crtc_state,
>  				    const struct drm_connector_state *conn_state)
>  {
>  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
> @@ -1079,7 +1078,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
>  	first_mst_stream = intel_dp->active_mst_links == 0;
>  	drm_WARN_ON(&dev_priv->drm,
>  		    DISPLAY_VER(dev_priv) >= 12 && first_mst_stream &&
> -		    !intel_dp_mst_is_master_trans(pipe_config));
> +		    !intel_dp_mst_is_master_trans(master_crtc_state));
>  
>  	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
>  		    intel_dp->active_mst_links);
> @@ -1089,11 +1088,11 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
>  
>  	drm_dp_send_power_updown_phy(&intel_dp->mst_mgr, connector->port, true);
>  
> -	intel_dp_sink_enable_decompression(state, connector, pipe_config);
> +	intel_dp_sink_enable_decompression(state, connector, master_crtc_state);
>  
>  	if (first_mst_stream)
>  		dig_port->base.pre_enable(state, &dig_port->base,
> -						pipe_config, NULL);
> +						master_crtc_state, NULL);
>  
>  	intel_dp->active_mst_links++;
>  
> @@ -1111,15 +1110,15 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
>  	 * here for the following ones.
>  	 */
>  	if (DISPLAY_VER(dev_priv) < 12 || !first_mst_stream)
> -		intel_ddi_enable_transcoder_clock(encoder, pipe_config);
> +		intel_ddi_enable_transcoder_clock(encoder, master_crtc_state);
>  
> -	intel_dsc_dp_pps_write(&dig_port->base, pipe_config);
> -	intel_ddi_set_dp_msa(pipe_config, conn_state);
> +	intel_dsc_dp_pps_write(&dig_port->base, master_crtc_state);
> +	intel_ddi_set_dp_msa(master_crtc_state, conn_state);
>  }
>  
>  static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  				struct intel_encoder *encoder,
> -				const struct intel_crtc_state *pipe_config,
> +				const struct intel_crtc_state *master_crtc_state,
>  				const struct drm_connector_state *conn_state)
>  {
>  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
> @@ -1129,25 +1128,25 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct drm_dp_mst_topology_state *mst_state =
>  		drm_atomic_get_new_mst_topology_state(&state->base, &intel_dp->mst_mgr);
> -	enum transcoder trans = pipe_config->cpu_transcoder;
> +	enum transcoder trans = master_crtc_state->cpu_transcoder;
>  	bool first_mst_stream = intel_dp->active_mst_links == 1;
>  
> -	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
> +	drm_WARN_ON(&dev_priv->drm, master_crtc_state->has_pch_encoder);
>  
> -	if (intel_dp_is_uhbr(pipe_config)) {
> +	if (intel_dp_is_uhbr(master_crtc_state)) {
>  		const struct drm_display_mode *adjusted_mode =
> -			&pipe_config->hw.adjusted_mode;
> +			&master_crtc_state->hw.adjusted_mode;
>  		u64 crtc_clock_hz = KHz(adjusted_mode->crtc_clock);
>  
> -		intel_de_write(dev_priv, TRANS_DP2_VFREQHIGH(pipe_config->cpu_transcoder),
> +		intel_de_write(dev_priv, TRANS_DP2_VFREQHIGH(master_crtc_state->cpu_transcoder),
>  			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz >> 24));
> -		intel_de_write(dev_priv, TRANS_DP2_VFREQLOW(pipe_config->cpu_transcoder),
> +		intel_de_write(dev_priv, TRANS_DP2_VFREQLOW(master_crtc_state->cpu_transcoder),
>  			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz & 0xffffff));
>  	}
>  
> -	intel_ddi_enable_transcoder_func(encoder, pipe_config);
> +	intel_ddi_enable_transcoder_func(encoder, master_crtc_state);
>  
> -	clear_act_sent(encoder, pipe_config);
> +	clear_act_sent(encoder, master_crtc_state);
>  
>  	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(trans), 0,
>  		     TRANS_DDI_DP_VC_PAYLOAD_ALLOC);
> @@ -1155,10 +1154,10 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
>  		    intel_dp->active_mst_links);
>  
> -	wait_for_act_sent(encoder, pipe_config);
> +	wait_for_act_sent(encoder, master_crtc_state);
>  
>  	if (first_mst_stream)
> -		intel_ddi_wait_for_fec_status(encoder, pipe_config, true);
> +		intel_ddi_wait_for_fec_status(encoder, master_crtc_state, true);
>  
>  	drm_dp_add_payload_part2(&intel_dp->mst_mgr, &state->base,
>  				 drm_atomic_get_mst_payload_state(mst_state, connector->port));
> @@ -1166,15 +1165,15 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  	if (DISPLAY_VER(dev_priv) >= 12)
>  		intel_de_rmw(dev_priv, hsw_chicken_trans_reg(dev_priv, trans),
>  			     FECSTALL_DIS_DPTSTREAM_DPTTG,
> -			     pipe_config->fec_enable ? FECSTALL_DIS_DPTSTREAM_DPTTG : 0);
> +			     master_crtc_state->fec_enable ? FECSTALL_DIS_DPTSTREAM_DPTTG : 0);
>  
> -	intel_audio_sdp_split_update(pipe_config);
> +	intel_audio_sdp_split_update(master_crtc_state);
>  
> -	intel_enable_transcoder(pipe_config);
> +	intel_enable_transcoder(master_crtc_state);
>  
> -	intel_crtc_vblank_on(pipe_config);
> +	intel_crtc_vblank_on(master_crtc_state);
>  
> -	intel_hdcp_enable(state, encoder, pipe_config, conn_state);
> +	intel_hdcp_enable(state, encoder, master_crtc_state, conn_state);
>  }
>  
>  static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder *encoder,
> -- 
> 2.43.0
> 
