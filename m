Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C37CB18CE14
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 13:55:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53B386EB26;
	Fri, 20 Mar 2020 12:55:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF3E86EB26
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 12:55:48 +0000 (UTC)
IronPort-SDR: FatWaaINBHATxwsaxYtnC2Gp/8Q7iC6wkDmh6YBJGhfHz4ifQcg44juz2tpvfRUrQFrB7edmtZ
 Tjon7HM9Tkng==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 05:55:44 -0700
IronPort-SDR: 8SlR/GdA3Niuhg90rDa5LlTmejmRh/1WT0YI4PTjRhqO8fooVMMw9WeHh/oD6djUQEnE5xMjR5
 wKApOFb3DagQ==
X-IronPort-AV: E=Sophos;i="5.72,284,1580803200"; d="scan'208";a="418705117"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 05:55:42 -0700
Date: Fri, 20 Mar 2020 14:51:41 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200320125141.GA4156@intel.com>
References: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
 <20200309161204.17792-5-stanislav.lisovskiy@intel.com>
 <20200311163130.GC13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311163130.GC13686@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v19 4/8] drm/i915: Refactor
 intel_can_enable_sagv
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 11, 2020 at 06:31:30PM +0200, Ville Syrj=E4l=E4 wrote:
> On Mon, Mar 09, 2020 at 06:12:00PM +0200, Stanislav Lisovskiy wrote:
> > Currently intel_can_enable_sagv function contains
> > a mix of workarounds for different platforms
> > some of them are not valid for gens >=3D 11 already,
> > so lets split it into separate functions.
> > =

> > v2:
> >     - Rework watermark calculation algorithm to
> >       attempt to calculate Level 0 watermark
> >       with added sagv block time latency and
> >       check if it fits in DBuf in order to
> >       determine if SAGV can be enabled already
> >       at this stage, just as BSpec 49325 states.
> >       if that fails rollback to usual Level 0
> >       latency and disable SAGV.
> >     - Remove unneeded tabs(James Ausmus)
> > =

> > v3: Rebased the patch
> > =

> > v4: - Added back interlaced check for Gen12 and
> >       added separate function for TGL SAGV check
> >       (thanks to James Ausmus for spotting)
> >     - Removed unneeded gen check
> >     - Extracted Gen12 SAGV decision making code
> >       to a separate function from skl_compute_wm
> > =

> > v5: - Added SAGV global state to dev_priv, because
> >       we need to track all pipes, not only those
> >       in atomic state. Each pipe has now correspondent
> >       bit mask reflecting, whether it can tolerate
> >       SAGV or not(thanks to Ville Syrjala for suggestions).
> >     - Now using active flag instead of enable in crc
> >       usage check.
> > =

> > v6: - Fixed rebase conflicts
> > =

> > v7: - kms_cursor_legacy seems to get broken because of multiple memcpy
> >       calls when copying level 0 water marks for enabled SAGV, to
> >       fix this now simply using that field right away, without copying,
> >       for that introduced a new wm_level accessor which decides which
> >       wm_level to return based on SAGV state.
> > =

> > v8: - Protect crtc_sagv_mask same way as we do for other global state
> >       changes: i.e check if changes are needed, then grab all crtc locks
> >       to serialize the changes(Ville Syrj=E4l=E4)
> >     - Add crtc_sagv_mask caching in order to avoid needless recalculati=
ons
> >       (Matthew Roper)
> >     - Put back Gen12 SAGV switch in order to get it enabled in separate
> >       patch(Matthew Roper)
> >     - Rename *_set_sagv_mask to *_compute_sagv_mask(Matthew Roper)
> >     - Check if there are no active pipes in intel_can_enable_sagv
> >       instead of platform specific functions(Matthew Roper), same
> >       for intel_has_sagv check.
> > =

> > v9  - Switched to u8 for crtc_sagv_mask(Ville Syrj=E4l=E4)
> >     - crtc_sagv_mask now is pipe_sagv_mask(Ville Syrj=E4l=E4)
> >     - Extracted sagv checking logic from skl/icl/tgl_compute_sagv_mask
> >     - Extracted skl_plane_wm_level function and passing latency to
> >       separate patches(Ville Syrj=E4l=E4)
> >     - Removed part of unneeded copy-paste from tgl_check_pipe_fits_sagv=
_wm
> >       (Ville Syrj=E4l=E4)
> >     - Now using simple assignment for sagv_wm0 as it contains only
> >       pod types and no pointers(Ville Syrj=E4l=E4)
> >     - Fixed intel_can_enable_sagv not to do double duty, now it only
> >       check SAGV bits by ANDing those between local and global state.
> >       The SAGV masks are now computed after watermarks are available,
> >       in order to be able to figure out if ddb ranges are fitting nicel=
y.
> >       (Ville Syrj=E4l=E4)
> >     - Now having uv_sagv_wm0 and sagv_wm0, otherwise we have wrong logic
> >       when using skl_plane_wm_level accessor, as we had previously for
> >       Gen11+ color plane and regular wm levels, so probably both
> >       has to be recalculated with additional SAGV block time for Level =
0.
> > =

