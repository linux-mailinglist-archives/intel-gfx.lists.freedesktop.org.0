Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D36C386E386
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 15:40:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4452110F065;
	Fri,  1 Mar 2024 14:40:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M0caBFht";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F18010F055
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709304033; x=1740840033;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ldc/Gl8Nnao71rddb0XVNbAVYBctglsTJNXjjzfkhkE=;
 b=M0caBFhtFD9PiPpr9mdGE5uw1Mm/cDV5N3+kILWM1j8qxYbAQerhfrd+
 sSRCpsn9AslP4qN+b4sAf7OG6yVZQ7jEBYd+RyLIPMQSFmbAf2DJMeBfD
 xWhhcMCa5QDXkXci9ot9ZlUiN06jwwm+mVqbpVQcY6Vvd0Pe1iWcYnQES
 YEL4xFmvcaALSNZp+wLI8AOYWe6KBeCUD6DvXiJeJ10KxCpmI97sHerbr
 qYwRGqhXqhW5TuOfcwvSE4mx2m94iY4Gi8fYLjViQoKbRtevUFbjOAV41
 ziEy3LH4sSpGvxK1pnAez5amxuMWCb92GC1YUVnLZ8slY+WsmAnFvCWna Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="15276447"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="15276447"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 06:40:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="827772000"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="827772000"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 01 Mar 2024 06:40:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Mar 2024 16:40:28 +0200
Date: Fri, 1 Mar 2024 16:40:28 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com,
 vidya.srinivas@intel.com
Subject: Re: [PATCH 2/3] Start separating pipe vs transcoder set logic for
 bigjoiner during modeset
Message-ID: <ZeHo3M5WZM3klgwe@intel.com>
References: <20240221192010.25413-1-stanislav.lisovskiy@intel.com>
 <20240221192010.25413-3-stanislav.lisovskiy@intel.com>
 <ZeGprKqyj9KA0dxs@intel.com> <ZeGthkBNfj6AbtF9@intel.com>
 <ZeGxYpFS-HWZG-gh@intel.com> <ZeHKKGGxhCH0p7lJ@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZeHKKGGxhCH0p7lJ@intel.com>
X-Patchwork-Hint: comment
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

