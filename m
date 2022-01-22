Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3C1496931
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Jan 2022 02:28:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A912210E7AD;
	Sat, 22 Jan 2022 01:28:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8CD310E7AC
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Jan 2022 01:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642814901; x=1674350901;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mSR9yfJJ6kgjImo0dfI1j26IEkD8hW7GkQe88yKWkhI=;
 b=XP+EW0HS2pfRhKOqVbGlTFFqc2tysm8GYwXsTDY+hG6Tr11CxkQmORek
 3cSsvFD5pCnZL1l2n0ZxSBzRpTHKhS8fNL6tABejfaUSpbxaxd39OCIJA
 yDxHOzZZYIOvESjqI32H3m0Y/AfjlMXGzUwH5DbMH7sh6eT6WtpoinNb2
 /CZj7hZuMA3jVTWrz8Zwd09QGx9kb5GB36xGq+df0h6WdxVRdjYrNgval
 QWdLLuTyNzqyCWEUQU4VgOnWGIA4dCLOH8oKclpWizAYmxVe5tQSTmn1g
 RLFxNpCC7z/x6LhCeAGAVV6TpB1CQjgCnQXhPV1v6wYBkt/CNN03Lyt/G A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10234"; a="233133992"
X-IronPort-AV: E=Sophos;i="5.88,307,1635231600"; d="scan'208";a="233133992"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 17:28:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,307,1635231600"; d="scan'208";a="616690219"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 17:28:20 -0800
Date: Fri, 21 Jan 2022 17:28:19 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <Yetds5KdEwumOBNc@mdroper-desk1.amr.corp.intel.com>
References: <20211217200302.2855240-1-anusha.srivatsa@intel.com>
 <874k721g9s.fsf@intel.com>
 <42128bc2f7d74b87a19dd3a36c1171da@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <42128bc2f7d74b87a19dd3a36c1171da@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Move cdclk checks to
 atomic check
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 18, 2022 at 08:23:26PM +0000, Srivatsa, Anusha wrote:
> 
> 
> > -----Original Message-----
> > From: Jani Nikula <jani.nikula@linux.intel.com>
> > Sent: Tuesday, December 21, 2021 1:03 AM
> > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Move cdclk checks to
> > atomic check
> > 
> > On Fri, 17 Dec 2021, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> > > Checking cdclk conditions during atomic check and preparing for commit
> > > phase so we can have atomic commit as simple as possible. Add the
> > > specific steps to be taken during cdclk changes, prepare for
> > > squashing, crawling and modeset scenarios.
> > > Rename functions intel_cdclk_can_squash() and
> > > intel_cdclk_can_crawl() since they no longer simply check if squashing
> > > and crawling can be performed.
> > >
> > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_cdclk.c    | 130 +++++++++++-------
> > >  drivers/gpu/drm/i915/display/intel_cdclk.h    |   3 +-
> > >  .../drm/i915/display/intel_display_power.c    |   2 +-
> > >  drivers/gpu/drm/i915/i915_drv.h               |  13 ++
> > >  4 files changed, 96 insertions(+), 52 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > index 249f81a80eb7..4a5ddc202c05 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > @@ -1698,12 +1698,15 @@ static void bxt_set_cdclk(struct
> > drm_i915_private *dev_priv,
> > >  			  const struct intel_cdclk_config *cdclk_config,
> > >  			  enum pipe pipe)
> > >  {
> > > +	struct cdclk_steps *cdclk_steps = dev_priv->cdclk.steps;
> > >  	int cdclk = cdclk_config->cdclk;
> > >  	int vco = cdclk_config->vco;
> > > +	u32 squash_ctl = 0;
> > >  	u32 val;
> > >  	u16 waveform;
> > >  	int clock;
> > >  	int ret;
> > > +	int i;
> > >
> > >  	/* Inform power controller of upcoming frequency change. */
> > >  	if (DISPLAY_VER(dev_priv) >= 11)
> > > @@ -1727,40 +1730,43 @@ static void bxt_set_cdclk(struct
> > drm_i915_private *dev_priv,
> > >  		return;
> > >  	}
> > >
> > > -	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->cdclk.hw.vco > 0 &&
> > vco > 0) {
> > > -		if (dev_priv->cdclk.hw.vco != vco)
> > > +	for (i = 0; i < CDCLK_ACTIONS; i++) {
> > > +		switch (cdclk_steps[i].action) {
> > > +		case CDCLK_MODESET:
> > > +			if (DISPLAY_VER(dev_priv) >= 11) {
> > > +				if (dev_priv->cdclk.hw.vco != 0 &&
> > > +				    dev_priv->cdclk.hw.vco != vco)
> > > +					icl_cdclk_pll_disable(dev_priv);
> > > +
> > > +				if (dev_priv->cdclk.hw.vco != vco)
> > > +					icl_cdclk_pll_enable(dev_priv, vco);
> > > +			} else {
> > > +				if (dev_priv->cdclk.hw.vco != 0 &&
> > > +				    dev_priv->cdclk.hw.vco != vco)
> > > +					bxt_de_pll_disable(dev_priv);
> > > +
> > > +				if (dev_priv->cdclk.hw.vco != vco)
> > > +					bxt_de_pll_enable(dev_priv, vco);
> > > +			}
> > > +			clock = cdclk;
> > > +			break;
> > > +		case CDCLK_CRAWL:
> > >  			adlp_cdclk_pll_crawl(dev_priv, vco);
> > > -	} else if (DISPLAY_VER(dev_priv) >= 11) {
> > > -		if (dev_priv->cdclk.hw.vco != 0 &&
> > > -		    dev_priv->cdclk.hw.vco != vco)
> > > -			icl_cdclk_pll_disable(dev_priv);
> > > -
> > > -		if (dev_priv->cdclk.hw.vco != vco)
> > > -			icl_cdclk_pll_enable(dev_priv, vco);
> > > -	} else {
> > > -		if (dev_priv->cdclk.hw.vco != 0 &&
> > > -		    dev_priv->cdclk.hw.vco != vco)
> > > -			bxt_de_pll_disable(dev_priv);
> > > -
> > > -		if (dev_priv->cdclk.hw.vco != vco)
> > > -			bxt_de_pll_enable(dev_priv, vco);
> > > -	}
> > > -
> > > -	waveform = cdclk_squash_waveform(dev_priv, cdclk);
> > > -
> > > -	if (waveform)
> > > -		clock = vco / 2;
> > > -	else
> > > -		clock = cdclk;
> > > -
> > > -	if (has_cdclk_squasher(dev_priv)) {
> > > -		u32 squash_ctl = 0;
> > > -
> > > -		if (waveform)
> > > +			clock = cdclk;
> > > +			break;
> > > +		case CDCLK_SQUASH:
> > > +			waveform =  cdclk_squash_waveform(dev_priv,
> > cdclk_steps[i].cdclk);
> > > +			clock = vco / 2;
> > >  			squash_ctl = CDCLK_SQUASH_ENABLE |
> > > -				CDCLK_SQUASH_WINDOW_SIZE(0xf) |
> > waveform;
> > > -
> > > -		intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
> > > +					CDCLK_SQUASH_WINDOW_SIZE(0xf)
> > | waveform;
> > > +			intel_de_write(dev_priv, CDCLK_SQUASH_CTL,
> > squash_ctl);
> > > +			break;
> > > +		case CDCLK_NOOP:
> > > +			break;
> > > +		default:
> > > +			MISSING_CASE(cdclk_steps[i].action);
> > > +			break;
> > > +		}
> > >  	}
> > >
> > >  	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) | @@ -1950,10
> > > +1956,11 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
> > >  		skl_cdclk_uninit_hw(i915);
> > >  }
> > >
> > > -static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
> > > +static bool intel_cdclk_crawl(struct drm_i915_private *dev_priv,
> > >  				  const struct intel_cdclk_config *a,
> > >  				  const struct intel_cdclk_config *b)  {
> > > +	struct cdclk_steps *cdclk_transition = dev_priv->cdclk.steps;
> > >  	int a_div, b_div;
> > >
> > >  	if (!HAS_CDCLK_CRAWL(dev_priv))
> > > @@ -1966,16 +1973,22 @@ static bool intel_cdclk_can_crawl(struct
> > drm_i915_private *dev_priv,
> > >  	a_div = DIV_ROUND_CLOSEST(a->vco, a->cdclk);
> > >  	b_div = DIV_ROUND_CLOSEST(b->vco, b->cdclk);
> > >
> > > +	cdclk_transition[0].action = CDCLK_CRAWL;
> > > +	cdclk_transition[0].cdclk = b->cdclk;
> > > +	cdclk_transition[1].action = CDCLK_NOOP;
> > > +	cdclk_transition[1].cdclk = b->cdclk;
> > > +
> > >  	return a->vco != 0 && b->vco != 0 &&
> > >  		a->vco != b->vco &&
> > >  		a_div == b_div &&
> > >  		a->ref == b->ref;
> > >  }
> > >
> > > -static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
> > > +static bool intel_cdclk_squash(struct drm_i915_private *dev_priv,
> > >  				   const struct intel_cdclk_config *a,
> > >  				   const struct intel_cdclk_config *b)  {
> > > +	struct cdclk_steps *cdclk_transition = dev_priv->cdclk.steps;
> > >  	/*
> > >  	 * FIXME should store a bit more state in intel_cdclk_config
> > >  	 * to differentiate squasher vs. cd2x divider properly. For @@
> > > -1985,6 +1998,11 @@ static bool intel_cdclk_can_squash(struct
> > drm_i915_private *dev_priv,
> > >  	if (!has_cdclk_squasher(dev_priv))
> > >  		return false;
> > >
> > > +	cdclk_transition[0].action = CDCLK_SQUASH;
> > > +	cdclk_transition[0].cdclk = b->cdclk;
> > > +	cdclk_transition[1].action = CDCLK_NOOP;
> > > +	cdclk_transition[1].cdclk = b->cdclk;
> > > +
> > >  	return a->cdclk != b->cdclk &&
> > >  		a->vco != 0 &&
> > >  		a->vco == b->vco &&
> > > @@ -2001,9 +2019,19 @@ static bool intel_cdclk_can_squash(struct
> > drm_i915_private *dev_priv,
> > >   * True if changing between the two CDCLK configurations
> > >   * requires all pipes to be off, false if not.
> > >   */
> > > -bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
> > > +bool intel_cdclk_needs_modeset(struct drm_i915_private *dev_priv,
> > > +			       const struct intel_cdclk_config *a,
> > >  			       const struct intel_cdclk_config *b)  {
> > > +	struct cdclk_steps *cdclk_transition = dev_priv->cdclk.steps;
> > > +
> > > +	if (a->cdclk != b->cdclk || a->vco != b->vco ||	a->ref != b->ref) {
> > > +		cdclk_transition[0].action = CDCLK_MODESET;
> > > +		cdclk_transition[0].cdclk = b->cdclk;
> > > +		cdclk_transition[1].action = CDCLK_NOOP;
> > > +		cdclk_transition[1].cdclk = b->cdclk;
> > > +	}
> > > +
> > >  	return a->cdclk != b->cdclk ||
> > >  		a->vco != b->vco ||
> > >  		a->ref != b->ref;
> > > @@ -2051,10 +2079,11 @@ static bool intel_cdclk_can_cd2x_update(struct
> > drm_i915_private *dev_priv,
> > >   * Returns:
> > >   * True if the CDCLK configurations don't match, false if they do.
> > >   */
> > > -static bool intel_cdclk_changed(const struct intel_cdclk_config *a,
> > > +static bool intel_cdclk_changed(struct drm_i915_private *dev_priv,
> > > +				const struct intel_cdclk_config *a,
> > >  				const struct intel_cdclk_config *b)  {
> > > -	return intel_cdclk_needs_modeset(a, b) ||
> > > +	return intel_cdclk_needs_modeset(dev_priv, a, b) ||
> > >  		a->voltage_level != b->voltage_level;  }
> > >
> > > @@ -2082,7 +2111,7 @@ static void intel_set_cdclk(struct
> > > drm_i915_private *dev_priv,  {
> > >  	struct intel_encoder *encoder;
> > >
> > > -	if (!intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config))
> > > +	if (!intel_cdclk_changed(dev_priv, &dev_priv->cdclk.hw,
> > > +cdclk_config))
> > >  		return;
> > >
> > >  	if (drm_WARN_ON_ONCE(&dev_priv->drm,
> > > !dev_priv->cdclk_funcs->set_cdclk))
> > > @@ -2129,7 +2158,7 @@ static void intel_set_cdclk(struct
> > drm_i915_private *dev_priv,
> > >  	intel_audio_cdclk_change_post(dev_priv);
> > >
> > >  	if (drm_WARN(&dev_priv->drm,
> > > -		     intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config),
> > > +		     intel_cdclk_changed(dev_priv, &dev_priv->cdclk.hw,
> > > +cdclk_config),
> > >  		     "cdclk state doesn't match!\n")) {
> > >  		intel_dump_cdclk_config(&dev_priv->cdclk.hw, "[hw
> > state]");
> > >  		intel_dump_cdclk_config(cdclk_config, "[sw state]"); @@ -
> > 2153,7
> > > +2182,7 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state
> > *state)
> > >  		intel_atomic_get_new_cdclk_state(state);
> > >  	enum pipe pipe = new_cdclk_state->pipe;
> > >
> > > -	if (!intel_cdclk_changed(&old_cdclk_state->actual,
> > > +	if (!intel_cdclk_changed(dev_priv, &old_cdclk_state->actual,
> > >  				 &new_cdclk_state->actual))
> > >  		return;
> > >
> > > @@ -2182,7 +2211,7 @@ intel_set_cdclk_post_plane_update(struct
> > intel_atomic_state *state)
> > >  		intel_atomic_get_new_cdclk_state(state);
> > >  	enum pipe pipe = new_cdclk_state->pipe;
> > >
> > > -	if (!intel_cdclk_changed(&old_cdclk_state->actual,
> > > +	if (!intel_cdclk_changed(dev_priv, &old_cdclk_state->actual,
> > >  				 &new_cdclk_state->actual))
> > >  		return;
> > >
> > > @@ -2736,7 +2765,7 @@ int intel_modeset_calc_cdclk(struct
> > intel_atomic_state *state)
> > >  	if (ret)
> > >  		return ret;
> > >
> > > -	if (intel_cdclk_changed(&old_cdclk_state->actual,
> > > +	if (intel_cdclk_changed(dev_priv, &old_cdclk_state->actual,
> > >  				&new_cdclk_state->actual)) {
> > >  		/*
> > >  		 * Also serialize commits across all crtcs @@ -2747,7 +2776,7
> > @@
> > > int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
> > >  			return ret;
> > >  	} else if (old_cdclk_state->active_pipes != new_cdclk_state-
> > >active_pipes ||
> > >  		   old_cdclk_state->force_min_cdclk != new_cdclk_state-
> > >force_min_cdclk ||
> > > -		   intel_cdclk_changed(&old_cdclk_state->logical,
> > > +		   intel_cdclk_changed(dev_priv, &old_cdclk_state->logical,
> > >  				       &new_cdclk_state->logical)) {
> > >  		ret = intel_atomic_lock_global_state(&new_cdclk_state-
> > >base);
> > >  		if (ret)
> > > @@ -2774,14 +2803,14 @@ int intel_modeset_calc_cdclk(struct
> > intel_atomic_state *state)
> > >  			pipe = INVALID_PIPE;
> > >  	}
> > >
> > > -	if (intel_cdclk_can_squash(dev_priv,
> > > -				   &old_cdclk_state->actual,
> > > -				   &new_cdclk_state->actual)) {
> > > +	if (intel_cdclk_squash(dev_priv,
> > > +			       &old_cdclk_state->actual,
> > > +			       &new_cdclk_state->actual)) {
> > >  		drm_dbg_kms(&dev_priv->drm,
> > >  			    "Can change cdclk via squasher\n");
> > > -	} else if (intel_cdclk_can_crawl(dev_priv,
> > > -					 &old_cdclk_state->actual,
> > > -					 &new_cdclk_state->actual)) {
> > > +	} else if (intel_cdclk_crawl(dev_priv,
> > > +				     &old_cdclk_state->actual,
> > > +				     &new_cdclk_state->actual)) {
> > >  		drm_dbg_kms(&dev_priv->drm,
> > >  			    "Can change cdclk via crawl\n");
> > >  	} else if (pipe != INVALID_PIPE) {
> > > @@ -2790,7 +2819,8 @@ int intel_modeset_calc_cdclk(struct
> > intel_atomic_state *state)
> > >  		drm_dbg_kms(&dev_priv->drm,
> > >  			    "Can change cdclk cd2x divider with pipe %c
> > active\n",
> > >  			    pipe_name(pipe));
> > > -	} else if (intel_cdclk_needs_modeset(&old_cdclk_state->actual,
> > > +	} else if (intel_cdclk_needs_modeset(dev_priv,
> > > +					     &old_cdclk_state->actual,
> > >  					     &new_cdclk_state->actual)) {
> > >  		/* All pipes must be switched off while we change the cdclk.
> > */
> > >  		ret = intel_modeset_all_pipes(state); diff --git
> > > a/drivers/gpu/drm/i915/display/intel_cdclk.h
> > > b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > > index 71dd84740ae3..cc52ef029bb4 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > > @@ -58,7 +58,8 @@ void intel_init_cdclk_hooks(struct drm_i915_private
> > > *dev_priv);  void intel_update_max_cdclk(struct drm_i915_private
> > > *dev_priv);  void intel_update_cdclk(struct drm_i915_private
> > > *dev_priv);
> > >  u32 intel_read_rawclk(struct drm_i915_private *dev_priv); -bool
> > > intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
> > > +bool intel_cdclk_needs_modeset(struct drm_i915_private *dev_priv,
> > > +			       const struct intel_cdclk_config *a,
> > >  			       const struct intel_cdclk_config *b);  void
> > > intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
> > > void intel_set_cdclk_post_plane_update(struct intel_atomic_state
> > > *state); diff --git
> > > a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > index 05babdcf5f2e..5c6671296019 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > @@ -1297,7 +1297,7 @@ static void gen9_disable_dc_states(struct
> > drm_i915_private *dev_priv)
> > >  	intel_cdclk_get_cdclk(dev_priv, &cdclk_config);
> > >  	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
> > >  	drm_WARN_ON(&dev_priv->drm,
> > > -		    intel_cdclk_needs_modeset(&dev_priv->cdclk.hw,
> > > +		    intel_cdclk_needs_modeset(dev_priv, &dev_priv-
> > >cdclk.hw,
> > >  					      &cdclk_config));
> > >
> > >  	gen9_assert_dbuf_enabled(dev_priv);
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > > b/drivers/gpu/drm/i915/i915_drv.h index ed48179bacd8..2d2f97138fe2
> > > 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -119,6 +119,14 @@
> > >
> > >  struct drm_i915_gem_object;
> > >
> > > +enum cdclk_actions {
> > > +	CDCLK_MODESET = 0,
> > > +	CDCLK_SQUASH,
> > > +	CDCLK_CRAWL,
> > > +	CDCLK_NOOP,
> > > +	CDCLK_ACTIONS
> > > +};
> > > +
> > >  /* Threshold == 5 for long IRQs, 50 for short */  #define
> > > HPD_STORM_DEFAULT_THRESHOLD 50
> > >
> > > @@ -769,6 +777,11 @@ struct drm_i915_private {
> > >  		const struct intel_cdclk_vals *table;
> > >
> > >  		struct intel_global_obj obj;
> > > +
> > > +		struct cdclk_steps {
> > > +			enum cdclk_actions action;
> > > +			u32 cdclk;
> > > +		} steps[CDCLK_ACTIONS];
> > 
> > Is this modeset state recorded directly in struct drm_i915_private instead of
> > actual modeset state objects?
> 
> This response got lost in the rest of the emails that I received during vacation. Apologies for the late response.
> 
> Yeah the cdclk action or the state to be taken is recorded here. Maybe moving this to cdclk_state is better?

You can't touch dev_priv (or {object}->state structures) during the
check phase of an atomic transaction.  Those areas hold final, committed
hardware state.  Anything that you provisionally calculate during the
atomic check phase needs to be saved into the sub-state structures
associated with the intel_atomic_state; if the transaction is ultimately
rejected, they're all thrown away and your calculations have no impact
on the system going forward.  Only if the transaction is accepted and we
move on to the commit phase will the provisional state objects get
swapped into the permanent locations at that time.


Matt

> 
> Anusha 
> 
> > BR,
> > Jani.
> > 
> > >  	} cdclk;
> > >
> > >  	struct {
> > 
> > --
> > Jani Nikula, Intel Open Source Graphics Center

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
