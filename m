Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C026E173C9B
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 17:12:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FBD66F469;
	Fri, 28 Feb 2020 16:12:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 354076F469
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 16:12:40 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 08:12:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,496,1574150400"; d="scan'208";a="232284197"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 28 Feb 2020 08:12:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Feb 2020 18:12:36 +0200
Date: Fri, 28 Feb 2020 18:12:36 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200228161236.GH13686@intel.com>
References: <20200224153240.9047-5-stanislav.lisovskiy@intel.com>
 <20200225145733.32043-1-stanislav.lisovskiy@intel.com>
 <20200227161243.GR13686@intel.com>
 <e5fbc6ec99cc32a123f90f48954b0ebc6c2061fc.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e5fbc6ec99cc32a123f90f48954b0ebc6c2061fc.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v18 4/8] drm/i915: Introduce more
 *_state_changed indicators
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 28, 2020 at 08:56:58AM +0000, Lisovskiy, Stanislav wrote:
> On Thu, 2020-02-27 at 18:12 +0200, Ville Syrj=E4l=E4 wrote:
> > On Tue, Feb 25, 2020 at 04:57:33PM +0200, Stanislav Lisovskiy wrote:
> > > The reasoning behind this is such that current dependencies
> > > in the code are rather implicit in a sense, we have to constantly
> > > check a bunch of different bits like state->modeset,
> > > state->active_pipe_changes, which sometimes can indicate counter
> > > intuitive changes.
> > > =

> > > By introducing more fine grained state change tracking we achieve
> > > better readability and dependency maintenance for the code.
> > > =

> > > For example it is no longer needed to evaluate active_pipe_changes
> > > to understand if there were changes for wm/ddb - lets just have
> > > a correspondent bit in a state, called ddb_state_changed.
> > > =

> > > active_pipe_changes just indicate whether there was some pipe added
> > > or removed. Then we evaluate if wm/ddb had been changed.
> > > Same for sagv/bw state. ddb changes may or may not affect if out
> > > bandwidth constraints have been changed.
> > > =

> > > v2: Add support for older Gens in order not to introduce
> > > regressions
> > > =

> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_atomic.c   |  2 ++
> > >  drivers/gpu/drm/i915/display/intel_bw.c       | 28 ++++++++++++++-
> > > -
> > >  drivers/gpu/drm/i915/display/intel_display.c  | 16 ++++++----
> > >  .../drm/i915/display/intel_display_types.h    | 32 ++++++++++++---
> > > ----
> > >  drivers/gpu/drm/i915/intel_pm.c               |  5 ++-
> > >  5 files changed, 62 insertions(+), 21 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c
> > > b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > index d043057d2fa0..0db9c66d3c0f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > @@ -525,6 +525,8 @@ void intel_atomic_state_clear(struct
> > > drm_atomic_state *s)
> > >  	state->dpll_set =3D state->modeset =3D false;
> > >  	state->global_state_changed =3D false;
> > >  	state->active_pipes =3D 0;
> > > +	state->ddb_state_changed =3D false;
> > > +	state->bw_state_changed =3D false;
> > =

> > Not really liking these.
> > =

> > After some pondering I was thinking along the lines of something
> > simple
> > like this:
> > =

> > struct bw_state {
> > 	u8 sagv_reject;
> > };
> > =

> > bw_check()
> > {
> > 	for_each_crtc_in_state() {
> > 		if (sagv_possible(crtc_state))
> > 			new->sagv_reject &=3D ~BIT(pipe);
> > 		else
> > 			new->sagv_reject |=3D BIT(pipe);
> > 	}
> > =

> > 	calculate new->qgv_mask
> > }
> =

> This is exactly what's done in the next patch, except =

> that I store pipe, which are allowed to have SAGV, i.e:

I think inverted mask idea leads to neater code because then we
don't have to care which pipes are actually present in the hw
and which are fused off/not present:

sagv_reject =3D=3D 0 -> SAGV possible
sagv_reject !=3D 0 -> SAGV not possible

> =