> > v10: - Starting to use new global state for storing pipe_sagv_mask
> > =

> > v11: - Fixed rebase conflict with recent drm-tip
> >      - Check if we really need to recalculate SAGV mask, otherwise
> >        bail out without making any changes.
> >      - Use cached SAGV result, instead of recalculating it everytime,
> >        if bw_state hasn't changed.
> > =

> > v12: - Removed WARN from intel_can_enable_sagv, in some of the commits
> >        if we don't recalculated watermarks, bw_state is not recalculate=
d,
> >        thus leading to SAGV state not recalculated by the commit state,
> >        which is still calling intel_can_enable_sagv function. Fix that
> >        by just analyzing the current global bw_state object - because
> >        we simply have no other objects related to that.
> > =

> > v13: - Rebased, fixed warnings regarding long lines
> >      - Changed function call sites from intel_atomic_bw* to
> >        intel_wb_* as was suggested.(Jani Nikula)
> >      - Taken ddb_state_changed and bw_state_changed into use.
> > =

> > v14: - total_affected_planes is no longer needed to check for ddb chang=
es,
> >        just as active_pipe_changes.
> > =

> > v15: - Fixed stupid mistake with uninitialized crtc in
> >        skl_compute_sagv_mask.
> > =

> > v16: - Convert pipe_sagv_mask to pipe_sagv_reject and now using inverted
> >        flag to indicate SAGV readiness for the pipe(Ville Syrj=E4l=E4)
> >      - Added return value to intel_compute_sagv_mask which call
> >        intel_atomic_serialize_global_state in order to properly
> >        propagate EDEADLCK to drm.
> >      - Based on the discussion with Ville, removed active_pipe_changes
> >        check and also there seems to be no need for checking ddb_state_=
changes
> >        as well. Instead we just iterate through crtcs in state - having
> >        crtc in a state already guarantees that it is at least read-lock=
ed
> >        Having additional flag to check if there actually were some plane
> >        wm/ddb changes would be probably added later as an optimization.
> >      - We can't get parent atomic state from crtc_state at commit stage
> >        (nice drm feature), also propagating state through function call
> >        chain seems to be overkill and not possible(cursor legacy update=
s)
> >        Querying for bw_state object from global state is not possible as
> >        it might get swapped with other global state.
> >        So... just sticked can_sagv boolean into wm crtc state.
> > =

> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@intel.com>
> > Cc: James Ausmus <james.ausmus@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bw.h       |  18 +
> >  drivers/gpu/drm/i915/display/intel_display.c  |  23 +-
> >  .../drm/i915/display/intel_display_types.h    |   3 +
> >  drivers/gpu/drm/i915/intel_pm.c               | 314 ++++++++++++++++--
> >  drivers/gpu/drm/i915/intel_pm.h               |   1 +
> >  5 files changed, 318 insertions(+), 41 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/=
i915/display/intel_bw.h
> > index b5f61463922f..4083adf4b432 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.h
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> > @@ -18,6 +18,24 @@ struct intel_crtc_state;
> >  struct intel_bw_state {
> >  	struct intel_global_state base;
> >  =

> > +	/*
> > +	 * Contains a bit mask, used to determine, whether correspondent
> > +	 * pipe allows SAGV or not.
> > +	 */
> > +	u8 pipe_sagv_reject;
> > +
> > +	/*
> > +	 * Used to determine if we already had calculated
> > +	 * SAGV mask for this state once.
> > +	 */
> > +	bool sagv_calculated;
> =

> Why would we even attempt to calculate it many times?
> =

> > +
> > +	/*
> > +	 * Contains final SAGV decision based on current mask,
> > +	 * to prevent doing the same job over and over again.
> > +	 */
> > +	bool can_sagv;
> =

> This is redundant since it's just sagv_reject=3D=3D0.
> =

> > +
> >  	unsigned int data_rate[I915_MAX_PIPES];
> >  	u8 num_active_planes[I915_MAX_PIPES];
> >  };
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 8f23c4d51c33..9e0058a78ea6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -14010,7 +14010,10 @@ static void verify_wm_state(struct intel_crtc =
*crtc,
> >  		/* Watermarks */
> >  		for (level =3D 0; level <=3D max_level; level++) {
> >  			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
> > -						&sw_plane_wm->wm[level]))
> > +						&sw_plane_wm->wm[level]) ||
> > +			   (skl_wm_level_equals(&hw_plane_wm->wm[level],
> > +						&sw_plane_wm->sagv_wm0) &&
> > +			   (level =3D=3D 0)))
> =

> Pointless parens. Also we should do the check as
> 'level =3D=3D 0 && wm_equals(sagv)' to skip the pointless comparison when
> level !=3D 0.
> =

> I guess we can't read out sagv state due to the silly pcode interface?
> =

> >  				continue;
> >  =

