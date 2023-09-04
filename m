Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A70E97915AD
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Sep 2023 12:25:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8DEC10E324;
	Mon,  4 Sep 2023 10:25:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48EE110E324
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Sep 2023 10:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693823112; x=1725359112;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UMCqjW94xNdoSIB+keeHGMM+mpdldB6uVBIUEDx7Ck4=;
 b=M93gve2Gy1sqrcYJR33ae23hxtzVczIe4EOsBrCrmMOBxz5KUeUPezLL
 1T2jowpai9IQLi7ko1oALd7BXnCY3Bo48ZCAJRZf4B40TArHT2nwtLw30
 kwLomM07cVyV7XrZqSR8PIYtdv8m5ICBuKxOtb1HGvov8NxObAFtWUUwv
 S9zDzRUoGIrErS+NRhhaoyJ/T6spqS7r2uzl/whdIW469c1ZCDb6kpVQk
 lP7JSCTptnWfk0Q469V5/QdrFf04IRn1QFzepH+n4gcl7mOfZTwemHcXY
 bgkpmLkpLJAR3vHvgJAVRyUKtY3Q68vhUYdmTj0aXiLSyqqsEp0xFNxxN Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="375459587"
X-IronPort-AV: E=Sophos;i="6.02,226,1688454000"; d="scan'208";a="375459587"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2023 03:24:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="717500746"
X-IronPort-AV: E=Sophos;i="6.02,226,1688454000"; d="scan'208";a="717500746"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2023 03:24:54 -0700
Date: Mon, 4 Sep 2023 13:25:12 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZPWwaCv65eUsw3UR@ideak-desk.fi.intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
 <20230824080517.693621-2-imre.deak@intel.com>
 <ZPVMqNjbxkD3yofZ@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZPVMqNjbxkD3yofZ@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 01/22] drm/i915/dp: Factor out helpers to
 compute the link limits
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 04, 2023 at 06:19:04AM +0300, Ville Syrjälä wrote:
> On Thu, Aug 24, 2023 at 11:04:56AM +0300, Imre Deak wrote:
> > Factor out helpers that DP / DP_MST encoders can use to compute the link
> > rate/lane count and bpp limits. A follow-up patch will call these to
> > recalculate the limits if DSC compression is required.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c     | 61 +++++++++++++--------
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 52 ++++++++++--------
> >  2 files changed, 68 insertions(+), 45 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 7067ee3a4bd36..53697f361f950 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -2187,29 +2187,25 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
> >  	return 0;
> >  }
> >  
> > -static int
> > -intel_dp_compute_link_config(struct intel_encoder *encoder,
> > -			     struct intel_crtc_state *pipe_config,
> > -			     struct drm_connector_state *conn_state,
> > -			     bool respect_downstream_limits)
> > +static void
> > +intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> > +			       struct intel_crtc_state *crtc_state,
> > +			       bool respect_downstream_limits,
> > +			       struct link_config_limits *limits)
> >  {
> > -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > -	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> > +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> >  	const struct drm_display_mode *adjusted_mode =
> > -		&pipe_config->hw.adjusted_mode;
> > -	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > -	struct link_config_limits limits;
> > -	bool joiner_needs_dsc = false;
> > -	int ret;
> > +		&crtc_state->hw.adjusted_mode;
> >  
> > -	limits.min_rate = intel_dp_common_rate(intel_dp, 0);
> > -	limits.max_rate = intel_dp_max_link_rate(intel_dp);
> > +	limits->min_rate = intel_dp_common_rate(intel_dp, 0);
> > +	limits->max_rate = intel_dp_max_link_rate(intel_dp);
> >  
> > -	limits.min_lane_count = 1;
> > -	limits.max_lane_count = intel_dp_max_lane_count(intel_dp);
> > +	limits->min_lane_count = 1;
> > +	limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
> >  
> > -	limits.min_bpp = intel_dp_min_bpp(pipe_config->output_format);
> > -	limits.max_bpp = intel_dp_max_bpp(intel_dp, pipe_config, respect_downstream_limits);
> > +	limits->min_bpp = intel_dp_min_bpp(crtc_state->output_format);
> > +	limits->max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
> > +					   respect_downstream_limits);
> >  
> >  	if (intel_dp->use_max_params) {
> >  		/*
> > @@ -2220,16 +2216,35 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
> >  		 * configuration, and typically on older panels these
> >  		 * values correspond to the native resolution of the panel.
> >  		 */
> > -		limits.min_lane_count = limits.max_lane_count;
> > -		limits.min_rate = limits.max_rate;
> > +		limits->min_lane_count = limits->max_lane_count;
> > +		limits->min_rate = limits->max_rate;
> >  	}
> >  
> > -	intel_dp_adjust_compliance_config(intel_dp, pipe_config, &limits);
> > +	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
> 
> Annoying little bugger that mutates the crtc_state. Would be nice
> to relocate that small part somewhere else so that we could constify
> things more...

