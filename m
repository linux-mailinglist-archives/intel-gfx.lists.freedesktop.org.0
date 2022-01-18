Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5818492F51
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 21:23:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D5D810E11E;
	Tue, 18 Jan 2022 20:23:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAB0A10E11E
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 20:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642537419; x=1674073419;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+0EUGrRhfA57ewNm+bOosMjGH/tGlDrBdiyHGcI42L4=;
 b=i6BfwO54lbqA68TMCO39GQhogkXdzclW8VdXFAVjqxeUuVW4YQrIoU8k
 1m3KA4+CoroPox4bHvIkfa5Pb/ChmZDcyJ5q8mWtgmcXoNMLvripNCaB0
 7nMgpv+cFSRGPzEdI0GT7FUoiXfpbZucptJGewAato2HK109jvVQl7ZGO
 S6Ih6/pQFtJbMIBwH3XuE3Fbz4RQLfItE6XD6waR0rhj7KjkkDRzPvVVg
 vSxuiUg/f+62mZHQ3vGofP4nyZotdptUrrL3M6+zvWX5YBmH+bFZKY832
 ioB9YLowldQNSpOWtVqvIhtI0hhrtz09XwKIs5jJFcXxfaMqlWuKMi7hv A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="245104439"
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; d="scan'208";a="245104439"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 12:23:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; d="scan'208";a="693523977"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga005.jf.intel.com with ESMTP; 18 Jan 2022 12:23:28 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 18 Jan 2022 12:23:27 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 18 Jan 2022 12:23:26 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2308.020;
 Tue, 18 Jan 2022 12:23:26 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Move cdclk checks to
 atomic check
Thread-Index: AQHX84Fcz2Wb4sRLH0SVctCamA40PKw9MlWAgCw4pgA=
Date: Tue, 18 Jan 2022 20:23:26 +0000
Message-ID: <42128bc2f7d74b87a19dd3a36c1171da@intel.com>
References: <20211217200302.2855240-1-anusha.srivatsa@intel.com>
 <874k721g9s.fsf@intel.com>