> >  			drm_err(&dev_priv->drm,
> > @@ -14065,7 +14068,10 @@ static void verify_wm_state(struct intel_crtc =
*crtc,
> >  		/* Watermarks */
> >  		for (level =3D 0; level <=3D max_level; level++) {
> >  			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
> > -						&sw_plane_wm->wm[level]))
> > +						&sw_plane_wm->wm[level]) ||
> > +			   (skl_wm_level_equals(&hw_plane_wm->wm[level],
> > +						&sw_plane_wm->sagv_wm0) &&
> > +			   (level =3D=3D 0)))
> >  				continue;
> >  =

> >  			drm_err(&dev_priv->drm,
> > @@ -15544,8 +15550,10 @@ static void intel_atomic_commit_tail(struct in=
tel_atomic_state *state)
> >  		 * SKL workaround: bspec recommends we disable the SAGV when we
> >  		 * have more then one pipe enabled
> >  		 */
> > -		if (!intel_can_enable_sagv(state))
> > -			intel_disable_sagv(dev_priv);
> > +		if (INTEL_GEN(dev_priv) < 11) {
> > +			if (!intel_can_enable_sagv(state))
> > +				intel_disable_sagv(dev_priv);
> > +		}
> >  =

> >  		intel_modeset_verify_disabled(dev_priv, state);
> >  	}
> > @@ -15645,8 +15653,10 @@ static void intel_atomic_commit_tail(struct in=
tel_atomic_state *state)
> >  	if (state->modeset)
> >  		intel_verify_planes(state);
> >  =

> > -	if (state->modeset && intel_can_enable_sagv(state))
> > -		intel_enable_sagv(dev_priv);
> > +	if (INTEL_GEN(dev_priv) < 11) {
> > +		if (state->modeset && intel_can_enable_sagv(state))
> > +			intel_enable_sagv(dev_priv);
> > +	}
> >  =

> >  	drm_atomic_helper_commit_hw_done(&state->base);
> >  =

> > @@ -15798,7 +15808,6 @@ static int intel_atomic_commit(struct drm_devic=
e *dev,
> >  =

> >  	if (state->global_state_changed) {
> >  		assert_global_state_locked(dev_priv);
> > -
> >  		dev_priv->active_pipes =3D state->active_pipes;
> >  	}
> >  =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drive=
rs/gpu/drm/i915/display/intel_display_types.h
> > index 5e00e611f077..da0308b87dad 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -669,11 +669,14 @@ struct skl_plane_wm {
> >  	struct skl_wm_level wm[8];
> >  	struct skl_wm_level uv_wm[8];
> >  	struct skl_wm_level trans_wm;
> > +	struct skl_wm_level sagv_wm0;
> > +	struct skl_wm_level uv_sagv_wm0;
> >  	bool is_planar;
> >  };
> >  =

> >  struct skl_pipe_wm {
> >  	struct skl_plane_wm planes[I915_MAX_PLANES];
> > +	bool can_sagv;
> >  };
> >  =

> >  enum vlv_wm_level {
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/int=
el_pm.c
> > index c72fa59a8302..f598b55f4abc 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -43,6 +43,7 @@
> >  #include "i915_fixed.h"
> >  #include "i915_irq.h"
> >  #include "i915_trace.h"
> > +#include "display/intel_bw.h"
> >  #include "intel_pm.h"
> >  #include "intel_sideband.h"
> >  #include "../../../platform/x86/intel_ips.h"
> > @@ -3634,7 +3635,7 @@ static bool skl_needs_memory_bw_wa(struct drm_i91=
5_private *dev_priv)
> >  	return IS_GEN9_BC(dev_priv) || IS_BROXTON(dev_priv);
> >  }
> >  =

> > -static bool
> > +bool
> >  intel_has_sagv(struct drm_i915_private *dev_priv)
> >  {
> >  	/* HACK! */
> > @@ -3757,39 +3758,25 @@ intel_disable_sagv(struct drm_i915_private *dev=
_priv)
> >  	return 0;
> >  }
> >  =

> > -bool intel_can_enable_sagv(struct intel_atomic_state *state)
> > +static bool skl_can_enable_sagv_on_pipe(struct intel_crtc_state *crtc_=
state)
> =

> This extraction looks to be trivially done as a separate patch.
> =

> >  {
> > -	struct drm_device *dev =3D state->base.dev;
> > +	struct drm_device *dev =3D crtc_state->uapi.crtc->dev;
> >  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> > +	struct intel_atomic_state *state =3D to_intel_atomic_state(crtc_state=
->uapi.state);
> >  	struct intel_crtc *crtc;
> >  	struct intel_plane *plane;
> > -	struct intel_crtc_state *crtc_state;
> > -	enum pipe pipe;
> >  	int level, latency;
> >  =

> > -	if (!intel_has_sagv(dev_priv))
> > -		return false;
> > -
> > -	/*
> > -	 * If there are no active CRTCs, no additional checks need be perform=
ed
> > -	 */
> > -	if (hweight8(state->active_pipes) =3D=3D 0)
> > -		return true;
> > +	crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >  =

> > -	/*
> > -	 * SKL+ workaround: bspec recommends we disable SAGV when we have
> > -	 * more then one pipe enabled
> > -	 */
> > -	if (hweight8(state->active_pipes) > 1)
> > +	if ((INTEL_GEN(dev_priv) <=3D 9) && (hweight8(state->active_pipes) > =
1))
> >  		return false;
> >  =

> > -	/* Since we're now guaranteed to only have one active CRTC... */
> > -	pipe =3D ffs(state->active_pipes) - 1;
> > -	crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
> > -	crtc_state =3D to_intel_crtc_state(crtc->base.state);
> > -
> > -	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
> > +	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE) {
> > +		DRM_DEBUG_KMS("No SAGV for interlaced mode on pipe %c\n",
> > +			      pipe_name(crtc->pipe));
> >  		return false;
> > +	}
> >  =

> >  	for_each_intel_plane_on_crtc(dev, crtc, plane) {
> >  		struct skl_plane_wm *wm =3D
> > @@ -3816,13 +3803,145 @@ bool intel_can_enable_sagv(struct intel_atomic=
_state *state)
> >  		 * incur memory latencies higher than sagv_block_time_us we
> >  		 * can't enable SAGV.
> >  		 */
> > -		if (latency < dev_priv->sagv_block_time_us)
> > +		if (latency < dev_priv->sagv_block_time_us) {
> > +			DRM_DEBUG_KMS("Latency %d < sagv block time %d, no SAGV for pipe %c=
\n",
> > +				      latency, dev_priv->sagv_block_time_us, pipe_name(crtc->pipe)=
);
> >  			return false;
> > +		}
> >  	}
> >  =

> >  	return true;
> >  }
> >  =

