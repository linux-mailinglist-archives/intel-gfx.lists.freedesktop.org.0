Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D15179107B
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Sep 2023 05:48:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 378F010E021;
	Mon,  4 Sep 2023 03:48:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC17710E021
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Sep 2023 03:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693799309; x=1725335309;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GbbmHUjyNi88FmvbnwTag9YnNhxk6GRC+yyU7abBUwI=;
 b=cu9OvKu7LV6ya+2f9GOaWcBnlV00wLBACxdOxkysq261cJUD2km2erlQ
 CtN/BWNlv6C+dlmoIjYjczrXB8Zyl6WXmCvDIuSa79fEVejDlYEztrsV6
 CY2mD45CL2kpqDpEIWAUjlg40yIfparYiVMPCAUUigtRXyDHiv+xp3Lxy
 PoL7fql4xkvrEiHfshUrqzpOQubUFOZXVNf7BEJzRKQ90WN7ztqkb/3GG
 A3ZW9CqeNwBub1dhkrb5kW+pJRil7zSgktLLwlaXSFZUt4Bk/0fL1DpJm
 KHsq0E5ulfSg70w3ibfGskPS3QcrN9yThgoC/9uvR2XoVlIqTmEbdFdLJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="407506371"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="407506371"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2023 20:48:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="806097197"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="806097197"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga008.fm.intel.com with SMTP; 03 Sep 2023 20:48:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 04 Sep 2023 06:48:25 +0300
Date: Mon, 4 Sep 2023 06:48:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZPVTiYWRnRRyIViQ@intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
 <20230824080517.693621-5-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230824080517.693621-5-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 04/22] drm/i915/dp: Update the link bpp
 limits for DSC mode
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

On Thu, Aug 24, 2023 at 11:04:59AM +0300, Imre Deak wrote:
> In non-DSC mode the link bpp can be set in 2*3 bpp steps in the pipe bpp
> range, while in DSC mode it can be set in 1/16 bpp steps to any value
> up to the maximum pipe bpp. Update the limits accordingly in both modes
> to prepare for a follow-up patch which may need to reduce the max link
> bpp value and starts to check the link bpp limits in DSC mode as well.
> 
> While at it add more detail to the link limit debug print and print it
> also for DSC mode.
> 
> v2:
> - Add to_bpp_frac_dec() instead of open coding it. (Jani)
> 
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  5 ++
>  drivers/gpu/drm/i915/display/intel_dp.c       | 89 +++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_dp.h       |  6 ++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 23 +++--
>  4 files changed, 101 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 5875eff5012ce..a0a404967b5d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -2113,6 +2113,11 @@ static inline int to_bpp_int(int bpp_x16)
>  	return bpp_x16 >> 4;
>  }
>  
> +static inline int to_bpp_frac_dec(int bpp_x16)
> +{
> +	return (bpp_x16 & 0xf) * 625;
> +}

This gives me the impression that this would be somehow
generally useful, but I presume we only use it for the printk?
So maybe should just have some printk FMT+ARG macros for
this stuff?