In-Reply-To: <874k721g9s.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Tuesday, December 21, 2021 1:03 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Syrjala, Ville <ville.syrjala@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Move cdclk checks to
> atomic check
>=20
> On Fri, 17 Dec 2021, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> > Checking cdclk conditions during atomic check and preparing for commit
> > phase so we can have atomic commit as simple as possible. Add the
> > specific steps to be taken during cdclk changes, prepare for
> > squashing, crawling and modeset scenarios.
> > Rename functions intel_cdclk_can_squash() and
> > intel_cdclk_can_crawl() since they no longer simply check if squashing
> > and crawling can be performed.
> >
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c    | 130 +++++++++++-------
> >  drivers/gpu/drm/i915/display/intel_cdclk.h    |   3 +-
> >  .../drm/i915/display/intel_display_power.c    |   2 +-
> >  drivers/gpu/drm/i915/i915_drv.h               |  13 ++
> >  4 files changed, 96 insertions(+), 52 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 249f81a80eb7..4a5ddc202c05 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1698,12 +1698,15 @@ static void bxt_set_cdclk(struct
> drm_i915_private *dev_priv,
> >  			  const struct intel_cdclk_config *cdclk_config,
> >  			  enum pipe pipe)
> >  {
> > +	struct cdclk_steps *cdclk_steps =3D dev_priv->cdclk.steps;
> >  	int cdclk =3D cdclk_config->cdclk;
> >  	int vco =3D cdclk_config->vco;
> > +	u32 squash_ctl =3D 0;
> >  	u32 val;
> >  	u16 waveform;
> >  	int clock;
> >  	int ret;
> > +	int i;
> >
> >  	/* Inform power controller of upcoming frequency change. */
> >  	if (DISPLAY_VER(dev_priv) >=3D 11)
> > @@ -1727,40 +1730,43 @@ static void bxt_set_cdclk(struct
> drm_i915_private *dev_priv,
> >  		return;
> >  	}
> >
> > -	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->cdclk.hw.vco > 0 &&
> vco > 0) {
> > -		if (dev_priv->cdclk.hw.vco !=3D vco)
> > +	for (i =3D 0; i < CDCLK_ACTIONS; i++) {
> > +		switch (cdclk_steps[i].action) {
> > +		case CDCLK_MODESET:
> > +			if (DISPLAY_VER(dev_priv) >=3D 11) {
> > +				if (dev_priv->cdclk.hw.vco !=3D 0 &&
> > +				    dev_priv->cdclk.hw.vco !=3D vco)
> > +					icl_cdclk_pll_disable(dev_priv);
> > +
> > +				if (dev_priv->cdclk.hw.vco !=3D vco)
> > +					icl_cdclk_pll_enable(dev_priv, vco);
> > +			} else {
> > +				if (dev_priv->cdclk.hw.vco !=3D 0 &&
> > +				    dev_priv->cdclk.hw.vco !=3D vco)
> > +					bxt_de_pll_disable(dev_priv);
> > +
> > +				if (dev_priv->cdclk.hw.vco !=3D vco)
> > +					bxt_de_pll_enable(dev_priv, vco);
> > +			}
> > +			clock =3D cdclk;
> > +			break;
> > +		case CDCLK_CRAWL:
> >  			adlp_cdclk_pll_crawl(dev_priv, vco);
> > -	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
> > -		if (dev_priv->cdclk.hw.vco !=3D 0 &&
> > -		    dev_priv->cdclk.hw.vco !=3D vco)
> > -			icl_cdclk_pll_disable(dev_priv);
> > -
> > -		if (dev_priv->cdclk.hw.vco !=3D vco)
> > -			icl_cdclk_pll_enable(dev_priv, vco);
> > -	} else {
> > -		if (dev_priv->cdclk.hw.vco !=3D 0 &&
> > -		    dev_priv->cdclk.hw.vco !=3D vco)
> > -			bxt_de_pll_disable(dev_priv);
> > -
> > -		if (dev_priv->cdclk.hw.vco !=3D vco)
> > -			bxt_de_pll_enable(dev_priv, vco);
> > -	}
> > -
> > -	waveform =3D cdclk_squash_waveform(dev_priv, cdclk);
> > -
> > -	if (waveform)
> > -		clock =3D vco / 2;
> > -	else
> > -		clock =3D cdclk;
> > -
> > -	if (has_cdclk_squasher(dev_priv)) {
> > -		u32 squash_ctl =3D 0;
> > -
> > -		if (waveform)
> > +			clock =3D cdclk;
> > +			break;
> > +		case CDCLK_SQUASH:
> > +			waveform =3D  cdclk_squash_waveform(dev_priv,
> cdclk_steps[i].cdclk);
> > +			clock =3D vco / 2;
> >  			squash_ctl =3D CDCLK_SQUASH_ENABLE |
> > -				CDCLK_SQUASH_WINDOW_SIZE(0xf) |
> waveform;
> > -
> > -		intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
> > +					CDCLK_SQUASH_WINDOW_SIZE(0xf)
> | waveform;
> > +			intel_de_write(dev_priv, CDCLK_SQUASH_CTL,
> squash_ctl);
> > +			break;
> > +		case CDCLK_NOOP:
> > +			break;
> > +		default:
> > +			MISSING_CASE(cdclk_steps[i].action);
> > +			break;
> > +		}
> >  	}
> >
> >  	val =3D bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) | @@ -1950,10
> > +1956,11 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
> >  		skl_cdclk_uninit_hw(i915);
> >  }
> >
> > -static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
> > +static bool intel_cdclk_crawl(struct drm_i915_private *dev_priv,
> >  				  const struct intel_cdclk_config *a,
> >  				  const struct intel_cdclk_config *b)  {
> > +	struct cdclk_steps *cdclk_transition =3D dev_priv->cdclk.steps;
> >  	int a_div, b_div;
> >
> >  	if (!HAS_CDCLK_CRAWL(dev_priv))
> > @@ -1966,16 +1973,22 @@ static bool intel_cdclk_can_crawl(struct
> drm_i915_private *dev_priv,
> >  	a_div =3D DIV_ROUND_CLOSEST(a->vco, a->cdclk);
> >  	b_div =3D DIV_ROUND_CLOSEST(b->vco, b->cdclk);
> >
> > +	cdclk_transition[0].action =3D CDCLK_CRAWL;
> > +	cdclk_transition[0].cdclk =3D b->cdclk;
> > +	cdclk_transition[1].action =3D CDCLK_NOOP;
> > +	cdclk_transition[1].cdclk =3D b->cdclk;
> > +
> >  	return a->vco !=3D 0 && b->vco !=3D 0 &&
> >  		a->vco !=3D b->vco &&
> >  		a_div =3D=3D b_div &&
> >  		a->ref =3D=3D b->ref;
> >  }
> >
> > -static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
> > +static bool intel_cdclk_squash(struct drm_i915_private *dev_priv,
> >  				   const struct intel_cdclk_config *a,
> >  				   const struct intel_cdclk_config *b)  {
> > +	struct cdclk_steps *cdclk_transition =3D dev_priv->cdclk.steps;
> >  	/*
> >  	 * FIXME should store a bit more state in intel_cdclk_config
> >  	 * to differentiate squasher vs. cd2x divider properly. For @@
> > -1985,6 +1998,11 @@ static bool intel_cdclk_can_squash(struct
> drm_i915_private *dev_priv,
> >  	if (!has_cdclk_squasher(dev_priv))
> >  		return false;
> >
> > +	cdclk_transition[0].action =3D CDCLK_SQUASH;
> > +	cdclk_transition[0].cdclk =3D b->cdclk;
> > +	cdclk_transition[1].action =3D CDCLK_NOOP;
> > +	cdclk_transition[1].cdclk =3D b->cdclk;
> > +
> >  	return a->cdclk !=3D b->cdclk &&
> >  		a->vco !=3D 0 &&
> >  		a->vco =3D=3D b->vco &&
> > @@ -2001,9 +2019,19 @@ static bool intel_cdclk_can_squash(struct
> drm_i915_private *dev_priv,
> >   * True if changing between the two CDCLK configurations
> >   * requires all pipes to be off, false if not.
> >   */
> > -bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
> > +bool intel_cdclk_needs_modeset(struct drm_i915_private *dev_priv,
> > +			       const struct intel_cdclk_config *a,
> >  			       const struct intel_cdclk_config *b)  {
> > +	struct cdclk_steps *cdclk_transition =3D dev_priv->cdclk.steps;
> > +
> > +	if (a->cdclk !=3D b->cdclk || a->vco !=3D b->vco ||	a->ref !=3D b->re=
f) {
> > +		cdclk_transition[0].action =3D CDCLK_MODESET;
> > +		cdclk_transition[0].cdclk =3D b->cdclk;
> > +		cdclk_transition[1].action =3D CDCLK_NOOP;
> > +		cdclk_transition[1].cdclk =3D b->cdclk;
> > +	}
> > +
> >  	return a->cdclk !=3D b->cdclk ||
> >  		a->vco !=3D b->vco ||
> >  		a->ref !=3D b->ref;
> > @@ -2051,10 +2079,11 @@ static bool intel_cdclk_can_cd2x_update(struct
> drm_i915_private *dev_priv,
> >   * Returns:
> >   * True if the CDCLK configurations don't match, false if they do.
> >   */
> > -static bool intel_cdclk_changed(const struct intel_cdclk_config *a,
> > +static bool intel_cdclk_changed(struct drm_i915_private *dev_priv,
> > +				const struct intel_cdclk_config *a,
> >  				const struct intel_cdclk_config *b)  {
> > -	return intel_cdclk_needs_modeset(a, b) ||
> > +	return intel_cdclk_needs_modeset(dev_priv, a, b) ||
> >  		a->voltage_level !=3D b->voltage_level;  }
> >
> > @@ -2082,7 +2111,7 @@ static void intel_set_cdclk(struct
> > drm_i915_private *dev_priv,  {
> >  	struct intel_encoder *encoder;
> >
> > -	if (!intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config))
> > +	if (!intel_cdclk_changed(dev_priv, &dev_priv->cdclk.hw,
> > +cdclk_config))
> >  		return;
> >
> >  	if (drm_WARN_ON_ONCE(&dev_priv->drm,
> > !dev_priv->cdclk_funcs->set_cdclk))
> > @@ -2129,7 +2158,7 @@ static void intel_set_cdclk(struct
> drm_i915_private *dev_priv,
> >  	intel_audio_cdclk_change_post(dev_priv);
> >
> >  	if (drm_WARN(&dev_priv->drm,
> > -		     intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config),
> > +		     intel_cdclk_changed(dev_priv, &dev_priv->cdclk.hw,
> > +cdclk_config),
> >  		     "cdclk state doesn't match!\n")) {
> >  		intel_dump_cdclk_config(&dev_priv->cdclk.hw, "[hw
> state]");
> >  		intel_dump_cdclk_config(cdclk_config, "[sw state]"); @@ -
> 2153,7
> > +2182,7 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state
> *state)
> >  		intel_atomic_get_new_cdclk_state(state);
> >  	enum pipe pipe =3D new_cdclk_state->pipe;
> >
> > -	if (!intel_cdclk_changed(&old_cdclk_state->actual,
> > +	if (!intel_cdclk_changed(dev_priv, &old_cdclk_state->actual,
> >  				 &new_cdclk_state->actual))
> >  		return;
> >
> > @@ -2182,7 +2211,7 @@ intel_set_cdclk_post_plane_update(struct
> intel_atomic_state *state)
> >  		intel_atomic_get_new_cdclk_state(state);
> >  	enum pipe pipe =3D new_cdclk_state->pipe;
> >
> > -	if (!intel_cdclk_changed(&old_cdclk_state->actual,
> > +	if (!intel_cdclk_changed(dev_priv, &old_cdclk_state->actual,
> >  				 &new_cdclk_state->actual))
> >  		return;
> >
> > @@ -2736,7 +2765,7 @@ int intel_modeset_calc_cdclk(struct
> intel_atomic_state *state)
> >  	if (ret)
> >  		return ret;
> >
> > -	if (intel_cdclk_changed(&old_cdclk_state->actual,
> > +	if (intel_cdclk_changed(dev_priv, &old_cdclk_state->actual,
> >  				&new_cdclk_state->actual)) {
> >  		/*
> >  		 * Also serialize commits across all crtcs @@ -2747,7 +2776,7
> @@
> > int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
> >  			return ret;
> >  	} else if (old_cdclk_state->active_pipes !=3D new_cdclk_state-
> >active_pipes ||
> >  		   old_cdclk_state->force_min_cdclk !=3D new_cdclk_state-
> >force_min_cdclk ||
> > -		   intel_cdclk_changed(&old_cdclk_state->logical,
> > +		   intel_cdclk_changed(dev_priv, &old_cdclk_state->logical,
> >  				       &new_cdclk_state->logical)) {
> >  		ret =3D intel_atomic_lock_global_state(&new_cdclk_state-
> >base);
> >  		if (ret)
> > @@ -2774,14 +2803,14 @@ int intel_modeset_calc_cdclk(struct
> intel_atomic_state *state)
> >  			pipe =3D INVALID_PIPE;
> >  	}
> >
> > -	if (intel_cdclk_can_squash(dev_priv,
> > -				   &old_cdclk_state->actual,
> > -				   &new_cdclk_state->actual)) {
> > +	if (intel_cdclk_squash(dev_priv,
> > +			       &old_cdclk_state->actual,
> > +			       &new_cdclk_state->actual)) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "Can change cdclk via squasher\n");
> > -	} else if (intel_cdclk_can_crawl(dev_priv,
> > -					 &old_cdclk_state->actual,
> > -					 &new_cdclk_state->actual)) {
> > +	} else if (intel_cdclk_crawl(dev_priv,
> > +				     &old_cdclk_state->actual,
> > +				     &new_cdclk_state->actual)) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "Can change cdclk via crawl\n");
> >  	} else if (pipe !=3D INVALID_PIPE) {
> > @@ -2790,7 +2819,8 @@ int intel_modeset_calc_cdclk(struct
> intel_atomic_state *state)
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "Can change cdclk cd2x divider with pipe %c
> active\n",
> >  			    pipe_name(pipe));
> > -	} else if (intel_cdclk_needs_modeset(&old_cdclk_state->actual,
> > +	} else if (intel_cdclk_needs_modeset(dev_priv,
> > +					     &old_cdclk_state->actual,
> >  					     &new_cdclk_state->actual)) {
> >  		/* All pipes must be switched off while we change the cdclk.
> */
> >  		ret =3D intel_modeset_all_pipes(state); diff --git
> > a/drivers/gpu/drm/i915/display/intel_cdclk.h
> > b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > index 71dd84740ae3..cc52ef029bb4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > @@ -58,7 +58,8 @@ void intel_init_cdclk_hooks(struct drm_i915_private
> > *dev_priv);  void intel_update_max_cdclk(struct drm_i915_private
> > *dev_priv);  void intel_update_cdclk(struct drm_i915_private
> > *dev_priv);
> >  u32 intel_read_rawclk(struct drm_i915_private *dev_priv); -bool
> > intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
> > +bool intel_cdclk_needs_modeset(struct drm_i915_private *dev_priv,
> > +			       const struct intel_cdclk_config *a,
> >  			       const struct intel_cdclk_config *b);  void
> > intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
> > void intel_set_cdclk_post_plane_update(struct intel_atomic_state
> > *state); diff --git
> > a/drivers/gpu/drm/i915/display/intel_display_power.c
> > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 05babdcf5f2e..5c6671296019 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -1297,7 +1297,7 @@ static void gen9_disable_dc_states(struct
> drm_i915_private *dev_priv)
> >  	intel_cdclk_get_cdclk(dev_priv, &cdclk_config);
> >  	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
> >  	drm_WARN_ON(&dev_priv->drm,
> > -		    intel_cdclk_needs_modeset(&dev_priv->cdclk.hw,
> > +		    intel_cdclk_needs_modeset(dev_priv, &dev_priv-
> >cdclk.hw,
> >  					      &cdclk_config));
> >
> >  	gen9_assert_dbuf_enabled(dev_priv);
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > b/drivers/gpu/drm/i915/i915_drv.h index ed48179bacd8..2d2f97138fe2
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -119,6 +119,14 @@
> >
> >  struct drm_i915_gem_object;
> >
> > +enum cdclk_actions {
> > +	CDCLK_MODESET =3D 0,
> > +	CDCLK_SQUASH,
> > +	CDCLK_CRAWL,
> > +	CDCLK_NOOP,
> > +	CDCLK_ACTIONS
> > +};
> > +
> >  /* Threshold =3D=3D 5 for long IRQs, 50 for short */  #define
> > HPD_STORM_DEFAULT_THRESHOLD 50
> >
> > @@ -769,6 +777,11 @@ struct drm_i915_private {
> >  		const struct intel_cdclk_vals *table;
> >
> >  		struct intel_global_obj obj;
> > +
> > +		struct cdclk_steps {
> > +			enum cdclk_actions action;
> > +			u32 cdclk;
> > +		} steps[CDCLK_ACTIONS];
>=20
> Is this modeset state recorded directly in struct drm_i915_private instea=
d of
> actual modeset state objects?

This response got lost in the rest of the emails that I received during vac=
ation. Apologies for the late response.

Yeah the cdclk action or the state to be taken is recorded here. Maybe movi=
ng this to cdclk_state is better?

Anusha=20

> BR,
> Jani.
>=20
> >  	} cdclk;
> >
> >  	struct {
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