> > +static bool
> > +tgl_can_enable_sagv_on_pipe(struct intel_crtc_state *crtc_state);
> > +
> > +static bool intel_calculate_sagv_result(struct intel_bw_state *bw_stat=
e)
> > +{
> > +	return bw_state->pipe_sagv_reject =3D=3D 0;
> > +}
> > +
> > +static int intel_compute_sagv_mask(struct intel_atomic_state *state)
> > +{
> > +	int ret;
> > +	struct drm_device *dev =3D state->base.dev;
> > +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> > +	struct intel_crtc *crtc;
> > +	struct intel_crtc_state *new_crtc_state;
> > +	struct intel_bw_state *new_bw_state =3D NULL;
> > +	struct intel_bw_state *old_bw_state =3D NULL;
> > +	int i;
> > +
> > +	/*
> > +	 * If SAGV is not supported we just can't do anything
> > +	 * not even set or reject SAGV points - just bail out.
> > +	 * Thus avoid needless calculations.
> > +	 */
> > +	if (!intel_has_sagv(dev_priv))
> > +		return 0;
> > +
> > +	for_each_new_intel_crtc_in_state(state, crtc,
> > +					 new_crtc_state, i) {
> > +		bool pipe_sagv_enable;
> > +
> > +		new_bw_state =3D intel_bw_get_state(state);
> > +		old_bw_state =3D intel_bw_get_old_state(state);
> > +
> > +		if (IS_ERR_OR_NULL(new_bw_state) || IS_ERR_OR_NULL(old_bw_state)) {a
> > +			WARN(1, "Could not get bw_state\n");
> > +			return -EINVAL;
> =

> What is this?
> =

> > +		}
> > +
> > +		new_bw_state->sagv_calculated =3D false;
> > +
> > +		if (INTEL_GEN(dev_priv) >=3D 12)
> > +			pipe_sagv_enable =3D tgl_can_enable_sagv_on_pipe(new_crtc_state);
> > +		else
> > +			pipe_sagv_enable =3D skl_can_enable_sagv_on_pipe(new_crtc_state);
> > +
> > +		if (pipe_sagv_enable)
> > +			new_bw_state->pipe_sagv_reject &=3D ~BIT(crtc->pipe);
> > +		else
> > +			new_bw_state->pipe_sagv_reject |=3D BIT(crtc->pipe);
> > +	}
> > +
> > +	if (!new_bw_state || !old_bw_state)
> > +		return 0;
> > +
> > +	new_bw_state->can_sagv =3D intel_calculate_sagv_result(new_bw_state);
> > +	new_bw_state->sagv_calculated =3D true;
> > +
> > +	for_each_new_intel_crtc_in_state(state, crtc,
> > +					 new_crtc_state, i) {
> > +		struct skl_pipe_wm *pipe_wm =3D &new_crtc_state->wm.skl.optimal;
> > +
> > +		/*
> > +		 * Due to drm limitation at commit state, when
> > +		 * changes are written the whole atomic state is
> > +		 * zeroed away =3D> which prevents from using it,
> > +		 * so just sticking it into pipe wm state for
> > +		 * keeping it simple - anyway this is related to wm.
> > +		 * Proper way in ideal universe would be of course not
> > +		 * to lose parent atomic state object from child crtc_state,
> > +		 * and stick to OOP programming principles, which had been
> > +		 * scientifically proven to work.
> > +		 */
> > +		pipe_wm->can_sagv =3D new_bw_state->can_sagv;
> =

> I would probably name that wm->can_sagv as wm->use_sagv_wm so it's clear
> what it does.
> =

> > +	}
> > +
> > +	/*
> > +	 * For SAGV we need to account all the pipes,
> > +	 * not only the ones which are in state currently.
> > +	 * Grab all locks if we detect that we are actually
> > +	 * going to do something.
> > +	 */
> > +	if (new_bw_state->pipe_sagv_reject !=3D old_bw_state->pipe_sagv_rejec=
t) {
> > +		DRM_DEBUG_KMS("State %p: old sagv mask 0x%x, new sagv mask 0x%x\n",
> > +			      state,
> > +			      old_bw_state->pipe_sagv_reject,
> > +			      new_bw_state->pipe_sagv_reject);
> > +
> > +		ret =3D intel_atomic_serialize_global_state(&new_bw_state->base);
> > +		if (ret) {
> > +			DRM_DEBUG_KMS("Could not serialize global state\n");
> > +			return ret;
> > +		}
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +/*
> > + * This function to be used before swap state
> > + */
> > +bool intel_can_enable_sagv(struct intel_atomic_state *state)
> > +{
> > +	struct drm_device *dev =3D state->base.dev;
> > +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> > +	struct intel_bw_state *bw_state;
> > +
> > +	if (!intel_has_sagv(dev_priv)) {
> > +		DRM_DEBUG_KMS("No SAGV support detected\n");
> > +		return false;
> > +	}
> > +
> > +	bw_state =3D intel_bw_get_state(state);
> > +
> > +	if (IS_ERR_OR_NULL(bw_state)) {
> =

> It can't be NULL. And if you get an error you must propagate it upwards.

Can you please elaborate what I should do here?
Just want to save some time without wasting time guessing.
The options are:

1) If I propagate an error upwards, I obviously need to change a signature
   to int intel_can_enable_sagv, also if I do that usage at legacy callsites
   for this function will change, i.e you won't be able to call it like
   if (intel_can_enable_sagv()) anymore. Is it that what you want?
   Should note also that most of the legacy call sites are from commit_tail
   which wouldn't even propagate it further, because as you know it is alre=
ady
   point of no return.

   So if I do this without asking, I might get comments that intel_can_enab=
le_sagv
   is now unneccessarily complicated to use and you can't use it to have a =
trivial
   check.

2) I can stop using bw_state completely in this function, but add some
   flag to intel_atomic_state or somewhere else or even use this hacky
   pipe_wm which now contains sagv flag, i.e then there would be no
   need to propagate any error.

   However you then might say that adding
   or using some additional flag is ugly,wrong and we should stick to
   bw_state :)

3) I can continue to return boolean however print the error code here,
   if we could not get bw_state.
   IMO I would use that one - it is the easiest and propagating it higher
   from that helper function doesn't make any sense.

   However, again it can be then argued that we need to propagate an error
   upwards and not swallow it returning false.

