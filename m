Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A652533BBB
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 13:29:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C113310E07C;
	Wed, 25 May 2022 11:28:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7EDE10E07C
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 11:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653478135; x=1685014135;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=exy8CDQQflBvF4g1TLoCWnX3Fj6KWcEmvii+rtoPz10=;
 b=dEne6uN/AY6ZOjzzxuykZjRVWMqMYaSNUUzd+yW2Ia52JTO+FIUlTfx9
 D6jycQP3NLH9rk9qz8li7uk/D2mre7LXYeHKeq9pBuo9sxxJFTg4kmw+U
 N8gUvCcH0+rIygMFPbBwfB6BP+HXY8Kv8fqBaXzb0FN/rp1xmmnpVKuS3
 9uz6IzvTjczKhiNuTMkdyVj7fCUiDzXLoQaZABf18cFewzLVF3f5s3Qfl
 xRkEVf0A8h9EBSxcZfWaMuk960linX28YLZhMoaI8omTPINE9VPwo8pFm
 NmVVAXoHyPndoZQWTuAR3ajp4Dq0vwxr9lePtlyPFo42KM+A6HpUsSJ44 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="273515706"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="273515706"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 04:28:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="717600292"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga001.fm.intel.com with SMTP; 25 May 2022 04:28:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 May 2022 14:28:52 +0300
Date: Wed, 25 May 2022 14:28:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Yo4S9KYxTydaeHV8@intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-13-ville.syrjala@linux.intel.com>
 <87ee0hvq6l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87ee0hvq6l.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 12/26] drm/i915: Feed the DPLL output freq
 back into crtc_state
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

On Wed, May 25, 2022 at 01:53:38PM +0300, Jani Nikula wrote:
> On Tue, 03 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Fill port_clock and hw.adjusted_mode.crtc_clock with the actual
> > frequency we're going to be getting from the hardware. This will
> > let us accurately compute all derived state that depends on those.
> 
> This patch (and to be honest, quite a few of the subsequent ones too)
> make my brain hurt. So I can't spot anything obviously wrong here, it's
> just that my confidence is low. And that makes me feel dumb. It's either
> that, or the existing code base is overly complex. I'm 50-50, could lean
> either way.
> 
> Anyway.
> 
> Why haven't we set .crtc_clock before?

Who knows. Just always been like that.

> 
> Should we remove the "Set default port clock if not overwritten by the
> encoder. Needs to be done afterwards in case the encoder adjusts the
> mode." bit in intel_modeset_pipe_config(), and require encoder needs to
> do it?

Yeah, moving all this clock stuff into encoder->compute_config() is
perhaps what we want to do eventually. What makes it a bit awkward
is cloning since each cloned encoder would then recompute the
DPLL/clock state for the same crtc. I guess that shouldn't really
matter as long as we'd still end up with the same computed state
at the end. 

But I might be missing something so probably need to let that idea
simmer a bit further.