On Fri, Mar 01, 2024 at 02:29:28PM +0200, Lisovskiy, Stanislav wrote:
> On Fri, Mar 01, 2024 at 12:43:46PM +0200, Ville Syrjälä wrote:
> > On Fri, Mar 01, 2024 at 12:27:18PM +0200, Lisovskiy, Stanislav wrote:
> > > On Fri, Mar 01, 2024 at 12:10:52PM +0200, Ville Syrjälä wrote:
> > > > On Wed, Feb 21, 2024 at 09:20:09PM +0200, Stanislav Lisovskiy wrote:
> > > > > Handle only bigjoiner masters in skl_commit_modeset_enables/disables,
> > > > > slave crtcs should be handled by master hooks. Same for encoders.
> > > > > That way we can also remove a bunch of checks like intel_crtc_is_bigjoiner_slave.
> > > > > 
> > > > > v2: Get rid of master vs slave checks and separation in crtc enable/disable hooks.
> > > > >     Use unified iteration cycle for all of those, while enabling/disabling
> > > > >     transcoder only for those pipes where its needed(Ville Syrjälä)
> > > > > 
> > > > > v3: Move all the intel_encoder_* calls under transcoder code path(Ville Syrjälä)
> > > > > 
> > > > > v4:  - Call intel_crtc_vblank_on from hsw_crtc_enable only for non-transcoder path
> > > > >        (for master pipe that will be called from intel_encoders_enable/intel_enable_ddi)
> > > > >      - Fix stupid mistake with using crtc->pipe for the mask, instead of BIT(crtc->pipe)
> > > > > 
> > > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_ddi.c     |  21 +--
> > > > >  drivers/gpu/drm/i915/display/intel_display.c | 183 ++++++++++++-------
> > > > >  drivers/gpu/drm/i915/display/intel_display.h |   6 +
> > > > >  3 files changed, 121 insertions(+), 89 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > > index bea4415902044..6071e9f500871 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > > @@ -3100,7 +3100,6 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
> > > > >  				   const struct drm_connector_state *old_conn_state)
> > > > >  {
> > > > >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> > > > > -	struct intel_crtc *slave_crtc;
> > > > >  
> > > > >  	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST)) {
> > > > >  		intel_crtc_vblank_off(old_crtc_state);
> > > > > @@ -3117,17 +3116,6 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
> > > > >  			ilk_pfit_disable(old_crtc_state);
> > > > >  	}
> > > > 
> > > > The master pipe stuff is right here ^ ...
> > > > 
> > > > >  
> > > > > -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
> > > > > -					 intel_crtc_bigjoiner_slave_pipes(old_crtc_state)) {
> > > > > -		const struct intel_crtc_state *old_slave_crtc_state =
> > > > > -			intel_atomic_get_old_crtc_state(state, slave_crtc);
> > > > > -
> > > > > -		intel_crtc_vblank_off(old_slave_crtc_state);
> > > > > -
> > > > > -		intel_dsc_disable(old_slave_crtc_state);
> > > > > -		skl_scaler_disable(old_slave_crtc_state);
> > > > > -	}
> > > > 
> > > > .. but now you're moving the slave pipe stuff somewhere else?
> > > > 
> > > > We should be just iterating the pipes here (assuming this 
> > > > is the correct spot to do these steps).
> > > > 
> > > > > -
> > > > >  	/*
> > > > >  	 * When called from DP MST code:
> > > > >  	 * - old_conn_state will be NULL
> > > > > @@ -3363,8 +3351,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
> > > > >  {
> > > > >  	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
> > > > >  
> > > > > -	if (!intel_crtc_is_bigjoiner_slave(crtc_state))
> > > > > -		intel_ddi_enable_transcoder_func(encoder, crtc_state);
> > > > > +	intel_ddi_enable_transcoder_func(encoder, crtc_state);
> > > > >  
> > > > >  	/* Enable/Disable DP2.0 SDP split config before transcoder */
> > > > >  	intel_audio_sdp_split_update(crtc_state);
> > > > > @@ -3469,9 +3456,6 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
> > > > >  				  struct intel_crtc *crtc)
> > > > >  {
> > > > >  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > > > > -	struct intel_crtc_state *crtc_state =
> > > > > -		intel_atomic_get_new_crtc_state(state, crtc);
> > > > > -	struct intel_crtc *slave_crtc;
> > > > >  	enum phy phy = intel_port_to_phy(i915, encoder->port);
> > > > >  
> > > > >  	/* FIXME: Add MTL pll_mgr */
> > > > > @@ -3479,9 +3463,6 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
> > > > >  		return;
> > > > >  
> > > > >  	intel_update_active_dpll(state, crtc, encoder);
> > > > > -	for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
> > > > > -					 intel_crtc_bigjoiner_slave_pipes(crtc_state))
> > > > > -		intel_update_active_dpll(state, slave_crtc, encoder);
> > > > >  }
> > > > >  
> > > > >  static void
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > index 916c13a149fd5..e1ea53fd6a288 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > @@ -1631,31 +1631,12 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
> > > > >  	hsw_set_transconf(crtc_state);
> > > > >  }
> > > > >  
> > > > > -static void hsw_crtc_enable(struct intel_atomic_state *state,
> > > > > -			    struct intel_crtc *crtc)
> > > > > +static void hsw_crtc_enable_pre_transcoder(struct intel_atomic_state *state,
> > > > > +					   struct intel_crtc *crtc)
> > > > >  {
> > > > >  	const struct intel_crtc_state *new_crtc_state =
> > > > >  		intel_atomic_get_new_crtc_state(state, crtc);
> > > > >  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> > > > > -	enum pipe pipe = crtc->pipe, hsw_workaround_pipe;
> > > > > -	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
> > > > > -	bool psl_clkgate_wa;
> > > > > -
> > > > > -	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
> > > > > -		return;
> > > > > -
> > > > > -	intel_dmc_enable_pipe(dev_priv, crtc->pipe);
> > > > > -
> > > > > -	if (!new_crtc_state->bigjoiner_pipes) {
> > > > > -		intel_encoders_pre_pll_enable(state, crtc);
> > > > > -
> > > > > -		if (new_crtc_state->shared_dpll)
> > > > > -			intel_enable_shared_dpll(new_crtc_state);
> > > > > -
> > > > > -		intel_encoders_pre_enable(state, crtc);
> > > > > -	} else {
> > > > > -		icl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
> > > > > -	}
> > > > >  
> > > > >  	intel_dsc_enable(new_crtc_state);
> > > > >  
> > > > > @@ -1665,19 +1646,17 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
> > > > >  	intel_set_pipe_src_size(new_crtc_state);
> > > > >  	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
> > > > >  		bdw_set_pipe_misc(new_crtc_state);
> > > > > +}
> > > > >  
> > > > > -	if (!intel_crtc_is_bigjoiner_slave(new_crtc_state) &&
> > > > > -	    !transcoder_is_dsi(cpu_transcoder))
> > > > > -		hsw_configure_cpu_transcoder(new_crtc_state);
> > > > > +static void hsw_crtc_enable_post_transcoder(struct intel_atomic_state *state,
> > > > > +					    struct intel_crtc *crtc)
> > > > > +{
> > > > > +	const struct intel_crtc_state *new_crtc_state =
> > > > > +		intel_atomic_get_new_crtc_state(state, crtc);
> > > > > +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> > > > >  
> > > > >  	crtc->active = true;
> > > > >  
> > > > > -	/* Display WA #1180: WaDisableScalarClockGating: glk */
> > > > > -	psl_clkgate_wa = DISPLAY_VER(dev_priv) == 10 &&
> > > > > -		new_crtc_state->pch_pfit.enabled;
> > > > > -	if (psl_clkgate_wa)
> > > > > -		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
> > > > > -
> > > > >  	if (DISPLAY_VER(dev_priv) >= 9)
> > > > >  		skl_pfit_enable(new_crtc_state);
> > > > >  	else
> > > > > @@ -1700,27 +1679,84 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
> > > > >  		icl_set_pipe_chicken(new_crtc_state);
> > > > >  
> > > > >  	intel_initial_watermarks(state, crtc);
> > > > > +}
> > > > >  
> > > > > -	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
> > > > > -		intel_crtc_vblank_on(new_crtc_state);
> > > > > +static void hsw_crtc_enable(struct intel_atomic_state *state,
> > > > > +			    struct intel_crtc *crtc)
> > > > > +{
> > > > > +	const struct intel_crtc_state *new_crtc_state =
> > > > > +		intel_atomic_get_new_crtc_state(state, crtc);
> > > > > +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> > > > > +	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
> > > > > +	struct intel_crtc *_crtc;
> > > > > +	int slave_pipe_mask = intel_crtc_bigjoiner_slave_pipes(new_crtc_state);
> > > > > +	int pipe_mask = slave_pipe_mask | BIT(crtc->pipe);
> > > > > +	bool psl_clkgate_wa;
> > > > > +	enum pipe pipe = crtc->pipe, hsw_workaround_pipe;
> > > > >  
> > > > > -	intel_encoders_enable(state, crtc);
> > > > > +	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
> > > > > +		return;
> > > > >  
> > > > > -	if (psl_clkgate_wa) {
> > > > > -		intel_crtc_wait_for_next_vblank(crtc);
> > > > > -		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, false);
> > > > > -	}
> > > > > +	/*
> > > > > +	 * Use reverse iterator to go through slave pipes first.
> > > > > +	 * TODO: We might need smarter iterator here
> > > > > +	 */
> > > > > +	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, _crtc,
> > > > > +						 pipe_mask) {
> > > > > +		const struct intel_crtc_state *_new_crtc_state =
> > > > > +			intel_atomic_get_new_crtc_state(state, _crtc);
> > > > > +		bool needs_transcoder = ((slave_pipe_mask & BIT(_crtc->pipe)) == 0) &&
> > > > > +					!transcoder_is_dsi(cpu_transcoder);
> > > > > +
> > > > > +		intel_dmc_enable_pipe(dev_priv, crtc->pipe);
> > > > > +
> > > > > +		if (!new_crtc_state->bigjoiner_pipes) {
> > > > > +			if (needs_transcoder)
> > > > > +				intel_encoders_pre_pll_enable(state, crtc);
> > > > > +
> > > > > +			if (new_crtc_state->shared_dpll)
> > > > > +				intel_enable_shared_dpll(new_crtc_state);
> > > > > +
> > > > > +			if (needs_transcoder)
> > > > > +				intel_encoders_pre_enable(state, crtc);
> > > > > +		} else {
> > > > > +			icl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
> > > > > +		}
> > > > 
> > > > That mess needs to be eliminated entirely.
> > > 
> > > Yeah, was thinking about this too, was just a bit unsure how..
> > > 
> > > > 
> > > > > +
> > > > > +		hsw_crtc_enable_pre_transcoder(state, _crtc);
> > > > > +
> > > > > +		if (needs_transcoder)
> > > > > +			hsw_configure_cpu_transcoder(_new_crtc_state);
> > > > 
> > > > These transcoder things should not be within any pipe loop at all.
> > > 
> > > I didn't want to split the loop, which I would have to do otherwise,
> > > but may be it makes sense, since transcoder path is needed only for master
> > > pipe. However what if _hypothetically_ :) we would have more than one master
> > > pipe?
> > 
> > Doesn't matter how many pipes there are. There is always just one
> > transcoder.
> 
> How I see it now, the sequence for example for master hsw_crtc_enable is:
> 
> pipe1 stuff before transcoder
> (transcoder programming not needed)
> pipe1 stuff after transcoder
> 
> pipe0 stuff before transcoder
> transcoder programmed
> pipe0 stuff after transcoder
> 
> if we want to have a single unified loop for all pipes, I guess we have to
> have a transcoder check inside a loop, because we cant do the 
> "pipe0 stuff after transcoder" thing, before the transcoder is programmed.
> 
> I could of course split it this way:
> 
> for (...)
>   pipe stuff before transcoder
> 
> transcoder programmed
> 
> for (...)
>   pipe stuff after transcoder
> 
> but then the sequence still will be different from original, it will look like:
> pipe1 stuff before transcoder
> 
> pipe0 stuff before transcoder
> 
> transcoder programmed
> 
> pipe1 stuff after transcoder
> 
> pipe0 stuff after transcoder
> 
> which is different from original sequence, because we in fact
> want that:
> program pipe1(slave)
> 
> program pipe0 stuff before transcoder(master)
> program transcoder
> program pipe0 stuff after transcoder(master)
> 
> So do you think that splitting won't harm or you see some other way to do that?

The current code is mostly nonsense I think. Probably only work
through the power of prayer. I think we need to be able to control
the per-pipe vs. per-transcoder steps more freely to make it actually
correct.

I fired off a quick attempt at converting the disable side,
since that is a bit more straightforwad. The end result looks
fairly reasonable to me at least.
https://patchwork.freedesktop.org/series/130619/

-- 
Ville Syrjälä
Intel