Stan

> =

> > +		WARN(1, "Could not get bw_state\n");
> > +		return false;
> > +	}
> > +
> > +	if (bw_state->sagv_calculated)
> > +		goto out;
> > +
> > +	bw_state->can_sagv =3D intel_calculate_sagv_result(bw_state);
> > +	bw_state->sagv_calculated =3D true;
> > +
> > +out:
> > +	return bw_state->can_sagv;
> > +}
> > +
> >  /*
> >   * Calculate initial DBuf slice offset, based on slice size
> >   * and mask(i.e if slice size is 1024 and second slice is enabled
> > @@ -4042,6 +4161,7 @@ skl_cursor_allocation(const struct intel_crtc_sta=
te *crtc_state,
> >  		u32 latency =3D dev_priv->wm.skl_latency[level];
> >  =

> >  		skl_compute_plane_wm(crtc_state, level, latency, &wp, &wm, &wm);
> > +
> =

> Spurious whitespace.
> =

> >  		if (wm.min_ddb_alloc =3D=3D U16_MAX)
> >  			break;
> >  =

> > @@ -4556,9 +4676,83 @@ skl_plane_wm_level(const struct intel_crtc_state=
 *crtc_state,
> >  	const struct skl_plane_wm *wm =3D
> >  		&crtc_state->wm.skl.optimal.planes[plane_id];
> >  =

> > +	if (!level) {
> > +		const struct skl_pipe_wm *pipe_wm =3D &crtc_state->wm.skl.optimal;
> =

> Why is this here when &crtc_state->wm.skl.optimal is already being used
> higher up?
> =

> > +
> > +		if (pipe_wm->can_sagv)
> > +			return color_plane =3D=3D 0 ? &wm->sagv_wm0 : &wm->uv_sagv_wm0;
> > +	}
> > +
> >  	return color_plane =3D=3D 0 ? &wm->wm[level] : &wm->uv_wm[level];
> >  }
> >  =

> > +static bool
> > +tgl_can_enable_sagv_on_pipe(struct intel_crtc_state *crtc_state)
> > +{
> > +	struct drm_crtc *crtc =3D crtc_state->uapi.crtc;
> =

> Pls don't use the annoying drm_ types.
> =

> > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
> > +	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc);
> > +	struct skl_ddb_entry *alloc =3D &crtc_state->wm.skl.ddb;
> > +	u16 alloc_size;
> > +	u64 total_data_rate;
> > +	enum plane_id plane_id;
> > +	int num_active;
> > +	u64 plane_data_rate[I915_MAX_PLANES] =3D {};
> > +	u32 blocks;
> > +
> > +	/*
> > +	 * If pipe is not active it can't affect SAGV rejection
> > +	 * Checking it here is needed to leave only cases when
> > +	 * alloc_size is 0 for any other reasons, except inactive
> > +	 * pipe. As inactive pipe is fine, however having no ddb
> > +	 * space available is already problematic - so need to
> > +	 * to separate those.
> > +	 */
> =

