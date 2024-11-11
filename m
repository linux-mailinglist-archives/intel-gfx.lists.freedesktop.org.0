Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DB99C4314
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 17:58:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C356910E2E3;
	Mon, 11 Nov 2024 16:58:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U03v7Q1+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA15410E169;
 Mon, 11 Nov 2024 16:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731344280; x=1762880280;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Ww9dIAd9NQ8qYP1d91faZlXsdwxLWlnnyr/bKTpqM/4=;
 b=U03v7Q1+2duvjSE1Bty9Zh8XwKy2Lqi8C2zqSJ2vljvF9SG/gbVgvHiO
 /uZWrD0LadMdxHxl2XHUCDa/iM8DhmT8CDJz6tQpSYsZGzBKuzYw8gfOl
 79jtjBnkADGHIN5IJGTZ1v7J9EkysMg2ce+ql1G7fp0XeoeO+5o8YouR9
 RDMbGpH9HrUVzdENiK4dDaEj27/TNY/z0Di82P1b1l2mG2daOybfvvw+Y
 SHrcgX3o6YVjxMYklNtHhuVTiA1n/zhYDbzY86CubGUTYCALb3I+Sr3NN
 xefK8SwocAC7bIpbGtUXfnkQ+dFgJlhqxjA5pjzMp5JXBc7AgdARPbO0R Q==;
X-CSE-ConnectionGUID: o4/tEZ11R3O1Wp5uN4Ozsw==
X-CSE-MsgGUID: UEyiXXuOTiCQUdhhpR254Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="34017277"
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="34017277"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 08:57:59 -0800
X-CSE-ConnectionGUID: Hqe3iGpdQKWq/aQeMqX+qg==
X-CSE-MsgGUID: 7sXRoGcaTeieOIzg9oWpAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="91933394"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 08:57:58 -0800
Date: Mon, 11 Nov 2024 18:58:32 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH 7/8] drm/i915/mst: change naming from fake encoders to
 MST stream encoders
Message-ID: <ZzI3uDJM39B_ow4-@ideak-desk.fi.intel.com>
References: <cover.1731011435.git.jani.nikula@intel.com>
 <dcf0df2dc04b16d9093ac9f9b10d5bbc2fc802f3.1731011435.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dcf0df2dc04b16d9093ac9f9b10d5bbc2fc802f3.1731011435.git.jani.nikula@intel.com>
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