>  struct intel_bw_state {
>  	struct intel_global_state base;
>  =

> +	/*
> +	 * Contains a bit mask, used to determine, whether
> correspondent
> +	 * pipe allows SAGV or not.
> +	 */
> +	u8 pipe_sagv_mask;
> +
> +	/*
> +	 * Used to determine if we already had calculated
> +	 * SAGV mask for this state once.
> +	 */
> +	bool sagv_calculated;
> +
> +	/*
> +	 * Contains final SAGV decision based on current mask,
> +	 * to prevent doing the same job over and over again.
> +	 */
> +	bool can_sagv;
> +
> =

> Also the mask is calculated almost exactly same way:
> =

> static void icl_compute_sagv_mask(struct intel_atomic_state *state)
> +{
> +	struct intel_crtc *crtc;
> +	struct intel_crtc_state *new_crtc_state;
> +	int i;
> +	struct intel_bw_state *new_bw_state =3D
> intel_bw_get_state(state);
> +
> +	if (IS_ERR(new_bw_state)) {
> +		WARN(1, "Could not get bw_state\n");
> +		return;
> +	}
> +
> +	for_each_new_intel_crtc_in_state(state, crtc,
> +					 new_crtc_state, i) {
> +		if (skl_can_enable_sagv_on_pipe(state, crtc->pipe))
> +			new_bw_state->pipe_sagv_mask |=3D BIT(crtc-
> >pipe);
> +		else
> +			new_bw_state->pipe_sagv_mask &=3D ~BIT(crtc-
> >pipe);
> +	}
> +}
> =

> But this patch is not about that - it is about how we signal/determine
> that some change has to be written at commit stage.
> As you remember when we were discussed offline, I just wanted to have
> some expicit way to mark if some global state subsystem had changed,
> without having to do any additional checks, because imho all the checks
> we should do during atomic check, while commit simply applies what has
> to be applied.
> =

> If you are really against having those boolean or any other way to be
> able so simply mark some stage object "dirty" (just like mem pages
> analogy) then would vote at least to have some helper functions to do
> that. =

> i.e smth like:
> =

> bool pipe_sagv_mask_changed(..)

This is just a !=3D, no? Don't see a function really making it any more cle=
ar.

> =

> bool ddb_state_changed(...)

So far I don't see any real need to check for that.

>  =

> Stan
> =

> > =

> > >  }
> > >  =

> > >  struct intel_crtc_state *
> > > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c
> > > b/drivers/gpu/drm/i915/display/intel_bw.c
> > > index bdad7476dc7b..d5be603b8b03 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > > @@ -424,9 +424,27 @@ int intel_bw_atomic_check(struct
> > > intel_atomic_state *state)
> > >  	struct intel_crtc *crtc;
> > >  	int i, ret;
> > >  =

> > > -	/* FIXME earlier gens need some checks too */
> > > -	if (INTEL_GEN(dev_priv) < 11)
> > > +	/*
> > > +	 * For earlier Gens let's consider bandwidth changed if ddb
> > > requirements,
> > > +	 * has been changed.
> > > +	 */
> > > +	if (INTEL_GEN(dev_priv) < 11) {
> > > +		if (state->ddb_state_changed) {
> > > +			bw_state =3D intel_bw_get_state(state);
> > > +			if (IS_ERR(bw_state))
> > > +				return PTR_ERR(bw_state);
> > > +
> > > +			ret =3D intel_atomic_lock_global_state(&bw_state-
> > > >base);
> > > +			if (ret)
> > > +				return ret;
> > > +
> > > +			DRM_DEBUG_KMS("Marking bw state changed for
> > > atomic state %p\n",
> > > +				      state);
> > > +
> > > +			state->bw_state_changed =3D true;
> > > +		}
> > >  		return 0;
> > > +	}
> > >  =

> > >  	for_each_oldnew_intel_crtc_in_state(state, crtc,
> > > old_crtc_state,
> > >  					    new_crtc_state, i) {
> > > @@ -447,7 +465,7 @@ int intel_bw_atomic_check(struct
> > > intel_atomic_state *state)
> > >  		    old_active_planes =3D=3D new_active_planes)
> > >  			continue;
> > >  =

> > > -		bw_state  =3D intel_bw_get_state(state);
> > > +		bw_state =3D intel_bw_get_state(state);
> > >  		if (IS_ERR(bw_state))
> > >  			return PTR_ERR(bw_state);
> > >  =

> > > @@ -468,6 +486,10 @@ int intel_bw_atomic_check(struct
> > > intel_atomic_state *state)
> > >  	if (ret)
> > >  		return ret;
> > >  =

> > > +	DRM_DEBUG_KMS("Marking bw state changed for atomic state %p\n",
> > > state);
> > > +
> > > +	state->bw_state_changed =3D true;
> > > +
> > >  	data_rate =3D intel_bw_data_rate(dev_priv, bw_state);
> > >  	num_active_planes =3D intel_bw_num_active_planes(dev_priv,
> > > bw_state);
> > >  =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 3031e64ee518..137fb645097a 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -15540,8 +15540,10 @@ static void
> > > intel_atomic_commit_tail(struct intel_atomic_state *state)
> > >  		 * SKL workaround: bspec recommends we disable the SAGV
> > > when we
> > >  		 * have more then one pipe enabled
> > >  		 */
> > > -		if (!intel_can_enable_sagv(state))
> > > -			intel_disable_sagv(dev_priv);
> > > +		if (state->bw_state_changed) {
> > > +			if (!intel_can_enable_sagv(state))
> > > +				intel_disable_sagv(dev_priv);
> > > +		}
> > >  =

> > >  		intel_modeset_verify_disabled(dev_priv, state);
> > >  	}
> > > @@ -15565,7 +15567,7 @@ static void intel_atomic_commit_tail(struct
> > > intel_atomic_state *state)
> > >  		intel_encoders_update_prepare(state);
> > >  =