> Can't figure out what this comment is trying to say or why it's here.
> =

> > +	if (!crtc_state->hw.active)
> > +		return true;
> > +
> > +	/*
> > +	 * No need to check gen here, we call this only for gen12
> > +	 */
> > +	total_data_rate =3D
> > +		icl_get_total_relative_data_rate(crtc_state,
> > +						 plane_data_rate);
> > +
> > +	skl_ddb_get_pipe_allocation_limits(dev_priv, crtc_state,
> > +					   total_data_rate,
> > +					   alloc, &num_active);
> > +	alloc_size =3D skl_ddb_entry_size(alloc);
> =

> Don't we already have this in the crtc state?
> =

> > +	if (alloc_size =3D=3D 0)
> > +		return false;
> =

> I don't think that can happen.
> =

> > +
> > +	/*
> > +	 * Do check if we can fit L0 + sagv_block_time and
> > +	 * disable SAGV if we can't.
> > +	 */
> > +	blocks =3D 0;
> > +	for_each_plane_id_on_crtc(intel_crtc, plane_id) {
> > +		/*
> > +		 * The only place, where we can't use skl_plane_wm_level
> > +		 * accessor, because if actually calls intel_can_enable_sagv
> > +		 * which depends on that function.
> > +		 */
> > +		const struct skl_plane_wm *wm =3D
> > +			&crtc_state->wm.skl.optimal.planes[plane_id];
> > +
> > +		blocks +=3D wm->sagv_wm0.min_ddb_alloc;
> > +		blocks +=3D wm->uv_sagv_wm0.min_ddb_alloc;
> > +
> > +		if (blocks > alloc_size) {
> > +			DRM_DEBUG_KMS("Not enough ddb blocks(%d<%d) for SAGV on pipe %c\n",
> > +				      alloc_size, blocks, pipe_name(intel_crtc->pipe));
> > +			return false;
> > +		}
> > +	}
> > +	DRM_DEBUG_KMS("%d total blocks required for SAGV, ddb entry size %d\n=
",
> > +		      blocks, alloc_size);
> > +	return true;
> > +}
> > +
> >  static int
> >  skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state)
> >  {
> > @@ -5140,11 +5334,19 @@ static void skl_compute_plane_wm(const struct i=
ntel_crtc_state *crtc_state,
> >  static void
> >  skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
> >  		      const struct skl_wm_params *wm_params,
> > -		      struct skl_wm_level *levels)
> > +		      struct skl_plane_wm *plane_wm,
> > +		      bool yuv)
> >  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->=
dev);
> >  	int level, max_level =3D ilk_wm_max_level(dev_priv);
> > +	/*
> > +	 * Check which kind of plane is it and based on that calculate
> > +	 * correspondent WM levels.
> > +	 */
> > +	struct skl_wm_level *levels =3D yuv ? plane_wm->uv_wm : plane_wm->wm;
> >  	struct skl_wm_level *result_prev =3D &levels[0];
> > +	struct skl_wm_level *sagv_wm =3D yuv ?
> > +				&plane_wm->uv_sagv_wm0 : &plane_wm->sagv_wm0;
> >  =

