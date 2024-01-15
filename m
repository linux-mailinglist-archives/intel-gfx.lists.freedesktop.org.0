Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB0F82D5E7
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jan 2024 10:28:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE43010E02B;
	Mon, 15 Jan 2024 09:28:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3775D10E02B
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jan 2024 09:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705310879; x=1736846879;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DImevYj2YcJcw/hLyOmX8+ePY7XudZUirvFqCHsqzp0=;
 b=m5VU34s2efhSiBzOhRHYbH4UiFY1o8YWUlheZwSC8XyGhNpb4Buv4QYg
 HgN9op/ZgRzyk2ZHIW+F+4b++fdJK1zH4JEz1nvtRHub30ldbpcxevAXE
 fmRV4ibngLk2ylU/goxwB9NNpGKEGYN8iad2SA5RTb93Wk1p7pp8MAquw
 Pgozwll4YaI3uGTIFOIAcmnbE+0G+UJFiQwxb2NhguECCxboT1r/mVUQk
 BTHDTH4vaNcb6Gm7b0xJ0pskm0Oox50zEIq62povoFWnXFwvE9N+s+1/M
 AIV5RyO831PctH5Kom+CHPluSy+YM5w1HeIDT0iZYBwZcYv3CasTmuvBD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10953"; a="18174599"
X-IronPort-AV: E=Sophos;i="6.04,196,1695711600"; d="scan'208";a="18174599"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 01:27:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10953"; a="956763896"
X-IronPort-AV: E=Sophos;i="6.04,196,1695711600"; d="scan'208";a="956763896"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 01:27:57 -0800
Date: Mon, 15 Jan 2024 11:27:53 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 3/3] Start separating pipe vs transcoder set logic for
 bigjoiner during modeset
Message-ID: <ZaT6mdIACF+YboVj@intel.com>
References: <20240108120725.20057-1-stanislav.lisovskiy@intel.com>
 <20240108120725.20057-4-stanislav.lisovskiy@intel.com>
 <ZaFtDg1fYWKAAsYx@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZaFtDg1fYWKAAsYx@intel.com>
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