On Thu, Nov 07, 2024 at 10:32:20PM +0200, Jani Nikula wrote:
> The fake encoders pretty much match individual MST streams. The encoders
> remain as fake as ever, but change the naming to MST stream
> encoders. Rename all the encoder hooks and related functions called from
> them to mst_stream_* to clarify what type of encoders the hooks are
> called on.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 204 ++++++++++----------
>  1 file changed, 100 insertions(+), 104 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 481510819cc6..0c08212e70ac 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -53,7 +53,7 @@
>  #include "intel_vdsc.h"
>  #include "skl_scaler.h"
>  
> -/* From fake MST encoder to primary encoder */
> +/* From fake MST stream encoder to primary encoder */
>  static struct intel_encoder *to_primary_encoder(struct intel_encoder *encoder)
>  {
>  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
> @@ -62,7 +62,7 @@ static struct intel_encoder *to_primary_encoder(struct intel_encoder *encoder)
>  	return &dig_port->base;
>  }
>  
> -/* From fake MST encoder to primary DP */
> +/* From fake MST stream encoder to primary DP */
>  static struct intel_dp *to_primary_dp(struct intel_encoder *encoder)
>  {
>  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
> @@ -179,14 +179,12 @@ static int intel_dp_mst_dsc_get_slice_count(const struct intel_connector *connec
>  					    num_joined_pipes);
>  }
>  
> -static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
> -						struct intel_crtc_state *crtc_state,
> -						int max_bpp,
> -						int min_bpp,
> -						struct link_config_limits *limits,
> -						struct drm_connector_state *conn_state,
> -						int step,
> -						bool dsc)
> +static int mst_stream_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
> +					      struct intel_crtc_state *crtc_state,
> +					      int max_bpp, int min_bpp,
> +					      struct link_config_limits *limits,
> +					      struct drm_connector_state *conn_state,
> +					      int step, bool dsc)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  	struct drm_atomic_state *state = crtc_state->uapi.state;
> @@ -333,10 +331,10 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  	return slots;
>  }
>  
> -static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
> -					    struct intel_crtc_state *crtc_state,
> -					    struct drm_connector_state *conn_state,
> -					    struct link_config_limits *limits)
> +static int mst_stream_compute_link_config(struct intel_encoder *encoder,
> +					  struct intel_crtc_state *crtc_state,
> +					  struct drm_connector_state *conn_state,
> +					  struct link_config_limits *limits)
>  {
>  	int slots = -EINVAL;
>  
> @@ -344,11 +342,11 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
>  	 * FIXME: allocate the BW according to link_bpp, which in the case of
>  	 * YUV420 is only half of the pipe bpp value.
>  	 */
> -	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state,
> -						     fxp_q4_to_int(limits->link.max_bpp_x16),
> -						     fxp_q4_to_int(limits->link.min_bpp_x16),
> -						     limits,
> -						     conn_state, 2 * 3, false);
> +	slots = mst_stream_find_vcpi_slots_for_bpp(encoder, crtc_state,
> +						   fxp_q4_to_int(limits->link.max_bpp_x16),
> +						   fxp_q4_to_int(limits->link.min_bpp_x16),
> +						   limits,
> +						   conn_state, 2 * 3, false);
>  
>  	if (slots < 0)
>  		return slots;
> @@ -356,10 +354,10 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
>  	return 0;
>  }
>  
> -static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
> -						struct intel_crtc_state *crtc_state,
> -						struct drm_connector_state *conn_state,
> -						struct link_config_limits *limits)
> +static int mst_stream_dsc_compute_link_config(struct intel_encoder *encoder,
> +					      struct intel_crtc_state *crtc_state,
> +					      struct drm_connector_state *conn_state,
> +					      struct link_config_limits *limits)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> @@ -426,18 +424,19 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>  	min_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915, min_compressed_bpp,
>  							    crtc_state->pipe_bpp);
>  
> -	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state, max_compressed_bpp,
> -						     min_compressed_bpp, limits,
> -						     conn_state, 1, true);
> +	slots = mst_stream_find_vcpi_slots_for_bpp(encoder, crtc_state, max_compressed_bpp,
> +						   min_compressed_bpp, limits,
> +						   conn_state, 1, true);
>  
>  	if (slots < 0)
>  		return slots;
>  
>  	return 0;
>  }
> -static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
> -				     struct intel_crtc_state *crtc_state,
> -				     struct drm_connector_state *conn_state)
> +
> +static int mst_stream_update_slots(struct intel_encoder *encoder,
> +				   struct intel_crtc_state *crtc_state,
> +				   struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_dp *intel_dp = to_primary_dp(encoder);
> @@ -550,11 +549,11 @@ adjust_limits_for_dsc_hblank_expansion_quirk(const struct intel_connector *conne
>  }
>  
>  static bool
> -intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
> -				   const struct intel_connector *connector,
> -				   struct intel_crtc_state *crtc_state,
> -				   bool dsc,
> -				   struct link_config_limits *limits)
> +mst_stream_compute_config_limits(struct intel_dp *intel_dp,
> +				 const struct intel_connector *connector,
> +				 struct intel_crtc_state *crtc_state,
> +				 bool dsc,
> +				 struct link_config_limits *limits)
>  {
>  	/*
>  	 * for MST we always configure max link bw - the spec doesn't
> @@ -591,9 +590,9 @@ intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
>  							    dsc);
>  }
>  
> -static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
> -				       struct intel_crtc_state *pipe_config,
> -				       struct drm_connector_state *conn_state)
> +static int mst_stream_compute_config(struct intel_encoder *encoder,
> +				     struct intel_crtc_state *pipe_config,
> +				     struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> @@ -629,15 +628,12 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  	joiner_needs_dsc = intel_dp_joiner_needs_dsc(dev_priv, num_joined_pipes);
>  
>  	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
> -		     !intel_dp_mst_compute_config_limits(intel_dp,
> -							 connector,
> -							 pipe_config,
> -							 false,
> -							 &limits);
> +		!mst_stream_compute_config_limits(intel_dp, connector,
> +						  pipe_config, false, &limits);
>  
>  	if (!dsc_needed) {
> -		ret = intel_dp_mst_compute_link_config(encoder, pipe_config,
> -						       conn_state, &limits);
> +		ret = mst_stream_compute_link_config(encoder, pipe_config,
> +						     conn_state, &limits);
>  
>  		if (ret == -EDEADLK)
>  			return ret;
> @@ -655,11 +651,9 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  		if (!intel_dp_supports_dsc(connector, pipe_config))
>  			return -EINVAL;
>  
> -		if (!intel_dp_mst_compute_config_limits(intel_dp,
> -							connector,
> -							pipe_config,
> -							true,
> -							&limits))
> +		if (!mst_stream_compute_config_limits(intel_dp, connector,
> +						      pipe_config, true,
> +						      &limits))
>  			return -EINVAL;
>  
>  		/*
> @@ -674,8 +668,8 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  		 */
>  		drm_dbg_kms(display->drm, "Trying to find VCPI slots in DSC mode\n");
>  
> -		ret = intel_dp_dsc_mst_compute_link_config(encoder, pipe_config,
> -							   conn_state, &limits);
> +		ret = mst_stream_dsc_compute_link_config(encoder, pipe_config,
> +							 conn_state, &limits);
>  		if (ret < 0)
>  			return ret;
>  
> @@ -687,7 +681,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  	if (ret)
>  		return ret;
>  
> -	ret = intel_dp_mst_update_slots(encoder, pipe_config, conn_state);
> +	ret = mst_stream_update_slots(encoder, pipe_config, conn_state);
>  	if (ret)
>  		return ret;
>  
> @@ -868,9 +862,9 @@ int intel_dp_mst_atomic_check_link(struct intel_atomic_state *state,
>  	return 0;
>  }
>  
> -static int intel_dp_mst_compute_config_late(struct intel_encoder *encoder,
> -					    struct intel_crtc_state *crtc_state,
> -					    struct drm_connector_state *conn_state)
> +static int mst_stream_compute_config_late(struct intel_encoder *encoder,
> +					  struct intel_crtc_state *crtc_state,
> +					  struct drm_connector_state *conn_state)
>  {
>  	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
>  	struct intel_dp *intel_dp = to_primary_dp(encoder);
> @@ -996,10 +990,10 @@ static void wait_for_act_sent(struct intel_encoder *encoder,
>  	drm_dp_check_act_status(&intel_dp->mst_mgr);
>  }
>  
> -static void intel_mst_disable_dp(struct intel_atomic_state *state,
> -				 struct intel_encoder *encoder,
> -				 const struct intel_crtc_state *old_crtc_state,
> -				 const struct drm_connector_state *old_conn_state)
> +static void mst_stream_disable(struct intel_atomic_state *state,
> +			       struct intel_encoder *encoder,
> +			       const struct intel_crtc_state *old_crtc_state,
> +			       const struct drm_connector_state *old_conn_state)
>  {
>  	struct intel_display *display = to_intel_display(state);
>  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
> @@ -1018,10 +1012,10 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
>  	intel_dp_sink_disable_decompression(state, connector, old_crtc_state);
>  }
>  
> -static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
> -				      struct intel_encoder *encoder,
> -				      const struct intel_crtc_state *old_crtc_state,
> -				      const struct drm_connector_state *old_conn_state)
> +static void mst_stream_post_disable(struct intel_atomic_state *state,
> +				    struct intel_encoder *encoder,
> +				    const struct intel_crtc_state *old_crtc_state,
> +				    const struct drm_connector_state *old_conn_state)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
> @@ -1114,10 +1108,10 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  		    intel_dp->active_mst_links);
>  }
>  
> -static void intel_mst_post_pll_disable_dp(struct intel_atomic_state *state,
> -					  struct intel_encoder *encoder,
> -					  const struct intel_crtc_state *old_crtc_state,
> -					  const struct drm_connector_state *old_conn_state)
> +static void mst_stream_post_pll_disable(struct intel_atomic_state *state,
> +					struct intel_encoder *encoder,
> +					const struct intel_crtc_state *old_crtc_state,
> +					const struct drm_connector_state *old_conn_state)
>  {
>  	struct intel_encoder *primary_encoder = to_primary_encoder(encoder);
>  	struct intel_dp *intel_dp = to_primary_dp(encoder);
> @@ -1127,10 +1121,10 @@ static void intel_mst_post_pll_disable_dp(struct intel_atomic_state *state,
>  		primary_encoder->post_pll_disable(state, primary_encoder, old_crtc_state, old_conn_state);
>  }
>  
> -static void intel_mst_pre_pll_enable_dp(struct intel_atomic_state *state,
> -					struct intel_encoder *encoder,
> -					const struct intel_crtc_state *pipe_config,
> -					const struct drm_connector_state *conn_state)
> +static void mst_stream_pre_pll_enable(struct intel_atomic_state *state,
> +				      struct intel_encoder *encoder,
> +				      const struct intel_crtc_state *pipe_config,
> +				      const struct drm_connector_state *conn_state)
>  {
>  	struct intel_encoder *primary_encoder = to_primary_encoder(encoder);
>  	struct intel_dp *intel_dp = to_primary_dp(encoder);
> @@ -1174,10 +1168,10 @@ static void intel_mst_reprobe_topology(struct intel_dp *intel_dp,
>  					 crtc_state->port_clock, crtc_state->lane_count);
>  }
>  
> -static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
> -				    struct intel_encoder *encoder,
> -				    const struct intel_crtc_state *pipe_config,
> -				    const struct drm_connector_state *conn_state)
> +static void mst_stream_pre_enable(struct intel_atomic_state *state,
> +				  struct intel_encoder *encoder,
> +				  const struct intel_crtc_state *pipe_config,
> +				  const struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display = to_intel_display(state);
>  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
> @@ -1274,10 +1268,10 @@ static void enable_bs_jitter_was(const struct intel_crtc_state *crtc_state)
>  	intel_de_rmw(display, CHICKEN_MISC_3, clear, set);
>  }
>  
> -static void intel_mst_enable_dp(struct intel_atomic_state *state,
> -				struct intel_encoder *encoder,
> -				const struct intel_crtc_state *pipe_config,
> -				const struct drm_connector_state *conn_state)
> +static void mst_stream_enable(struct intel_atomic_state *state,
> +			      struct intel_encoder *encoder,
> +			      const struct intel_crtc_state *pipe_config,
> +			      const struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_encoder *primary_encoder = to_primary_encoder(encoder);
> @@ -1345,8 +1339,8 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  	intel_hdcp_enable(state, encoder, pipe_config, conn_state);
>  }
>  
> -static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder *encoder,
> -				      enum pipe *pipe)
> +static bool mst_stream_get_hw_state(struct intel_encoder *encoder,
> +				    enum pipe *pipe)
>  {
>  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
>  	*pipe = intel_mst->pipe;
> @@ -1355,16 +1349,16 @@ static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder *encoder,
>  	return false;
>  }
>  
> -static void intel_dp_mst_enc_get_config(struct intel_encoder *encoder,
> -					struct intel_crtc_state *pipe_config)
> +static void mst_stream_get_config(struct intel_encoder *encoder,
> +				  struct intel_crtc_state *pipe_config)
>  {
>  	struct intel_encoder *primary_encoder = to_primary_encoder(encoder);
>  
>  	primary_encoder->get_config(primary_encoder, pipe_config);
>  }
>  
> -static bool intel_dp_mst_initial_fastset_check(struct intel_encoder *encoder,
> -					       struct intel_crtc_state *crtc_state)
> +static bool mst_stream_initial_fastset_check(struct intel_encoder *encoder,
> +					     struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_encoder *primary_encoder = to_primary_encoder(encoder);
>  
> @@ -1597,7 +1591,7 @@ static const struct drm_connector_helper_funcs intel_dp_mst_connector_helper_fun
>  	.detect_ctx = intel_dp_mst_detect,
>  };
>  
> -static void intel_dp_mst_encoder_destroy(struct drm_encoder *encoder)
> +static void mst_stream_encoder_destroy(struct drm_encoder *encoder)
>  {
>  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(to_intel_encoder(encoder));
>  
> @@ -1605,8 +1599,8 @@ static void intel_dp_mst_encoder_destroy(struct drm_encoder *encoder)
>  	kfree(intel_mst);
>  }
>  
> -static const struct drm_encoder_funcs intel_dp_mst_enc_funcs = {
> -	.destroy = intel_dp_mst_encoder_destroy,
> +static const struct drm_encoder_funcs mst_stream_encoder_funcs = {
> +	.destroy = mst_stream_encoder_destroy,
>  };
>  
>  static bool intel_dp_mst_get_hw_state(struct intel_connector *connector)
> @@ -1786,8 +1780,9 @@ static const struct drm_dp_mst_topology_cbs mst_cbs = {
>  	.poll_hpd_irq = intel_dp_mst_poll_hpd_irq,
>  };
>  
> +/* Create a fake encoder for an individual MST stream */
>  static struct intel_dp_mst_encoder *
> -intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe pipe)
> +mst_stream_encoder_create(struct intel_digital_port *dig_port, enum pipe pipe)
>  {
>  	struct intel_display *display = to_intel_display(dig_port);
>  	struct intel_encoder *primary_encoder = &dig_port->base;
> @@ -1803,7 +1798,7 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe
>  	encoder = &intel_mst->base;
>  	intel_mst->primary = dig_port;
>  
> -	drm_encoder_init(display->drm, &encoder->base, &intel_dp_mst_enc_funcs,
> +	drm_encoder_init(display->drm, &encoder->base, &mst_stream_encoder_funcs,
>  			 DRM_MODE_ENCODER_DPMST, "DP-MST %c", pipe_name(pipe));
>  
>  	encoder->type = INTEL_OUTPUT_DP_MST;
> @@ -1820,34 +1815,35 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe
>  	 */
>  	encoder->pipe_mask = ~0;
>  
> -	encoder->compute_config = intel_dp_mst_compute_config;
> -	encoder->compute_config_late = intel_dp_mst_compute_config_late;
> -	encoder->disable = intel_mst_disable_dp;
> -	encoder->post_disable = intel_mst_post_disable_dp;
> -	encoder->post_pll_disable = intel_mst_post_pll_disable_dp;
> +	encoder->compute_config = mst_stream_compute_config;
> +	encoder->compute_config_late = mst_stream_compute_config_late;
> +	encoder->disable = mst_stream_disable;
> +	encoder->post_disable = mst_stream_post_disable;
> +	encoder->post_pll_disable = mst_stream_post_pll_disable;
>  	encoder->update_pipe = intel_ddi_update_pipe;
> -	encoder->pre_pll_enable = intel_mst_pre_pll_enable_dp;
> -	encoder->pre_enable = intel_mst_pre_enable_dp;
> -	encoder->enable = intel_mst_enable_dp;
> +	encoder->pre_pll_enable = mst_stream_pre_pll_enable;
> +	encoder->pre_enable = mst_stream_pre_enable;
> +	encoder->enable = mst_stream_enable;
>  	encoder->audio_enable = intel_audio_codec_enable;
>  	encoder->audio_disable = intel_audio_codec_disable;
> -	encoder->get_hw_state = intel_dp_mst_enc_get_hw_state;
> -	encoder->get_config = intel_dp_mst_enc_get_config;
> -	encoder->initial_fastset_check = intel_dp_mst_initial_fastset_check;
> +	encoder->get_hw_state = mst_stream_get_hw_state;
> +	encoder->get_config = mst_stream_get_config;
> +	encoder->initial_fastset_check = mst_stream_initial_fastset_check;
>  
>  	return intel_mst;
>  
>  }
>  
> +/* Create the fake encoders for MST streams */
>  static bool
> -intel_dp_create_fake_mst_encoders(struct intel_digital_port *dig_port)
> +mst_stream_encoders_create(struct intel_digital_port *dig_port)
>  {
>  	struct intel_display *display = to_intel_display(dig_port);
>  	struct intel_dp *intel_dp = &dig_port->dp;
>  	enum pipe pipe;
>  
>  	for_each_pipe(display, pipe)
> -		intel_dp->mst_encoders[pipe] = intel_dp_create_fake_mst_encoder(dig_port, pipe);
> +		intel_dp->mst_encoders[pipe] = mst_stream_encoder_create(dig_port, pipe);
>  	return true;
>  }
>  
> @@ -1877,7 +1873,7 @@ intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_base_id)
>  	intel_dp->mst_mgr.cbs = &mst_cbs;
>  
>  	/* create encoders */
> -	intel_dp_create_fake_mst_encoders(dig_port);
> +	mst_stream_encoders_create(dig_port);
>  	ret = drm_dp_mst_topology_mgr_init(&intel_dp->mst_mgr, display->drm,
>  					   &intel_dp->aux, 16, 3, conn_base_id);
>  	if (ret) {
> -- 
> 2.39.5
> 