> >  	for (level =3D 0; level <=3D max_level; level++) {
> >  		struct skl_wm_level *result =3D &levels[level];
> > @@ -5155,6 +5357,27 @@ skl_compute_wm_levels(const struct intel_crtc_st=
ate *crtc_state,
> >  =

> >  		result_prev =3D result;
> >  	}
> > +	/*
> > +	 * For Gen12 if it is an L0 we need to also
> > +	 * consider sagv_block_time when calculating
> > +	 * L0 watermark - we will need that when making
> > +	 * a decision whether enable SAGV or not.
> > +	 * For older gens we agreed to copy L0 value for
> > +	 * compatibility.
> > +	 */
> > +	if ((INTEL_GEN(dev_priv) >=3D 12)) {
> > +		u32 latency =3D dev_priv->wm.skl_latency[0];
> > +
> > +		latency +=3D dev_priv->sagv_block_time_us;
> > +		skl_compute_plane_wm(crtc_state, 0, latency,
> > +				     wm_params, &levels[0],
> > +				     sagv_wm);
> > +		DRM_DEBUG_KMS("%d L0 blocks required for SAGV vs %d for non-SAGV\n",
> > +			      sagv_wm->min_ddb_alloc, levels[0].min_ddb_alloc);
> > +	} else {
> > +		/* Since all members are POD */
> > +		*sagv_wm =3D levels[0];
> > +	}
> =

> I was thinking more along the lines of
> =

>   skl_compute_wm_levels();
>   skl_compute_transition_wm();
> + skl_compute_sagv_wm();
> =

> =

> >  }
> >  =