> > >  	/* Enable all new slices, we might need */
> > > -	if (state->modeset)
> > > +	if (state->ddb_state_changed)
> > >  		icl_dbuf_slice_pre_update(state);
> > >  =

> > >  	/* Now enable the clocks, plane, pipe, and connectors that we
> > > set up. */
> > > @@ -15622,7 +15624,7 @@ static void intel_atomic_commit_tail(struct
> > > intel_atomic_state *state)
> > >  	}
> > >  =

> > >  	/* Disable all slices, we don't need */
> > > -	if (state->modeset)
> > > +	if (state->ddb_state_changed)
> > >  		icl_dbuf_slice_post_update(state);
> > >  =

> > >  	for_each_oldnew_intel_crtc_in_state(state, crtc,
> > > old_crtc_state, new_crtc_state, i) {
> > > @@ -15641,8 +15643,10 @@ static void
> > > intel_atomic_commit_tail(struct intel_atomic_state *state)
> > >  	if (state->modeset)
> > >  		intel_verify_planes(state);
> > >  =

> > > -	if (state->modeset && intel_can_enable_sagv(state))
> > > -		intel_enable_sagv(dev_priv);
> > > +	if (state->bw_state_changed) {
> > > +		if (intel_can_enable_sagv(state)
> > > +			intel_enable_sagv(dev_priv);
> > > +	}
> > >  =

> > >  	drm_atomic_helper_commit_hw_done(&state->base);
> > >  =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index 0d8a64305464..12b47ba3c68d 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -471,16 +471,6 @@ struct intel_atomic_state {
> > >  =

> > >  	bool dpll_set, modeset;
> > >  =

> > > -	/*
> > > -	 * Does this transaction change the pipes that are
> > > active?  This mask
> > > -	 * tracks which CRTC's have changed their active state at the
> > > end of
> > > -	 * the transaction (not counting the temporary disable during
> > > modesets).
> > > -	 * This mask should only be non-zero when intel_state->modeset
> > > is true,
> > > -	 * but the converse is not necessarily true; simply changing a
> > > mode may
> > > -	 * not flip the final active status of any CRTC's
> > > -	 */
> > > -	u8 active_pipe_changes;
> > > -
> > >  	u8 active_pipes;
> > >  =

> > >  	struct intel_shared_dpll_state shared_dpll[I915_NUM_PLLS];
> > > @@ -494,10 +484,30 @@ struct intel_atomic_state {
> > >  	bool rps_interactive;
> > >  =

> > >  	/*
> > > -	 * active_pipes
> > > +	 * active pipes
> > >  	 */
> > >  	bool global_state_changed;
> > >  =

> > > +	/*
> > > +	 * Does this transaction change the pipes that are
> > > active?  This mask
> > > +	 * tracks which CRTC's have changed their active state at the
> > > end of
> > > +	 * the transaction (not counting the temporary disable during
> > > modesets).
> > > +	 * This mask should only be non-zero when intel_state->modeset
> > > is true,
> > > +	 * but the converse is not necessarily true; simply changing a
> > > mode may
> > > +	 * not flip the final active status of any CRTC's
> > > +	 */
> > > +	u8 active_pipe_changes;
> > > +
> > > +	/*
> > > +	 * More granular change indicator for ddb changes
> > > +	 */
> > > +	bool ddb_state_changed;
> > > +
> > > +	/*
> > > +	 * More granular change indicator for bandwidth state changes
> > > +	 */
> > > +	bool bw_state_changed;
> > > +
> > >  	/* Number of enabled DBuf slices */
> > >  	u8 enabled_dbuf_slices_mask;
> > >  =

> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c
> > > b/drivers/gpu/drm/i915/intel_pm.c
> > > index 409b91c17a7f..ac4b317ea1bf 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -3894,7 +3894,7 @@ skl_ddb_get_pipe_allocation_limits(struct
> > > drm_i915_private *dev_priv,
> > >  	 * that changes the active CRTC list or do modeset would need
> > > to
> > >  	 * grab _all_ crtc locks, including the one we currently hold.
> > >  	 */
> > > -	if (!intel_state->active_pipe_changes && !intel_state->modeset) =

> > > {
> > > +	if (!intel_state->ddb_state_changed) {
> > >  		/*
> > >  		 * alloc may be cleared by clear_intel_crtc_state,
> > >  		 * copy from old state to be sure
> > > @@ -5787,6 +5787,9 @@ static int skl_wm_add_affected_planes(struct
> > > intel_atomic_state *state,
> > >  			return PTR_ERR(plane_state);
> > >  =

> > >  		new_crtc_state->update_planes |=3D BIT(plane_id);
> > > +
> > > +		DRM_DEBUG_KMS("Marking ddb state changed for atomic
> > > state %p\n", state);
> > > +		state->ddb_state_changed =3D true;
> > >  	}
> > >  =

> > >  	return 0;
> > > -- =

> > > 2.24.1.485.gad05a3d8e5
> > =

> > =


-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