On Fri, Jan 12, 2024 at 06:47:10PM +0200, Ville Syrjälä wrote:
> On Mon, Jan 08, 2024 at 02:07:25PM +0200, Stanislav Lisovskiy wrote:
> > Handle only bigjoiner masters in skl_commit_modeset_enables/disables,
> > slave crtcs should be handled by master hooks. Same for encoders.
> > That way we can also remove a bunch of checks like intel_crtc_is_bigjoiner_slave.
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c     |   3 +-
> >  drivers/gpu/drm/i915/display/intel_display.c | 148 ++++++++++++++++---
> >  2 files changed, 128 insertions(+), 23 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 2746655bcb264..9723f1b49cf95 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -3340,8 +3340,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
> >  {
> >  	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
> >  
> > -	if (!intel_crtc_is_bigjoiner_slave(crtc_state))
> > -		intel_ddi_enable_transcoder_func(encoder, crtc_state);
> > +	intel_ddi_enable_transcoder_func(encoder, crtc_state);
> >  
> >  	/* Enable/Disable DP2.0 SDP split config before transcoder */
> >  	intel_audio_sdp_split_update(crtc_state);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index eec76ec167069..24388226db465 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1630,6 +1630,93 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
> >  	hsw_set_transconf(crtc_state);
> >  }
> >  
> > +static void hsw_crtc_enable_slave(struct intel_atomic_state *state,
> > +				  struct intel_crtc *crtc)
> > +{
> > +	const struct intel_crtc_state *new_crtc_state =
> > +		intel_atomic_get_new_crtc_state(state, crtc);
> > +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> > +	enum pipe pipe = crtc->pipe, hsw_workaround_pipe;
> > +	bool psl_clkgate_wa;
> > +
> > +	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
> > +		return;
> > +
> > +	intel_dmc_enable_pipe(dev_priv, crtc->pipe);
> > +
> > +	if (!new_crtc_state->bigjoiner_pipes) {
> > +		intel_encoders_pre_pll_enable(state, crtc);
> > +
> > +		if (new_crtc_state->shared_dpll)
> > +			intel_enable_shared_dpll(new_crtc_state);
> > +
> > +		intel_encoders_pre_enable(state, crtc);
> > +	} else {
> > +		icl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
> > +	}
> > +
> > +	intel_dsc_enable(new_crtc_state);
> > +
> > +	if (DISPLAY_VER(dev_priv) >= 13)
> > +		intel_uncompressed_joiner_enable(new_crtc_state);
> > +
> > +	intel_set_pipe_src_size(new_crtc_state);
> > +	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
> > +		bdw_set_pipe_misc(new_crtc_state);
> > +
> > +	crtc->active = true;
> > +
> > +	/* Display WA #1180: WaDisableScalarClockGating: glk */
> > +	psl_clkgate_wa = DISPLAY_VER(dev_priv) == 10 &&
> > +		new_crtc_state->pch_pfit.enabled;
> > +	if (psl_clkgate_wa)
> > +		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
> > +
> > +	if (DISPLAY_VER(dev_priv) >= 9)
> > +		skl_pfit_enable(new_crtc_state);
> > +	else
> > +		ilk_pfit_enable(new_crtc_state);
> > +
> > +	/*
> > +	 * On ILK+ LUT must be loaded before the pipe is running but with
> > +	 * clocks enabled
> > +	 */
> > +	intel_color_load_luts(new_crtc_state);
> > +	intel_color_commit_noarm(new_crtc_state);
> > +	intel_color_commit_arm(new_crtc_state);
> > +	/* update DSPCNTR to configure gamma/csc for pipe bottom color */
> > +	if (DISPLAY_VER(dev_priv) < 9)
> > +		intel_disable_primary_plane(new_crtc_state);
> > +
> > +	hsw_set_linetime_wm(new_crtc_state);
> > +
> > +	if (DISPLAY_VER(dev_priv) >= 11)
> > +		icl_set_pipe_chicken(new_crtc_state);
> > +
> > +	intel_initial_watermarks(state, crtc);
> > +
> > +	intel_crtc_vblank_on(new_crtc_state);
> > +
> > +	intel_encoders_enable(state, crtc);
> > +
> > +	if (psl_clkgate_wa) {
> > +		intel_crtc_wait_for_next_vblank(crtc);
> > +		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, false);
> > +	}
> > +
> > +	/* If we change the relative order between pipe/planes enabling, we need
> > +	 * to change the workaround. */
> > +	hsw_workaround_pipe = new_crtc_state->hsw_workaround_pipe;
> > +	if (IS_HASWELL(dev_priv) && hsw_workaround_pipe != INVALID_PIPE) {
> > +		struct intel_crtc *wa_crtc;
> > +
> > +		wa_crtc = intel_crtc_for_pipe(dev_priv, hsw_workaround_pipe);
> > +
> > +		intel_crtc_wait_for_next_vblank(wa_crtc);
> > +		intel_crtc_wait_for_next_vblank(wa_crtc);
> > +	}
> > +}
> > +
> >  static void hsw_crtc_enable(struct intel_atomic_state *state,
> >  			    struct intel_crtc *crtc)
> >  {
> > @@ -1639,10 +1726,16 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
> >  	enum pipe pipe = crtc->pipe, hsw_workaround_pipe;
> >  	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
> >  	bool psl_clkgate_wa;
> > +	struct intel_crtc *slave_crtc;
> >  
> >  	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
> >  		return;
> >  
> > +	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
> > +					 intel_crtc_bigjoiner_slave_pipes(new_crtc_state)) {
> > +		hsw_crtc_enable_slave(state, slave_crtc);
> > +	}
> 
> Thats not really what I'm after. Ideally we shouldn't end up with
> any master vs. slave split here, just a pipe vs. transcoder split.
> And then the high level flow should look something along the
> lines of:
> 
> crtc_enable()
> {
> 	transcoder_thing1();
> 
> 	for_each_joined_pipe()
> 		pipe_thing1();
> 
> 	transcoder_thing2();
> 
> 	for_each_joined_pipe()
> 		pipe_thing2();
> 
> 	...
> }
> 	
> -- 
> Ville Syrjälä

Yes, I remember we discussed that you don't want any slaves to be processed
in *commit_modeset_enables/disables, I guess it obivously means we need to
process the here. Ah, I guess you mean we don't explicitly state, those are slaves
but just iterate through all joined pipe mask. 

Okay, got it(wonder why I didn't do that myself initially..)

Stan 

> Intel