> 
> A self-doubting
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_crt.c      |  2 +
> >  drivers/gpu/drm/i915/display/intel_dpll.c     | 64 ++++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 36 ++++++++++-
> >  .../gpu/drm/i915/display/intel_pch_refclk.c   |  9 +++
> >  .../gpu/drm/i915/display/intel_pch_refclk.h   |  1 +
> >  5 files changed, 108 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> > index d746c85e7e8c..a225af030ad7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crt.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> > @@ -445,6 +445,8 @@ static int hsw_crt_compute_config(struct intel_encoder *encoder,
> >  	/* FDI must always be 2.7 GHz */
> >  	pipe_config->port_clock = 135000 * 2;
> >  
> > +	adjusted_mode->crtc_clock = lpt_iclkip(pipe_config);
> > +
> >  	return 0;
> >  }
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> > index afd30c6cc34c..4a9d7b6d16cc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> > @@ -930,6 +930,8 @@ static void i8xx_compute_dpll(struct intel_crtc_state *crtc_state,
> >  	crtc_state->dpll_hw_state.dpll = dpll;
> >  }
> >  
> > +int intel_crtc_dotclock(const struct intel_crtc_state *crtc_state);
> > +
> >  static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
> >  				  struct intel_crtc *crtc)
> >  {
> > @@ -938,12 +940,25 @@ static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >  	struct intel_encoder *encoder =
> >  		intel_get_crtc_new_encoder(state, crtc_state);
> > +	int ret;
> >  
> >  	if (DISPLAY_VER(dev_priv) < 11 &&
> >  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
> >  		return 0;
> >  
> > -	return intel_compute_shared_dplls(state, crtc, encoder);
> > +	ret = intel_compute_shared_dplls(state, crtc, encoder);
> > +	if (ret)
> > +		return ret;
> > +
> > +	/* FIXME this is a mess */
> > +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
> > +		return 0;
> > +
> > +	/* CRT dotclock is determined via other means */
> > +	if (!crtc_state->has_pch_encoder)
> > +		crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
> > +
> > +	return 0;
> >  }
> >  
> >  static int hsw_crtc_get_shared_dpll(struct intel_atomic_state *state,
> > @@ -969,8 +984,15 @@ static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >  	struct intel_encoder *encoder =
> >  		intel_get_crtc_new_encoder(state, crtc_state);
> > +	int ret;
> >  
> > -	return intel_mpllb_calc_state(crtc_state, encoder);
> > +	ret = intel_mpllb_calc_state(crtc_state, encoder);
> > +	if (ret)
> > +		return ret;
> > +
> > +	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
> > +
> > +	return 0;
> >  }
> >  
> >  static bool ilk_needs_fb_cb_tune(const struct dpll *dpll, int factor)
> > @@ -1096,6 +1118,7 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >  	const struct intel_limit *limit;
> >  	int refclk = 120000;
> > +	int ret;
> >  
> >  	/* CPU eDP is the only output that doesn't need a PCH PLL of its own. */
> >  	if (!crtc_state->has_pch_encoder)
> > @@ -1132,7 +1155,14 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
> >  	ilk_compute_dpll(crtc_state, &crtc_state->dpll,
> >  			 &crtc_state->dpll);
> >  
> > -	return intel_compute_shared_dplls(state, crtc, NULL);
> > +	ret = intel_compute_shared_dplls(state, crtc, NULL);
> > +	if (ret)
> > +		return ret;
> > +
> > +	crtc_state->port_clock = crtc_state->dpll.dot;
> > +	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
> > +
> > +	return ret;
> >  }
> >  
> >  static int ilk_crtc_get_shared_dpll(struct intel_atomic_state *state,
> > @@ -1198,6 +1228,13 @@ static int chv_crtc_compute_clock(struct intel_atomic_state *state,
> >  
> >  	chv_compute_dpll(crtc_state);
> >  
> > +	/* FIXME this is a mess */
> > +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
> > +		return 0;
> > +
> > +	crtc_state->port_clock = crtc_state->dpll.dot;
> > +	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
> > +
> >  	return 0;
> >  }
> >  
> > @@ -1217,6 +1254,13 @@ static int vlv_crtc_compute_clock(struct intel_atomic_state *state,
> >  
> >  	vlv_compute_dpll(crtc_state);
> >  
> > +	/* FIXME this is a mess */
> > +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
> > +		return 0;
> > +
> > +	crtc_state->port_clock = crtc_state->dpll.dot;
> > +	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
> > +
> >  	return 0;
> >  }
> >  
> > @@ -1259,6 +1303,9 @@ static int g4x_crtc_compute_clock(struct intel_atomic_state *state,
> >  	i9xx_compute_dpll(crtc_state, &crtc_state->dpll,
> >  			  &crtc_state->dpll);
> >  
> > +	crtc_state->port_clock = crtc_state->dpll.dot;
> > +	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
> > +
> >  	return 0;
> >  }
> >  
> > @@ -1292,6 +1339,9 @@ static int pnv_crtc_compute_clock(struct intel_atomic_state *state,
> >  	i9xx_compute_dpll(crtc_state, &crtc_state->dpll,
> >  			  &crtc_state->dpll);
> >  
> > +	crtc_state->port_clock = crtc_state->dpll.dot;
> > +	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
> > +
> >  	return 0;
> >  }
> >  
> > @@ -1325,6 +1375,9 @@ static int i9xx_crtc_compute_clock(struct intel_atomic_state *state,
> >  	i9xx_compute_dpll(crtc_state, &crtc_state->dpll,
> >  			  &crtc_state->dpll);
> >  
> > +	crtc_state->port_clock = crtc_state->dpll.dot;
> > +	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
> > +
> >  	return 0;
> >  }
> >  
> > @@ -1360,6 +1413,9 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
> >  	i8xx_compute_dpll(crtc_state, &crtc_state->dpll,
> >  			  &crtc_state->dpll);
> >  
> > +	crtc_state->port_clock = crtc_state->dpll.dot;
> > +	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
> > +
> >  	return 0;
> >  }
> >  
> > @@ -1401,6 +1457,8 @@ static const struct intel_dpll_funcs i8xx_dpll_funcs = {
> >  	.crtc_compute_clock = i8xx_crtc_compute_clock,
> >  };
> >  
> > +int intel_calculate_dotclock(const struct intel_crtc_state *crtc_state);
> > +
> >  int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
> >  				  struct intel_crtc *crtc)
> >  {
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index 64708e874b13..416d78f9e140 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -905,10 +905,15 @@ hsw_ddi_calculate_wrpll(int clock /* in Hz */,
> >  	*r2_out = best.r2;
> >  }
> >  
> > +static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
> > +				  const struct intel_shared_dpll *pll,
> > +				  const struct intel_dpll_hw_state *pll_state);
> > +
> >  static int
> >  hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state *state,
> >  			   struct intel_crtc *crtc)
> >  {
> > +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> >  	struct intel_crtc_state *crtc_state =
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >  	unsigned int p, n2, r2;
> > @@ -920,6 +925,9 @@ hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state *state,
> >  		WRPLL_DIVIDER_REFERENCE(r2) | WRPLL_DIVIDER_FEEDBACK(n2) |
> >  		WRPLL_DIVIDER_POST(p);
> >  
> > +	crtc_state->port_clock = hsw_ddi_wrpll_get_freq(i915, NULL,
> > +							&crtc_state->dpll_hw_state);
> > +
> >  	return 0;
> >  }
> >  
> > @@ -1618,6 +1626,10 @@ skl_ddi_calculate_wrpll(int clock /* in Hz */,
> >  	return 0;
> >  }
> >  
> > +static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
> > +				  const struct intel_shared_dpll *pll,
> > +				  const struct intel_dpll_hw_state *pll_state);
> > +
> >  static int skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
> >  {
> >  	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> > @@ -1652,6 +1664,9 @@ static int skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
> >  	crtc_state->dpll_hw_state.cfgcr1 = cfgcr1;
> >  	crtc_state->dpll_hw_state.cfgcr2 = cfgcr2;
> >  
> > +	crtc_state->port_clock = skl_ddi_wrpll_get_freq(i915, NULL,
> > +							&crtc_state->dpll_hw_state);
> > +
> >  	return 0;
> >  }
> >  
> > @@ -2255,14 +2270,27 @@ bxt_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
> >  	return bxt_ddi_set_dpll_hw_state(crtc_state, &clk_div);
> >  }
> >  
> > +static int bxt_ddi_pll_get_freq(struct drm_i915_private *i915,
> > +				const struct intel_shared_dpll *pll,
> > +				const struct intel_dpll_hw_state *pll_state);
> > +
> >  static int
> >  bxt_ddi_hdmi_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
> >  {
> > +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> >  	struct dpll clk_div = {};
> > +	int ret;
> >  
> >  	bxt_ddi_hdmi_pll_dividers(crtc_state, &clk_div);
> >  
> > -	return bxt_ddi_set_dpll_hw_state(crtc_state, &clk_div);
> > +	ret = bxt_ddi_set_dpll_hw_state(crtc_state, &clk_div);
> > +	if (ret)
> > +		return ret;
> > +
> > +	crtc_state->port_clock = bxt_ddi_pll_get_freq(i915, NULL,
> > +						      &crtc_state->dpll_hw_state);
> > +
> > +	return 0;
> >  }
> >  
> >  static int bxt_ddi_pll_get_freq(struct drm_i915_private *i915,
> > @@ -3197,6 +3225,9 @@ static int icl_compute_combo_phy_dpll(struct intel_atomic_state *state,
> >  
> >  	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
> >  
> > +	crtc_state->port_clock = icl_ddi_combo_pll_get_freq(dev_priv, NULL,
> > +							    &port_dpll->hw_state);
> > +
> >  	return 0;
> >  }
> >  
> > @@ -3282,6 +3313,9 @@ static int icl_compute_tc_phy_dplls(struct intel_atomic_state *state,
> >  	if (ret)
> >  		return ret;
> >  
> > +	crtc_state->port_clock = icl_ddi_mg_pll_get_freq(dev_priv, NULL,
> > +							 &port_dpll->hw_state);
> > +
> >  	return 0;
> >  }
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> > index 6610160cf825..5fb7ead97c90 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> > @@ -166,6 +166,15 @@ static void lpt_compute_iclkip(struct iclkip_params *p, int clock)
> >  	}
> >  }
> >  
> > +int lpt_iclkip(const struct intel_crtc_state *crtc_state)
> > +{
> > +	struct iclkip_params p;
> > +
> > +	lpt_compute_iclkip(&p, crtc_state->hw.adjusted_mode.crtc_clock);
> > +
> > +	return lpt_iclkip_freq(&p);
> > +}
> > +
> >  /* Program iCLKIP clock to the desired frequency */
> >  void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
> >  {
> > diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.h b/drivers/gpu/drm/i915/display/intel_pch_refclk.h
> > index 12ab2c75a800..9bcf56629f24 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pch_refclk.h
> > +++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.h
> > @@ -14,6 +14,7 @@ struct intel_crtc_state;
> >  void lpt_program_iclkip(const struct intel_crtc_state *crtc_state);
> >  void lpt_disable_iclkip(struct drm_i915_private *dev_priv);
> >  int lpt_get_iclkip(struct drm_i915_private *dev_priv);
> > +int lpt_iclkip(const struct intel_crtc_state *crtc_state);
> >  
> >  void intel_init_pch_refclk(struct drm_i915_private *dev_priv);
> >  void lpt_disable_clkout_dp(struct drm_i915_private *dev_priv);
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
