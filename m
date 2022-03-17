Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E834A4DCA19
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 16:35:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CD8010E7CD;
	Thu, 17 Mar 2022 15:35:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDBCC10E7CD
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 15:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647531347; x=1679067347;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=WkoAu2F5GzSTbZF+hska1jyKCEwH5Tum57gPerMKwgs=;
 b=EiUFdKduqSZJdHBTrB+2HUoVzNdxtYYndcYsz7Bod9juVEhc8V+j3+gJ
 BqxAQIAGeDaLl6m3zh4iKFSb8zks+DKEuZROaJoD848jm3Kv9VZcNbZfh
 n24XNTRL+zotSROlWu6K5jY6k8xv0n9/4FaVv1e6qGlanun9qLodUzy2r
 q0IK9POVOUFyv9iEy82fuBd+3Zo2ZCpE2Z7sp2xALQj/eY+ODJu9G368M
 mRowE49YsFYhPQFKjMAo/3w/Mx1dSUhFEM7ayWw1qmiYhMGKHYpBQfvRj
 U+iB/Fx3hYnxwqf1RjNOw+EEQ/ITyGWXxxV4YnxS9fHKjkXtSPmYExXzN w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="256843707"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="256843707"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 08:35:47 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="557977848"
Received: from unknown (HELO localhost) ([10.252.58.37])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 08:35:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
In-Reply-To: <20220316171030.GA759@labuser-Z97X-UD5H>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220315233856.30255-1-manasi.d.navare@intel.com>
 <87ee32pcce.fsf@intel.com> <20220316171030.GA759@labuser-Z97X-UD5H>
Date: Thu, 17 Mar 2022 17:35:43 +0200
Message-ID: <87pmmkmw1c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/: Refactor hsw_crtc_enable
 for bigjoiner cleanup
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

On Wed, 16 Mar 2022, "Navare, Manasi" <manasi.d.navare@intel.com> wrote:
> On Wed, Mar 16, 2022 at 09:48:17AM +0200, Jani Nikula wrote:
>> On Tue, 15 Mar 2022, Manasi Navare <manasi.d.navare@intel.com> wrote:
>> > This patch abstracts pieces of hsw_crtc_enable corresponding to differ=
ent
>> > Bspec enable sequence steps into separate functions.
>> > This helps to call them in a specific order for bigjoiner master/slave
>> > in a cleaner fashion.
>>=20
>> So does this contain only refactoring or functional changes also? One or
>> the other at a time, please, not both.
>
> No this is only refactor, no functional changes here
>
>>=20
>> Also looks like hsw_crtc_* have accumulated just way too many checks for
>> platforms instead of having a clean break at e.g. display 9 and/or 11.
>
> These checks were already part of hsw_crtc_enable() function that I have =
just moved to a separate
> function. How do you recommend removing these checks?

We use hsw_crtc_enable for all DDI platforms and later. We do have the
difference between skl_display_funcs and ddi_display_funcs, but they
both point to hsw_crtc_enable. Maybe it's time for them to have their
own functions that don't have to take so many platform differences into
account.

BR,
Jani.