> >  static void skl_compute_transition_wm(const struct intel_crtc_state *c=
rtc_state,
> > @@ -5237,7 +5460,7 @@ static int skl_build_plane_wm_single(struct intel=
_crtc_state *crtc_state,
> >  	if (ret)
> >  		return ret;
> >  =

> > -	skl_compute_wm_levels(crtc_state, &wm_params, wm->wm);
> > +	skl_compute_wm_levels(crtc_state, &wm_params, wm, false);
> >  	skl_compute_transition_wm(crtc_state, &wm_params, wm);
> >  =

> >  	return 0;
> > @@ -5259,7 +5482,7 @@ static int skl_build_plane_wm_uv(struct intel_crt=
c_state *crtc_state,
> >  	if (ret)
> >  		return ret;
> >  =

> > -	skl_compute_wm_levels(crtc_state, &wm_params, wm->uv_wm);
> > +	skl_compute_wm_levels(crtc_state, &wm_params, wm, true);
> >  =

> >  	return 0;
> >  }
> > @@ -5598,9 +5821,25 @@ skl_print_wm_changes(struct intel_atomic_state *=
state)
> >  		for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
> >  			enum plane_id plane_id =3D plane->id;
> >  			const struct skl_plane_wm *old_wm, *new_wm;
> > +			const struct skl_wm_level *old_wm_level, *new_wm_level;
> > +			u16 old_plane_res_l, new_plane_res_l;
> > +			u8  old_plane_res_b, new_plane_res_b;
> > +			u16 old_min_ddb_alloc, new_min_ddb_alloc;
> > +			int color_plane =3D 0;
> >  =

> >  			old_wm =3D &old_pipe_wm->planes[plane_id];
> >  			new_wm =3D &new_pipe_wm->planes[plane_id];
> > +			old_wm_level =3D skl_plane_wm_level(old_crtc_state, plane_id, 0, co=
lor_plane);
> > +			new_wm_level =3D skl_plane_wm_level(new_crtc_state, plane_id, 0, co=
lor_plane);
> > +
> > +			old_plane_res_l =3D old_wm_level->plane_res_l;
> > +			old_plane_res_b =3D old_wm_level->plane_res_b;
> > +
> > +			new_plane_res_l =3D new_wm_level->plane_res_l;
> > +			new_plane_res_b =3D new_wm_level->plane_res_b;
> > +
> > +			old_min_ddb_alloc =3D old_wm_level->min_ddb_alloc;
> > +			new_min_ddb_alloc =3D new_wm_level->min_ddb_alloc;
> >  =

> >  			if (skl_plane_wm_equals(dev_priv, old_wm, new_wm))
> >  				continue;
> > @@ -5624,7 +5863,7 @@ skl_print_wm_changes(struct intel_atomic_state *s=
tate)
> >  				    "[PLANE:%d:%s]   lines %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%=
3d,%c%3d,%c%3d"
> >  				      " -> %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d\n=
",
> >  				    plane->base.base.id, plane->base.name,
> > -				    enast(old_wm->wm[0].ignore_lines), old_wm->wm[0].plane_res_l,
> > +				    enast(old_wm->wm[0].ignore_lines), old_plane_res_l,
> >  				    enast(old_wm->wm[1].ignore_lines), old_wm->wm[1].plane_res_l,
> >  				    enast(old_wm->wm[2].ignore_lines), old_wm->wm[2].plane_res_l,
> >  				    enast(old_wm->wm[3].ignore_lines), old_wm->wm[3].plane_res_l,
> > @@ -5634,7 +5873,7 @@ skl_print_wm_changes(struct intel_atomic_state *s=
tate)
> >  				    enast(old_wm->wm[7].ignore_lines), old_wm->wm[7].plane_res_l,
> >  				    enast(old_wm->trans_wm.ignore_lines), old_wm->trans_wm.plane_r=
es_l,
> >  =

> > -				    enast(new_wm->wm[0].ignore_lines), new_wm->wm[0].plane_res_l,
> > +				    enast(new_wm->wm[0].ignore_lines), new_plane_res_l,
> >  				    enast(new_wm->wm[1].ignore_lines), new_wm->wm[1].plane_res_l,
> >  				    enast(new_wm->wm[2].ignore_lines), new_wm->wm[2].plane_res_l,
> >  				    enast(new_wm->wm[3].ignore_lines), new_wm->wm[3].plane_res_l,
> > @@ -5648,12 +5887,12 @@ skl_print_wm_changes(struct intel_atomic_state =
*state)
> >  				    "[PLANE:%d:%s]  blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
> >  				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
> >  				    plane->base.base.id, plane->base.name,
> > -				    old_wm->wm[0].plane_res_b, old_wm->wm[1].plane_res_b,
> > +				    old_plane_res_b, old_wm->wm[1].plane_res_b,
> >  				    old_wm->wm[2].plane_res_b, old_wm->wm[3].plane_res_b,
> >  				    old_wm->wm[4].plane_res_b, old_wm->wm[5].plane_res_b,
> >  				    old_wm->wm[6].plane_res_b, old_wm->wm[7].plane_res_b,
> >  				    old_wm->trans_wm.plane_res_b,
> > -				    new_wm->wm[0].plane_res_b, new_wm->wm[1].plane_res_b,
> > +				    new_plane_res_b, new_wm->wm[1].plane_res_b,
> >  				    new_wm->wm[2].plane_res_b, new_wm->wm[3].plane_res_b,
> >  				    new_wm->wm[4].plane_res_b, new_wm->wm[5].plane_res_b,
> >  				    new_wm->wm[6].plane_res_b, new_wm->wm[7].plane_res_b,
> > @@ -5663,12 +5902,12 @@ skl_print_wm_changes(struct intel_atomic_state =
*state)
> >  				    "[PLANE:%d:%s] min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
> >  				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
> >  				    plane->base.base.id, plane->base.name,
> > -				    old_wm->wm[0].min_ddb_alloc, old_wm->wm[1].min_ddb_alloc,
> > +				    old_min_ddb_alloc, old_wm->wm[1].min_ddb_alloc,
> >  				    old_wm->wm[2].min_ddb_alloc, old_wm->wm[3].min_ddb_alloc,
> >  				    old_wm->wm[4].min_ddb_alloc, old_wm->wm[5].min_ddb_alloc,
> >  				    old_wm->wm[6].min_ddb_alloc, old_wm->wm[7].min_ddb_alloc,
> >  				    old_wm->trans_wm.min_ddb_alloc,
> > -				    new_wm->wm[0].min_ddb_alloc, new_wm->wm[1].min_ddb_alloc,
> > +				    new_min_ddb_alloc, new_wm->wm[1].min_ddb_alloc,
> >  				    new_wm->wm[2].min_ddb_alloc, new_wm->wm[3].min_ddb_alloc,
> >  				    new_wm->wm[4].min_ddb_alloc, new_wm->wm[5].min_ddb_alloc,
> >  				    new_wm->wm[6].min_ddb_alloc, new_wm->wm[7].min_ddb_alloc,
> =

> Here too I think the sagv wm should be treated more or less like the
> transition wm (ie. just printed as an extra).
> =

> > @@ -5829,6 +6068,10 @@ skl_compute_wm(struct intel_atomic_state *state)
> >  			return ret;
> >  	}
> >  =

> > +	ret =3D intel_compute_sagv_mask(state);
> > +	if (ret)
> > +		return ret;
> =

> This seems too early. We haven't even computed the ddb yet.
> =

> > +
> >  	ret =3D skl_compute_ddb(state);
> >  	if (ret)
> >  		return ret;
> > @@ -5960,6 +6203,9 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *=
crtc,
> >  				val =3D I915_READ(CUR_WM(pipe, level));
> >  =

> >  			skl_wm_level_from_reg_val(val, &wm->wm[level]);
> > +			if (level =3D=3D 0)
> > +				memcpy(&wm->sagv_wm0, &wm->wm[level],
> > +				       sizeof(struct skl_wm_level));
> >  		}
> >  =

> >  		if (plane_id !=3D PLANE_CURSOR)
> > diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/int=
el_pm.h
> > index d60a85421c5a..65743a4cbcf6 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.h
> > +++ b/drivers/gpu/drm/i915/intel_pm.h
> > @@ -42,6 +42,7 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
> >  void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
> >  void vlv_wm_sanitize(struct drm_i915_private *dev_priv);
> >  bool intel_can_enable_sagv(struct intel_atomic_state *state);
> > +bool intel_has_sagv(struct drm_i915_private *dev_priv);
> >  int intel_enable_sagv(struct drm_i915_private *dev_priv);
> >  int intel_disable_sagv(struct drm_i915_private *dev_priv);
> >  bool skl_wm_level_equals(const struct skl_wm_level *l1,
> > -- =

> > 2.24.1.485.gad05a3d8e5
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
