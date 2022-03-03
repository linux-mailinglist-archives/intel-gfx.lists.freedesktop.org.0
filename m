Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E42674CC6C5
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 21:04:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70ECC10E16D;
	Thu,  3 Mar 2022 20:04:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31BDE10E16D
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 20:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646337879; x=1677873879;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4b68Z4kddw9NYWVBa+kMJLxfz0IGzBK83QKMpbYiNSA=;
 b=bA8fCytRTRODiUf3M/VDRTSdGeCSINqYW7x2jj+DjGG8NiRsegT1XsuC
 BDeXgyzUi/zjALR8ZWfvZqYgYeoCEH3ctIYjXg3bL8SXn7cFH/6mpQzzw
 +wi+a4OCRAy8t6oyHv7KTV0v8gqjYxEl+Sq7Vlu9Fm+UdGMSbK3/ZWJU+
 dwOEB5a8chbjDt3EIZs3rPouJSKlUoXmAEx3bym7uelix/fxJcxTZAORJ
 iKp45RMEErHJxxaQSJiPjuwBKQ/DN0RaZQ3dNj8YkzVaLw5cK2SczEotA
 w7WUvDqp/JF7FTy64plPXUT3wlxwl+HnVkCINC0LQpjy69tLhFhKK9bHq A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="278485179"
X-IronPort-AV: E=Sophos;i="5.90,153,1643702400"; d="scan'208";a="278485179"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 12:04:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,153,1643702400"; d="scan'208";a="545993273"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 03 Mar 2022 12:04:38 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 3 Mar 2022 12:04:37 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 3 Mar 2022 12:04:36 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2308.021;
 Thu, 3 Mar 2022 12:04:36 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/cdclk: Add cdclk check to atomic
 check
Thread-Index: AQHYLpEwbSwUP+lQD0WtNyC3MBYLHKyt85MAgAAhRkA=
Date: Thu, 3 Mar 2022 20:04:36 +0000
Message-ID: <7c6b6413af6a407f817385ce9c91598d@intel.com>
References: <20220302235348.1262120-1-anusha.srivatsa@intel.com>
 <87wnhb4asd.fsf@intel.com>
In-Reply-To: <87wnhb4asd.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cdclk: Add cdclk check to atomic
 check
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
> Sent: Thursday, March 3, 2022 1:59 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/cdclk: Add cdclk check to atomi=
c
> check
>=20
> On Wed, 02 Mar 2022, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> > Checking cdclk conditions during atomic check and preparing for commit
> > phase so we can have atomic commit as simple as possible. Add the
> > specific steps to be taken during cdclk changes, prepare for
> > squashing, crawling and modeset scenarios.
> >
> > Rename functions intel_cdclk_can_squash() and
> > intel_cdclk_can_crawl() since they no longer simply check if squashing
> > and crawling can be performed.
>=20
> IMO the patch is doing too much at once. There's adding parameters (can b=
e
> done separately at first), there's renames (can be done separately
> afterwards), there's functional changes, all in one.
>=20
> If you got a bisect result pointing at this commit as regressing, would y=
ou
> able to easily figure out what went wrong?

Agreed. Splitting would be good.