>
>>=20
>> Adding references to "enable sequence step 8" is not helpful because
>> it's platform specific. (Yeah, I know there are existing references like
>> this, but they're also suspect.)
>
> Yes agree, may be I will add the comment for what actually the step 7/8 d=
oes?
>
> Manasi
>
>>=20
>>=20
>> BR,
>> Jani.
>>=20
>>=20
>> >
>> > Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > Cc: Animesh Manna <animesh.manna@intel.com>
>> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_display.c | 125 ++++++++++---------
>> >  1 file changed, 66 insertions(+), 59 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gp=
u/drm/i915/display/intel_display.c
>> > index eb49973621f0..d8e6466c9fa0 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> > @@ -1865,24 +1865,6 @@ static void hsw_set_frame_start_delay(const str=
uct intel_crtc_state *crtc_state)
>> >  	intel_de_write(dev_priv, reg, val);
>> >  }
>> >=20=20
>> > -static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *s=
tate,
>> > -					 const struct intel_crtc_state *crtc_state)
>> > -{
>> > -	struct intel_crtc *master_crtc =3D intel_master_crtc(crtc_state);
>> > -
>> > -	/*
>> > -	 * Enable sequence steps 1-7 on bigjoiner master
>> > -	 */
>> > -	if (intel_crtc_is_bigjoiner_slave(crtc_state))
>> > -		intel_encoders_pre_pll_enable(state, master_crtc);
>> > -
>> > -	if (crtc_state->shared_dpll)
>> > -		intel_enable_shared_dpll(crtc_state);
>> > -
>> > -	if (intel_crtc_is_bigjoiner_slave(crtc_state))
>> > -		intel_encoders_pre_enable(state, master_crtc);
>> > -}
>> > -
>> >  static void hsw_configure_cpu_transcoder(const struct intel_crtc_stat=
e *crtc_state)
>> >  {
>> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>> > @@ -1910,70 +1892,73 @@ static void hsw_configure_cpu_transcoder(const=
 struct intel_crtc_state *crtc_sta
>> >  	hsw_set_transconf(crtc_state);
>> >  }
>> >=20=20
>> > -static void hsw_crtc_enable(struct intel_atomic_state *state,
>> > -			    struct intel_crtc *crtc)
>> > +static void hsw_crtc_pre_pll_enable(struct intel_atomic_state *state,
>> > +				    const struct intel_crtc_state *crtc_state)
>> >  {
>> > -	const struct intel_crtc_state *new_crtc_state =3D
>> > -		intel_atomic_get_new_crtc_state(state, crtc);
>> > -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>> > -	enum pipe pipe =3D crtc->pipe, hsw_workaround_pipe;
>> > -	enum transcoder cpu_transcoder =3D new_crtc_state->cpu_transcoder;
>> > -	bool psl_clkgate_wa;
>> > -
>> > -	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
>> > -		return;
>> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>> >=20=20
>> > -	if (!new_crtc_state->bigjoiner_pipes) {
>> > -		intel_encoders_pre_pll_enable(state, crtc);
>> > +	/*
>> > +	 * Enable sequence steps 1 - 7 on all pipes
>> > +	 */
>> > +	intel_encoders_pre_pll_enable(state, crtc);
>> > +	if (crtc_state->shared_dpll)
>> > +		intel_enable_shared_dpll(crtc_state);
>> >=20=20
>> > -		if (new_crtc_state->shared_dpll)
>> > -			intel_enable_shared_dpll(new_crtc_state);
>> > +	intel_encoders_pre_enable(state, crtc);
>> > +}
>> >=20=20
>> > -		intel_encoders_pre_enable(state, crtc);
>> > -	} else {
>> > -		icl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
>> > -	}
>> > +static void hsw_crtc_post_pll_enable(struct intel_atomic_state *state,
>> > +				     const struct intel_crtc_state *crtc_state)
>> > +{
>> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>> > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>> > +	enum pipe pipe =3D crtc->pipe, hsw_workaround_pipe;
>> > +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>> > +	bool psl_clkgate_wa;
>> >=20=20
>> > -	intel_dsc_enable(new_crtc_state);
>> > +	/*
>> > +	 * Enable sequence step 8
>> > +	 */
>> > +	intel_dsc_enable(crtc_state);
>> >=20=20
>> >  	if (DISPLAY_VER(dev_priv) >=3D 13)
>> > -		intel_uncompressed_joiner_enable(new_crtc_state);
>> > +		intel_uncompressed_joiner_enable(crtc_state);
>> >=20=20
>> > -	intel_set_pipe_src_size(new_crtc_state);
>> > +	intel_set_pipe_src_size(crtc_state);
>> >  	if (DISPLAY_VER(dev_priv) >=3D 9 || IS_BROADWELL(dev_priv))
>> > -		bdw_set_pipemisc(new_crtc_state);
>> > +		bdw_set_pipemisc(crtc_state);
>> >=20=20
>> > -	if (!intel_crtc_is_bigjoiner_slave(new_crtc_state) &&
>> > +	if (!intel_crtc_is_bigjoiner_slave(crtc_state) &&
>> >  	    !transcoder_is_dsi(cpu_transcoder))
>> > -		hsw_configure_cpu_transcoder(new_crtc_state);
>> > +		hsw_configure_cpu_transcoder(crtc_state);
>> >=20=20
>> >  	crtc->active =3D true;
>> >=20=20
>> >  	/* Display WA #1180: WaDisableScalarClockGating: glk */
>> >  	psl_clkgate_wa =3D DISPLAY_VER(dev_priv) =3D=3D 10 &&
>> > -		new_crtc_state->pch_pfit.enabled;
>> > +		crtc_state->pch_pfit.enabled;
>> >  	if (psl_clkgate_wa)
>> >  		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
>> >=20=20
>> >  	if (DISPLAY_VER(dev_priv) >=3D 9)
>> > -		skl_pfit_enable(new_crtc_state);
>> > +		skl_pfit_enable(crtc_state);
>> >  	else
>> > -		ilk_pfit_enable(new_crtc_state);
>> > +		ilk_pfit_enable(crtc_state);
>> >=20=20
>> >  	/*
>> >  	 * On ILK+ LUT must be loaded before the pipe is running but with
>> >  	 * clocks enabled
>> >  	 */
>> > -	intel_color_load_luts(new_crtc_state);
>> > -	intel_color_commit(new_crtc_state);
>> > +	intel_color_load_luts(crtc_state);
>> > +	intel_color_commit(crtc_state);
>> >  	/* update DSPCNTR to configure gamma/csc for pipe bottom color */
>> >  	if (DISPLAY_VER(dev_priv) < 9)
>> > -		intel_disable_primary_plane(new_crtc_state);
>> > +		intel_disable_primary_plane(crtc_state);
>> >=20=20
>> > -	hsw_set_linetime_wm(new_crtc_state);
>> > +	hsw_set_linetime_wm(crtc_state);
>> >=20=20
>> >  	if (DISPLAY_VER(dev_priv) >=3D 11)
>> > -		icl_set_pipe_chicken(new_crtc_state);
>> > +		icl_set_pipe_chicken(crtc_state);
>> >=20=20
>> >  	intel_initial_watermarks(state, crtc);
>> >=20=20
>> > @@ -1984,8 +1969,8 @@ static void hsw_crtc_enable(struct intel_atomic_=
state *state,
>> >  		icl_pipe_mbus_enable(crtc, dbuf_state->joined_mbus);
>> >  	}
>> >=20=20
>> > -	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
>> > -		intel_crtc_vblank_on(new_crtc_state);
>> > +	if (intel_crtc_is_bigjoiner_slave(crtc_state))
>> > +		intel_crtc_vblank_on(crtc_state);
>> >=20=20
>> >  	intel_encoders_enable(state, crtc);
>> >=20=20
>> > @@ -1996,7 +1981,7 @@ static void hsw_crtc_enable(struct intel_atomic_=
state *state,
>> >=20=20
>> >  	/* If we change the relative order between pipe/planes enabling, we =
need
>> >  	 * to change the workaround. */
>> > -	hsw_workaround_pipe =3D new_crtc_state->hsw_workaround_pipe;
>> > +	hsw_workaround_pipe =3D crtc_state->hsw_workaround_pipe;
>> >  	if (IS_HASWELL(dev_priv) && hsw_workaround_pipe !=3D INVALID_PIPE) {
>> >  		struct intel_crtc *wa_crtc;
>> >=20=20
>> > @@ -2007,6 +1992,29 @@ static void hsw_crtc_enable(struct intel_atomic=
_state *state,
>> >  	}
>> >  }
>> >=20=20
>> > +static void hsw_crtc_enable(struct intel_atomic_state *state,
>> > +			    struct intel_crtc *crtc)
>> > +{
>> > +	const struct intel_crtc_state *new_crtc_state =3D
>> > +		intel_atomic_get_new_crtc_state(state, crtc);
>> > +	struct intel_crtc *slave_crtc;
>> > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>> > +
>> > +	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
>> > +		return;
>> > +
>> > +	hsw_crtc_pre_pll_enable(state, new_crtc_state);
>> > +
>> > +	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
>> > +					 intel_crtc_bigjoiner_slave_pipes(new_crtc_state)) {
>> > +		struct intel_crtc_state *slave_crtc_state =3D
>> > +			intel_atomic_get_new_crtc_state(state, slave_crtc);
>> > +
>> > +		hsw_crtc_post_pll_enable(state, slave_crtc_state);
>> > +	}
>> > +	hsw_crtc_post_pll_enable(state, new_crtc_state);
>> > +}
>> > +
>> >  void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state)
>> >  {
>> >  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
>> > @@ -8122,11 +8130,11 @@ static void intel_enable_crtc(struct intel_ato=
mic_state *state,
>> >=20=20
>> >  	intel_crtc_update_active_timings(new_crtc_state);
>> >=20=20
>> > -	dev_priv->display->crtc_enable(state, crtc);
>> > -
>> >  	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
>> >  		return;
>> >=20=20
>> > +	dev_priv->display->crtc_enable(state, crtc);
>> > +
>> >  	intel_drrs_enable(new_crtc_state);
>> >=20=20
>> >  	/* vblanks work again, re-enable pipe CRC. */
>> > @@ -8360,8 +8368,7 @@ static void skl_commit_modeset_enables(struct in=
tel_atomic_state *state)
>> >  			continue;
>> >=20=20
>> >  		if (intel_dp_mst_is_slave_trans(new_crtc_state) ||
>> > -		    is_trans_port_sync_master(new_crtc_state) ||
>> > -		    intel_crtc_is_bigjoiner_master(new_crtc_state))
>> > +		    is_trans_port_sync_master(new_crtc_state))
>> >  			continue;
>> >=20=20
>> >  		modeset_pipes &=3D ~BIT(pipe);
>> > @@ -8371,7 +8378,7 @@ static void skl_commit_modeset_enables(struct in=
tel_atomic_state *state)
>> >=20=20
>> >  	/*
>> >  	 * Then we enable all remaining pipes that depend on other
>> > -	 * pipes: MST slaves and port sync masters, big joiner master
>> > +	 * pipes: MST slaves and port sync masters
>> >  	 */
>> >  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
>> >  		enum pipe pipe =3D crtc->pipe;
>>=20
>> --=20
>> Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
