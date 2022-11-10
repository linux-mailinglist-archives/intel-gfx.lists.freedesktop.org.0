Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C6B624D9B
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 23:24:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A933110E00E;
	Thu, 10 Nov 2022 22:24:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D02D10E00E;
 Thu, 10 Nov 2022 22:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668119046; x=1699655046;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=DvyljN7szcThSerb6rdhu2J8DbM4Hs8DDyEW9DEgFq0=;
 b=aGPAgwDrr5nuYyopb4I2Ao5mLSqBZ+rKAj191I4JlIX8LllwCYg8ak3m
 4YkJvmyR46YeDzkacv+R4JlQV9W3/whorBv2yr6z3YIKvyrxt0aU7ILIU
 ENr03T7lMKxoDVBVv2dRHA8UaHyI9pIIjvlYEkx58YZksa75T8qk1hRFk
 qEdEkQEczzEL8LJl8jwUSix3W6H3espaEMxd9OUEOGSv0W4YSpVcCQN07
 NQT5/8O0tE94ooO5Ve7rhb+lw/BKjjr5Qy27ate94gnLD7FAl/JOHIjvF
 x4AVkBpUptk+yqu0k39BttfLHVL5UYfZoFtuWg1xzb25Fua1xYh6U99kR g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="313238452"
X-IronPort-AV: E=Sophos;i="5.96,155,1665471600"; d="scan'208";a="313238452"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 14:24:05 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="615274650"
X-IronPort-AV: E=Sophos;i="5.96,155,1665471600"; d="scan'208";a="615274650"
Received: from ibass1-mobl.ger.corp.intel.com (HELO mdnavare-mobl9)
 ([10.214.217.11])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 14:24:00 -0800
Date: Thu, 10 Nov 2022 14:23:53 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <Y215+cst5k5dCoBf@mdnavare-mobl9>
References: <20221101094222.22091-7-stanislav.lisovskiy@intel.com>
 <20221103132300.12805-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221103132300.12805-1-stanislav.lisovskiy@intel.com>
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915: Bpp/timeslot calculation
 fixes for DP MST DSC
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 03, 2022 at 03:23:00PM +0200, Stanislav Lisovskiy wrote:
> Fix intel_dp_dsc_compute_config, previously timeslots parameter
> was used in fact not as a timeslots, but more like a ratio
> timeslots/64, which of course didn't have any effect for SST DSC,
> but causes now issues for MST DSC.
> Secondly we need to calculate pipe_bpp using intel_dp_dsc_compute_bpp
> only for SST DSC case, while for MST case it has been calculated
> earlier already with intel_dp_dsc_mst_compute_link_config.
> Third we also were wrongly determining sink min bpp/max bpp, those
> limites should be intersected with our limits to find common
> acceptable bpp's, plus on top of that we should align those with
> VESA bpps and only then calculate required timeslots amount.
> Some MST hubs started to work only after third change was made.
> 
> v2: Make kernel test robot happy(claimed there was unitialzed use,
>     while there is none)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 69 ++++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_dp.h     |  3 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 69 +++++++++++++++++----
>  3 files changed, 106 insertions(+), 35 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 8288a30dbd51..82752b696498 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -716,9 +716,14 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>  	 * for SST -> TimeSlotsPerMTP is 1,
>  	 * for MST -> TimeSlotsPerMTP has to be calculated
>  	 */
> -	bits_per_pixel = (link_clock * lane_count * 8) * timeslots /
> -			 intel_dp_mode_to_fec_clock(mode_clock);
> -	drm_dbg_kms(&i915->drm, "Max link bpp: %u\n", bits_per_pixel);
> +	bits_per_pixel = DIV_ROUND_UP((link_clock * lane_count) * timeslots,
> +				      intel_dp_mode_to_fec_clock(mode_clock) * 8);

Why did we remove the *8 in the numerator for the total bandwidth
link_clock * lane_count * 8 ? 

Other than this clarification, all changes look good

Manasi