> Some comments inline too.
>=20
> BR,
> Jani.
>=20
> >
> > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c    | 169 +++++++++++-------
> >  drivers/gpu/drm/i915/display/intel_cdclk.h    |  16 +-
> >  .../drm/i915/display/intel_display_power.c    |   2 +-
> >  3 files changed, 123 insertions(+), 64 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 8888fda8b701..04f3f77ef0a8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1700,12 +1700,23 @@ static void bxt_set_cdclk(struct
> drm_i915_private *dev_priv,
> >  			  const struct intel_cdclk_config *cdclk_config,
> >  			  enum pipe pipe)
> >  {
> > +	struct intel_atomic_state *state;
> > +	struct intel_cdclk_state *new_cdclk_state;
> > +	struct cdclk_steps *cdclk_steps;
> > +	struct intel_cdclk_state *cdclk_state;
> >  	int cdclk =3D cdclk_config->cdclk;
> >  	int vco =3D cdclk_config->vco;
> > +	u32 squash_ctl =3D 0;
> >  	u32 val;
> >  	u16 waveform;
> >  	int clock;
> >  	int ret;
> > +	int i;
> > +
> > +	cdclk_state =3D  to_intel_cdclk_state(dev_priv->cdclk.obj.state);
> > +	state =3D cdclk_state->base.state;
> > +	new_cdclk_state =3D intel_atomic_get_new_cdclk_state(state);
> > +	cdclk_steps =3D new_cdclk_state->steps;
> >
> >  	/* Inform power controller of upcoming frequency change. */
> >  	if (DISPLAY_VER(dev_priv) >=3D 11)
> > @@ -1728,40 +1739,43 @@ static void bxt_set_cdclk(struct
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
> >  				CDCLK_SQUASH_WINDOW_SIZE(0xf) |
> waveform;
> > -
> > -		intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
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
> >  	val =3D bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) | @@ -1951,11
> > +1965,12 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
> >  		skl_cdclk_uninit_hw(i915);
> >  }
> >
> > -static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
> > -				  const struct intel_cdclk_config *a,
> > -				  const struct intel_cdclk_config *b)
> > +static bool intel_cdclk_crawl(struct drm_i915_private *dev_priv,
> > +			      const struct intel_cdclk_state *a,
> > +			      struct intel_cdclk_state *b)
> >  {
> >  	int a_div, b_div;
> > +	struct cdclk_steps *cdclk_transition =3D b->steps;
> >
> >  	if (!HAS_CDCLK_CRAWL(dev_priv))
> >  		return false;
> > @@ -1964,19 +1979,25 @@ static bool intel_cdclk_can_crawl(struct
> drm_i915_private *dev_priv,
> >  	 * The vco and cd2x divider will change independently
> >  	 * from each, so we disallow cd2x change when crawling.
> >  	 */
> > -	a_div =3D DIV_ROUND_CLOSEST(a->vco, a->cdclk);
> > -	b_div =3D DIV_ROUND_CLOSEST(b->vco, b->cdclk);
> > +	a_div =3D DIV_ROUND_CLOSEST(a->actual.vco, a->actual.cdclk);
> > +	b_div =3D DIV_ROUND_CLOSEST(b->actual.vco, b->actual.cdclk);
> >
> > -	return a->vco !=3D 0 && b->vco !=3D 0 &&
> > -		a->vco !=3D b->vco &&
> > +	cdclk_transition[0].action =3D CDCLK_CRAWL;
> > +	cdclk_transition[0].cdclk =3D b->actual.cdclk;
> > +	cdclk_transition[1].action =3D CDCLK_NOOP;
> > +	cdclk_transition[1].cdclk =3D b->actual.cdclk;
> > +
> > +	return a->actual.vco !=3D 0 && b->actual.vco !=3D 0 &&
> > +		a->actual.vco !=3D b->actual.vco &&
> >  		a_div =3D=3D b_div &&
> > -		a->ref =3D=3D b->ref;
> > +		a->actual.ref =3D=3D b->actual.ref;
> >  }
> >
> > -static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
> > -				   const struct intel_cdclk_config *a,
> > -				   const struct intel_cdclk_config *b)
> > +static bool intel_cdclk_squash(struct drm_i915_private *dev_priv,
> > +			       const struct intel_cdclk_state *a,
> > +			       struct intel_cdclk_state *b)
> >  {
> > +	struct cdclk_steps *cdclk_transition =3D b->steps;
> >  	/*
> >  	 * FIXME should store a bit more state in intel_cdclk_config
> >  	 * to differentiate squasher vs. cd2x divider properly. For @@
> > -1986,10 +2007,15 @@ static bool intel_cdclk_can_squash(struct
> drm_i915_private *dev_priv,
> >  	if (!has_cdclk_squasher(dev_priv))
> >  		return false;
> >
> > -	return a->cdclk !=3D b->cdclk &&
> > -		a->vco !=3D 0 &&
> > -		a->vco =3D=3D b->vco &&
> > -		a->ref =3D=3D b->ref;
> > +	cdclk_transition[0].action =3D CDCLK_SQUASH;
> > +	cdclk_transition[0].cdclk =3D b->actual.cdclk;
> > +	cdclk_transition[1].action =3D CDCLK_NOOP;
> > +	cdclk_transition[1].cdclk =3D b->actual.cdclk;
> > +
> > +	return a->actual.cdclk !=3D b->actual.cdclk &&
> > +		a->actual.vco !=3D 0 &&
> > +		a->actual.vco =3D=3D b->actual.vco &&
> > +		a->actual.ref =3D=3D b->actual.ref;
> >  }
> >
> >  /**
> > @@ -2002,9 +2028,27 @@ static bool intel_cdclk_can_squash(struct
> drm_i915_private *dev_priv,
> >   * True if changing between the two CDCLK configurations
> >   * requires all pipes to be off, false if not.
> >   */
> > -bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
> > +bool intel_cdclk_needs_modeset(struct drm_i915_private *i915,
> > +			       const struct intel_cdclk_config *a,
> >  			       const struct intel_cdclk_config *b)  {
> > +	struct intel_cdclk_state *new_cdclk_state;
> > +	struct cdclk_steps *cdclk_transition;
> > +	struct intel_cdclk_state *cdclk_state =3D  to_intel_cdclk_state(i915-
> >cdclk.obj.state);
> > +	struct intel_atomic_state *state =3D cdclk_state->base.state;
> > +
> > +	new_cdclk_state =3D intel_atomic_get_new_cdclk_state(state);
> > +	cdclk_transition =3D new_cdclk_state->steps;
> > +
> > +	if (a->cdclk !=3D b->cdclk ||
> > +	    a->vco !=3D b->vco ||
> > +	    a->ref !=3D b->ref) {
> > +		cdclk_transition[0].action =3D CDCLK_MODESET;
> > +		cdclk_transition[0].cdclk =3D b->cdclk;
> > +		cdclk_transition[1].action =3D CDCLK_NOOP;
> > +		cdclk_transition[1].cdclk =3D b->cdclk;
> > +	}
> > +
> >  	return a->cdclk !=3D b->cdclk ||
> >  		a->vco !=3D b->vco ||
> >  		a->ref !=3D b->ref;
> > @@ -2052,10 +2096,11 @@ static bool intel_cdclk_can_cd2x_update(struct
> drm_i915_private *dev_priv,
> >   * Returns:
> >   * True if the CDCLK configurations don't match, false if they do.
> >   */
> > -static bool intel_cdclk_changed(const struct intel_cdclk_config *a,
> > +static bool intel_cdclk_changed(struct drm_i915_private *i915,
> > +				const struct intel_cdclk_config *a,
> >  				const struct intel_cdclk_config *b)  {
> > -	return intel_cdclk_needs_modeset(a, b) ||
> > +	return intel_cdclk_needs_modeset(i915, a, b) ||
> >  		a->voltage_level !=3D b->voltage_level;  }
> >
> > @@ -2084,7 +2129,7 @@ static void intel_set_cdclk(struct
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
> > @@ -2131,7 +2176,7 @@ static void intel_set_cdclk(struct
> drm_i915_private *dev_priv,
> >  	intel_audio_cdclk_change_post(dev_priv);
> >
> >  	if (drm_WARN(&dev_priv->drm,
> > -		     intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config),
> > +		     intel_cdclk_changed(dev_priv, &dev_priv->cdclk.hw,
> > +cdclk_config),
> >  		     "cdclk state doesn't match!\n")) {
> >  		intel_cdclk_dump_config(dev_priv, &dev_priv->cdclk.hw,
> "[hw state]");
> >  		intel_cdclk_dump_config(dev_priv, cdclk_config, "[sw
> state]"); @@
> > -2155,7 +2200,7 @@ intel_set_cdclk_pre_plane_update(struct
> intel_atomic_state *state)
> >  		intel_atomic_get_new_cdclk_state(state);
> >  	enum pipe pipe =3D new_cdclk_state->pipe;
> >
> > -	if (!intel_cdclk_changed(&old_cdclk_state->actual,
> > +	if (!intel_cdclk_changed(dev_priv, &old_cdclk_state->actual,
> >  				 &new_cdclk_state->actual))
> >  		return;
> >
> > @@ -2184,7 +2229,7 @@ intel_set_cdclk_post_plane_update(struct
> intel_atomic_state *state)
> >  		intel_atomic_get_new_cdclk_state(state);
> >  	enum pipe pipe =3D new_cdclk_state->pipe;
> >
> > -	if (!intel_cdclk_changed(&old_cdclk_state->actual,
> > +	if (!intel_cdclk_changed(dev_priv, &old_cdclk_state->actual,
> >  				 &new_cdclk_state->actual))
> >  		return;
> >
> > @@ -2738,7 +2783,7 @@ int intel_modeset_calc_cdclk(struct
> intel_atomic_state *state)
> >  	if (ret)
> >  		return ret;
> >
> > -	if (intel_cdclk_changed(&old_cdclk_state->actual,
> > +	if (intel_cdclk_changed(dev_priv, &old_cdclk_state->actual,
> >  				&new_cdclk_state->actual)) {
> >  		/*
> >  		 * Also serialize commits across all crtcs @@ -2749,7 +2794,7
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
> > @@ -2776,14 +2821,14 @@ int intel_modeset_calc_cdclk(struct
> intel_atomic_state *state)
> >  			pipe =3D INVALID_PIPE;
> >  	}
> >
> > -	if (intel_cdclk_can_squash(dev_priv,
> > -				   &old_cdclk_state->actual,
> > -				   &new_cdclk_state->actual)) {
> > +	if (intel_cdclk_squash(dev_priv,
> > +			       old_cdclk_state,
> > +			       new_cdclk_state)) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "Can change cdclk via squasher\n");
> > -	} else if (intel_cdclk_can_crawl(dev_priv,
> > -					 &old_cdclk_state->actual,
> > -					 &new_cdclk_state->actual)) {
> > +	} else if (intel_cdclk_crawl(dev_priv,
> > +				     old_cdclk_state,
> > +				     new_cdclk_state)) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "Can change cdclk via crawl\n");
> >  	} else if (pipe !=3D INVALID_PIPE) {
> > @@ -2792,7 +2837,7 @@ int intel_modeset_calc_cdclk(struct
> intel_atomic_state *state)
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "Can change cdclk cd2x divider with pipe %c
> active\n",
> >  			    pipe_name(pipe));
> > -	} else if (intel_cdclk_needs_modeset(&old_cdclk_state->actual,
> > +	} else if (intel_cdclk_needs_modeset(dev_priv,
> > +&old_cdclk_state->actual,
> >  					     &new_cdclk_state->actual)) {
> >  		/* All pipes must be switched off while we change the cdclk.
> */
> >  		ret =3D intel_modeset_all_pipes(state); diff --git
> > a/drivers/gpu/drm/i915/display/intel_cdclk.h
> > b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > index df66f66fbad0..5008463958b1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > @@ -20,6 +20,14 @@ struct intel_cdclk_config {
> >  	u8 voltage_level;
> >  };
> >
> > +enum cdclk_actions {
>=20
> Should it be a singular instead of a plural? Contrast:
>=20
> 	enum cdclk_action x;
> 	enum cdclk_actions y;
>=20
> It's only one action, right?
>=20
> > +	CDCLK_MODESET =3D 0,
> > +	CDCLK_SQUASH,
> > +	CDCLK_CRAWL,
> > +	CDCLK_NOOP,
> > +	CDCLK_ACTIONS
> > +};
> > +
>=20
> You need to prefix these with intel_cdclk_ or INTEL_CDCLK_.

Makes sense to me. Will make the change.

> >  struct intel_cdclk_state {
> >  	struct intel_global_state base;
> >
> > @@ -49,6 +57,11 @@ struct intel_cdclk_state {
> >
> >  	/* bitmask of active pipes */
> >  	u8 active_pipes;
> > +
> > +	struct cdclk_steps {
>=20
> This doesn't need to have a name, really. And if it had a name, it would =
be
> one step, not steps. (The array is steps with plural.)

Hmmm, will change that.

>=20
> > +		enum cdclk_actions action;
> > +		u32 cdclk;
> > +	} steps[CDCLK_ACTIONS];
>=20
> It's a bit confusing to me that you have member action, but it's the same
> enum that defines the size of the steps, leading me to believe the index,=
 as
> indexed by the enumerations, actually matters.
>=20
> Should CDCLK_ACTIONS actually be named CDCLK_MAX_ACTIONS or
> something?
> Or COUNT?
As  I read the above comment I understood the confusion, yes renaming to CD=
CLK_MAX_ACTIONS is better.

Anusha=20
>=20
>=20
> >  };
> >
> >  int intel_crtc_compute_min_cdclk(const struct intel_crtc_state
> > *crtc_state); @@ -58,7 +71,8 @@ void intel_init_cdclk_hooks(struct
> > drm_i915_private *dev_priv);  void intel_update_max_cdclk(struct
> > drm_i915_private *dev_priv);  void intel_update_cdclk(struct
> > drm_i915_private *dev_priv);
> >  u32 intel_read_rawclk(struct drm_i915_private *dev_priv); -bool
> > intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
> > +bool intel_cdclk_needs_modeset(struct drm_i915_private *i915,
> > +			       const struct intel_cdclk_config *a,
> >  			       const struct intel_cdclk_config *b);  void
> > intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
> > void intel_set_cdclk_post_plane_update(struct intel_atomic_state
> > *state); diff --git
> > a/drivers/gpu/drm/i915/display/intel_display_power.c
> > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 3dc859032bac..417a56d54056 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -1118,7 +1118,7 @@ static void gen9_disable_dc_states(struct
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
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