> +
>  static inline int to_bpp_x16(int bpp)
>  {
>  	return bpp << 4;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index c580472c06b85..9ce861a7fd418 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2189,16 +2189,68 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  	return 0;
>  }
>  
> -static void
> +/**
> + * intel_dp_compute_config_link_bpp_limits - compute output link bpp limits
> + * @intel_dp: intel DP
> + * @crtc_state: crtc state
> + * @dsc: DSC compression mode
> + * @limits: link configuration limits
> + *
> + * Calculates the output link min, max bpp values in @limits based on the
> + * pipe bpp range, @crtc_state and @dsc mode.
> + *
> + * Returns %true in case of success.
> + */
> +bool
> +intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
> +					const struct intel_crtc_state *crtc_state,
> +					bool dsc,
> +					struct link_config_limits *limits)
> +{
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +	const struct drm_display_mode *adjusted_mode =
> +		&crtc_state->hw.adjusted_mode;
> +	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	const struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> +	int max_link_bpp_x16;
> +
> +	max_link_bpp_x16 = to_bpp_x16(limits->pipe.max_bpp);
> +
> +	if (!dsc) {
> +		max_link_bpp_x16 = rounddown(max_link_bpp_x16, to_bpp_x16(2 * 3));
> +
> +		if (max_link_bpp_x16 < to_bpp_x16(limits->pipe.min_bpp))
> +			return false;

Quite a few to_bpp_x16()'s in there. Seems like it would a bit simpler
to just do that once at the end.

> +
> +		limits->link.min_bpp_x16 = to_bpp_x16(limits->pipe.min_bpp);
> +	} else {
> +		limits->link.min_bpp_x16 = 0;

Why is that zero? Don't we now have some helpers to fill
this stuff correctly?

> +	}
> +
> +	limits->link.max_bpp_x16 = max_link_bpp_x16;
> +
> +	drm_dbg_kms(&i915->drm,
> +		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d max link_bpp %d.%04d\n",
> +		    encoder->base.base.id, encoder->base.name,
> +		    crtc->base.base.id, crtc->base.name,
> +		    adjusted_mode->crtc_clock,
> +		    dsc ? "on" : "off",
> +		    limits->max_lane_count,
> +		    limits->max_rate,
> +		    limits->pipe.max_bpp,
> +		    to_bpp_int(limits->link.max_bpp_x16),
> +		    to_bpp_frac_dec(limits->link.max_bpp_x16));
> +
> +	return true;
> +}
> +
> +static bool
>  intel_dp_compute_config_limits(struct intel_dp *intel_dp,
>  			       struct intel_crtc_state *crtc_state,
>  			       bool respect_downstream_limits,
> +			       bool dsc,
>  			       struct link_config_limits *limits)
>  {
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> -	const struct drm_display_mode *adjusted_mode =
> -		&crtc_state->hw.adjusted_mode;
> -
>  	limits->min_rate = intel_dp_common_rate(intel_dp, 0);
>  	limits->max_rate = intel_dp_max_link_rate(intel_dp);
>  
> @@ -2224,13 +2276,10 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
>  
>  	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
>  
> -	limits->link.min_bpp_x16 = to_bpp_x16(limits->pipe.min_bpp);
> -	limits->link.max_bpp_x16 = to_bpp_x16(limits->pipe.max_bpp);
> -
> -	drm_dbg_kms(&i915->drm, "DP link computation with max lane count %i "
> -		    "max rate %d max bpp %d pixel clock %iKHz\n",
> -		    limits->max_lane_count, limits->max_rate,
> -		    to_bpp_int(limits->link.max_bpp_x16), adjusted_mode->crtc_clock);
> +	return intel_dp_compute_config_link_bpp_limits(intel_dp,
> +						       crtc_state,
> +						       dsc,
> +						       limits);
>  }
>  
>  static int
> @@ -2249,9 +2298,6 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  	bool dsc_needed;
>  	int ret = 0;
>  
> -	intel_dp_compute_config_limits(intel_dp, pipe_config,
> -				       respect_downstream_limits, &limits);
> -
>  	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
>  				    adjusted_mode->crtc_clock))
>  		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
> @@ -2263,7 +2309,11 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  	 */
>  	joiner_needs_dsc = DISPLAY_VER(i915) < 13 && pipe_config->bigjoiner_pipes;
>  
> -	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en;
> +	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
> +		     !intel_dp_compute_config_limits(intel_dp, pipe_config,
> +						     respect_downstream_limits,
> +						     false,
> +						     &limits);
>  
>  	if (!dsc_needed) {
>  		/*
> @@ -2280,6 +2330,13 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  		drm_dbg_kms(&i915->drm, "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
>  			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
>  			    str_yes_no(intel_dp->force_dsc_en));
> +
> +		if (!intel_dp_compute_config_limits(intel_dp, pipe_config,
> +						    respect_downstream_limits,
> +						    true,
> +						    &limits))
> +			return -EINVAL;
> +
>  		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
>  						  conn_state, &limits, 64, true);
>  		if (ret < 0)
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index ebc7f4e60c777..0b8a4bbef8f7d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -153,4 +153,10 @@ void intel_dp_phy_test(struct intel_encoder *encoder);
>  void intel_dp_wait_source_oui(struct intel_dp *intel_dp);
>  int intel_dp_output_bpp(enum intel_output_format output_format, int bpp);
>  
> +bool
> +intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
> +					const struct intel_crtc_state *crtc_state,
> +					bool dsc,
> +					struct link_config_limits *limits);
> +
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index c077b999ccb74..2b78a3a8966f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -308,9 +308,10 @@ static bool intel_dp_mst_has_audio(const struct drm_connector_state *conn_state)
>  		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
>  }
>  
> -static void
> +static bool
>  intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
>  				   struct intel_crtc_state *crtc_state,
> +				   bool dsc,
>  				   struct link_config_limits *limits)
>  {
>  	/*
> @@ -336,8 +337,10 @@ intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
>  
>  	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
>  
> -	limits->link.min_bpp_x16 = to_bpp_x16(limits->pipe.min_bpp);
> -	limits->link.max_bpp_x16 = to_bpp_x16(limits->pipe.max_bpp);
> +	return intel_dp_compute_config_link_bpp_limits(intel_dp,
> +						       crtc_state,
> +						       dsc,
> +						       limits);
>  }
>  
>  static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
> @@ -364,9 +367,11 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  		intel_dp_mst_has_audio(conn_state) &&
>  		intel_audio_compute_config(encoder, pipe_config, conn_state);
>  
> -	intel_dp_mst_compute_config_limits(intel_dp, pipe_config, &limits);
> -
> -	dsc_needed = intel_dp->force_dsc_en;
> +	dsc_needed = intel_dp->force_dsc_en ||
> +		     !intel_dp_mst_compute_config_limits(intel_dp,
> +							 pipe_config,
> +							 false,
> +							 &limits);
>  
>  	if (!dsc_needed) {
>  		ret = intel_dp_mst_compute_link_config(encoder, pipe_config,
> @@ -385,6 +390,12 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  			    str_yes_no(ret),
>  			    str_yes_no(intel_dp->force_dsc_en));
>  
> +		if (!intel_dp_mst_compute_config_limits(intel_dp,
> +							pipe_config,
> +							true,
> +							&limits))
> +			return -EINVAL;
> +
>  		/*
>  		 * FIXME: As bpc is hardcoded to 8, as mentioned above,
>  		 * WARN and ignore the debug flag force_dsc_bpc for now.
> -- 
> 2.37.2

-- 
Ville Syrjälä
Intel