Yes, it could set dither_force_disable later separately.

> Anyways
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> >  
> >  	drm_dbg_kms(&i915->drm, "DP link computation with max lane count %i "
> >  		    "max rate %d max bpp %d pixel clock %iKHz\n",
> > -		    limits.max_lane_count, limits.max_rate,
> > -		    limits.max_bpp, adjusted_mode->crtc_clock);
> > +		    limits->max_lane_count, limits->max_rate,
> > +		    limits->max_bpp, adjusted_mode->crtc_clock);
> > +}
> > +
> > +static int
> > +intel_dp_compute_link_config(struct intel_encoder *encoder,
> > +			     struct intel_crtc_state *pipe_config,
> > +			     struct drm_connector_state *conn_state,
> > +			     bool respect_downstream_limits)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > +	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> > +	const struct drm_display_mode *adjusted_mode =
> > +		&pipe_config->hw.adjusted_mode;
> > +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > +	struct link_config_limits limits;
> > +	bool joiner_needs_dsc = false;
> > +	int ret;
> > +
> > +	intel_dp_compute_config_limits(intel_dp, pipe_config,
> > +				       respect_downstream_limits, &limits);
> >  
> >  	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
> >  				    adjusted_mode->crtc_clock))
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 3eb085fbc7c82..218c2dfd57adc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -306,6 +306,35 @@ static bool intel_dp_mst_has_audio(const struct drm_connector_state *conn_state)
> >  		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
> >  }
> >  
> > +static void
> > +intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
> > +				   struct intel_crtc_state *crtc_state,
> > +				   struct link_config_limits *limits)
> > +{
> > +	/*
> > +	 * for MST we always configure max link bw - the spec doesn't
> > +	 * seem to suggest we should do otherwise.
> > +	 */
> > +	limits->min_rate = limits->max_rate =
> > +		intel_dp_max_link_rate(intel_dp);
> > +
> > +	limits->min_lane_count = limits->max_lane_count =
> > +		intel_dp_max_lane_count(intel_dp);
> > +
> > +	limits->min_bpp = intel_dp_min_bpp(crtc_state->output_format);
> > +	/*
> > +	 * FIXME: If all the streams can't fit into the link with
> > +	 * their current pipe_bpp we should reduce pipe_bpp across
> > +	 * the board until things start to fit. Until then we
> > +	 * limit to <= 8bpc since that's what was hardcoded for all
> > +	 * MST streams previously. This hack should be removed once
> > +	 * we have the proper retry logic in place.
> > +	 */
> > +	limits->max_bpp = min(crtc_state->pipe_bpp, 24);
> > +
> > +	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
> > +}
> > +
> >  static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
> >  				       struct intel_crtc_state *pipe_config,
> >  				       struct drm_connector_state *conn_state)
> > @@ -329,28 +358,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
> >  		intel_dp_mst_has_audio(conn_state) &&
> >  		intel_audio_compute_config(encoder, pipe_config, conn_state);
> >  
> > -	/*
> > -	 * for MST we always configure max link bw - the spec doesn't
> > -	 * seem to suggest we should do otherwise.
> > -	 */
> > -	limits.min_rate =
> > -	limits.max_rate = intel_dp_max_link_rate(intel_dp);
> > -
> > -	limits.min_lane_count =
> > -	limits.max_lane_count = intel_dp_max_lane_count(intel_dp);
> > -
> > -	limits.min_bpp = intel_dp_min_bpp(pipe_config->output_format);
> > -	/*
> > -	 * FIXME: If all the streams can't fit into the link with
> > -	 * their current pipe_bpp we should reduce pipe_bpp across
> > -	 * the board until things start to fit. Until then we
> > -	 * limit to <= 8bpc since that's what was hardcoded for all
> > -	 * MST streams previously. This hack should be removed once
> > -	 * we have the proper retry logic in place.
> > -	 */
> > -	limits.max_bpp = min(pipe_config->pipe_bpp, 24);
> > -
> > -	intel_dp_adjust_compliance_config(intel_dp, pipe_config, &limits);
> > +	intel_dp_mst_compute_config_limits(intel_dp, pipe_config, &limits);
> >  
> >  	ret = intel_dp_mst_compute_link_config(encoder, pipe_config,
> >  					       conn_state, &limits);
> > -- 
> > 2.37.2
> 
> -- 
> Ville Syrjälä
> Intel