> +
> +	drm_dbg_kms(&i915->drm, "Max link bpp is %u for %u timeslots "
> +				"total bw %u pixel clock %u\n",
> +				bits_per_pixel, timeslots,
> +				(link_clock * lane_count * 8),
> +				intel_dp_mode_to_fec_clock(mode_clock));
>  
>  	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
>  	max_bpp_small_joiner_ram = small_joiner_ram_size_bits(i915) /
> @@ -1047,7 +1052,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  							    target_clock,
>  							    mode->hdisplay,
>  							    bigjoiner,
> -							    pipe_bpp, 1) >> 4;
> +							    pipe_bpp, 64) >> 4;
>  			dsc_slice_count =
>  				intel_dp_dsc_get_slice_count(intel_dp,
>  							     target_clock,
> @@ -1481,7 +1486,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  				struct intel_crtc_state *pipe_config,
>  				struct drm_connector_state *conn_state,
>  				struct link_config_limits *limits,
> -				int timeslots)
> +				int timeslots,
> +				bool compute_pipe_bpp)
>  {
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>  	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
> @@ -1496,7 +1502,10 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
>  		return -EINVAL;
>  
> -	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
> +	if (compute_pipe_bpp)
> +		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
> +	else
> +		pipe_bpp = pipe_config->pipe_bpp;
>  
>  	if (intel_dp->force_dsc_bpc) {
>  		pipe_bpp = intel_dp->force_dsc_bpc * 3;
> @@ -1527,31 +1536,47 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  			drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd,
>  							true);
>  	} else {
> -		u16 dsc_max_output_bpp;
> +		u16 dsc_max_output_bpp = 0;
>  		u8 dsc_dp_slice_count;
>  
> -		dsc_max_output_bpp =
> -			intel_dp_dsc_get_output_bpp(dev_priv,
> -						    pipe_config->port_clock,
> -						    pipe_config->lane_count,
> -						    adjusted_mode->crtc_clock,
> -						    adjusted_mode->crtc_hdisplay,
> -						    pipe_config->bigjoiner_pipes,
> -						    pipe_bpp,
> -						    timeslots);
> +		if (compute_pipe_bpp) {
> +			dsc_max_output_bpp =
> +				intel_dp_dsc_get_output_bpp(dev_priv,
> +							    pipe_config->port_clock,
> +							    pipe_config->lane_count,
> +							    adjusted_mode->crtc_clock,
> +							    adjusted_mode->crtc_hdisplay,
> +							    pipe_config->bigjoiner_pipes,
> +							    pipe_bpp,
> +							    timeslots);
> +			if (!dsc_max_output_bpp) {
> +				drm_dbg_kms(&dev_priv->drm,
> +					    "Compressed BPP not supported\n");
> +				return -EINVAL;
> +			}
> +		}
>  		dsc_dp_slice_count =
>  			intel_dp_dsc_get_slice_count(intel_dp,
>  						     adjusted_mode->crtc_clock,
>  						     adjusted_mode->crtc_hdisplay,
>  						     pipe_config->bigjoiner_pipes);
> -		if (!dsc_max_output_bpp || !dsc_dp_slice_count) {
> +		if (!dsc_dp_slice_count) {
>  			drm_dbg_kms(&dev_priv->drm,
> -				    "Compressed BPP/Slice Count not supported\n");
> +				    "Compressed Slice Count not supported\n");
>  			return -EINVAL;
>  		}
> -		pipe_config->dsc.compressed_bpp = min_t(u16,
> -							dsc_max_output_bpp >> 4,
> -							pipe_config->pipe_bpp);
> +
> +		/*
> +		 * compute pipe bpp is set to false for DP MST DSC case
> +		 * and compressed_bpp is calculated same time once
> +		 * vpci timeslots are allocated, because overall bpp
> +		 * calculation procedure is bit different for MST case.
> +		 */
> +		if (compute_pipe_bpp) {
> +			pipe_config->dsc.compressed_bpp = min_t(u16,
> +								dsc_max_output_bpp >> 4,
> +								pipe_config->pipe_bpp);
> +		}
>  		pipe_config->dsc.slice_count = dsc_dp_slice_count;
>  		drm_dbg_kms(&dev_priv->drm, "DSC: compressed bpp %d slice count %d\n",
>  			    pipe_config->dsc.compressed_bpp,
> @@ -1659,7 +1684,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
>  			    str_yes_no(intel_dp->force_dsc_en));
>  		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
> -						  conn_state, &limits, 1);
> +						  conn_state, &limits, 1, true);
>  		if (ret < 0)
>  			return ret;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 0fe10d93b75c..75098001685a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -60,7 +60,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  				struct intel_crtc_state *pipe_config,
>  				struct drm_connector_state *conn_state,
>  				struct link_config_limits *limits,
> -				int timeslots);
> +				int timeslots,
> +				bool recompute_pipe_bpp);
>  bool intel_dp_is_edp(struct intel_dp *intel_dp);
>  bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
>  bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 8442eea27a57..69e383decb39 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -80,12 +80,12 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  	}
>  
>  	for (bpp = max_bpp; bpp >= min_bpp; bpp -= step) {
> -		crtc_state->pipe_bpp = bpp;
> -
>  		crtc_state->pbn = drm_dp_calc_pbn_mode(adjusted_mode->crtc_clock,
> -						       dsc ? bpp << 4 : crtc_state->pipe_bpp,
> +						       dsc ? bpp << 4 : bpp,
>  						       dsc);
>  
> +		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
> +
>  		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
>  						      connector->port,
>  						      crtc_state->pbn);
> @@ -107,9 +107,16 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  	if (ret && slots >= 0)
>  		slots = ret;
>  
> -	if (slots < 0)
> +	if (slots < 0) {
>  		drm_dbg_kms(&i915->drm, "failed finding vcpi slots:%d\n",
>  			    slots);
> +	} else {
> +		if (!dsc)
> +			crtc_state->pipe_bpp = bpp;
> +		else
> +			crtc_state->dsc.compressed_bpp = bpp;
> +		drm_dbg_kms(&i915->drm, "Got %d slots for pipe bpp %d dsc %d\n", slots, bpp, dsc);
> +	}
>  
>  	return slots;
>  }
> @@ -156,8 +163,10 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>  	int slots = -EINVAL;
>  	int i, num_bpc;
>  	u8 dsc_bpc[3] = {0};
> -	int min_bpp, max_bpp;
> +	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
>  	u8 dsc_max_bpc;
> +	bool need_timeslot_recalc = false;
> +	u32 last_compressed_bpp;
>  
>  	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
>  	if (DISPLAY_VER(i915) >= 12)
> @@ -170,14 +179,28 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>  
>  	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp->dsc_dpcd,
>  						       dsc_bpc);
> -	for (i = 0; i < num_bpc; i++) {
> -		if (max_bpp >= dsc_bpc[i] * 3)
> -			if (min_bpp > dsc_bpc[i] * 3)
> -				min_bpp = dsc_bpc[i] * 3;
> +
> +	drm_dbg_kms(&i915->drm, "DSC Source supported min bpp %d max bpp %d\n",
> +		    min_bpp, max_bpp);
> +
> +	sink_max_bpp = dsc_bpc[0] * 3;
> +	sink_min_bpp = sink_max_bpp;
> +
> +	for (i = 1; i < num_bpc; i++) {
> +		if (sink_min_bpp > dsc_bpc[i] * 3)
> +			sink_min_bpp = dsc_bpc[i] * 3;
> +		if (sink_max_bpp < dsc_bpc[i] * 3)
> +			sink_max_bpp = dsc_bpc[i] * 3;
>  	}
>  
>  	drm_dbg_kms(&i915->drm, "DSC Sink supported min bpp %d max bpp %d\n",
> -		    min_bpp, max_bpp);
> +		    sink_min_bpp, sink_max_bpp);
> +
> +	if (min_bpp < sink_min_bpp)
> +		min_bpp = sink_min_bpp;
> +
> +	if (max_bpp > sink_max_bpp)
> +		max_bpp = sink_max_bpp;
>  
>  	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state, max_bpp,
>  						     min_bpp, limits,
> @@ -186,6 +209,28 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>  	if (slots < 0)
>  		return slots;
>  
> +	last_compressed_bpp = crtc_state->dsc.compressed_bpp;
> +
> +	crtc_state->dsc.compressed_bpp = intel_dp_dsc_nearest_vesa_bpp(i915,
> +								       last_compressed_bpp,
> +								       crtc_state->pipe_bpp);
> +
> +	if (crtc_state->dsc.compressed_bpp != last_compressed_bpp)
> +		need_timeslot_recalc = true;
> +
> +	/*
> +	 * Apparently some MST hubs dislike if vcpi slots are not matching precisely
> +	 * the actual compressed bpp we use.
> +	 */
> +	if (need_timeslot_recalc) {
> +		slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state,
> +							     crtc_state->dsc.compressed_bpp,
> +							     crtc_state->dsc.compressed_bpp,
> +							     limits, conn_state, 2 * 3, true);
> +		if (slots < 0)
> +			return slots;
> +	}
> +
>  	intel_link_compute_m_n(crtc_state->pipe_bpp,
>  			       crtc_state->lane_count,
>  			       adjusted_mode->crtc_clock,
> @@ -292,7 +337,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  
>  		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
>  						  conn_state, &limits,
> -						  pipe_config->dp_m_n.tu);
> +						  pipe_config->dp_m_n.tu, false);
>  	}
>  
>  	if (ret)
> @@ -867,7 +912,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  							    target_clock,
>  							    mode->hdisplay,
>  							    bigjoiner,
> -							    pipe_bpp, 1) >> 4;
> +							    pipe_bpp, 64) >> 4;
>  			dsc_slice_count =
>  				intel_dp_dsc_get_slice_count(intel_dp,
>  							     target_clock,
> -- 
> 2.37.3
> 
