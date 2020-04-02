Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A4719C7DF
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 19:23:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 562E56E13C;
	Thu,  2 Apr 2020 17:23:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0F1A6E13C
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 17:23:03 +0000 (UTC)
IronPort-SDR: 8F/WEmORxa7LABJprjMRVTlGgzuxj6QE17YEM7sy4yWf8NHux8ky39SiAklB5P7ao8hSVvN4uc
 ulj/UWaM63OQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 10:23:02 -0700
IronPort-SDR: 3Y4aLovPhmhmKbUclDAVEENoikIkABkvs0yRvV8ffDo6yKXbiB7v+ATSPxXr1BDjC1pCTrwGxx
 PHVUBlP18Whw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,336,1580803200"; d="scan'208";a="240883462"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 02 Apr 2020 10:22:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Apr 2020 20:22:59 +0300
Date: Thu, 2 Apr 2020 20:22:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200402172259.GD13686@intel.com>
References: <20200326181005.11775-7-stanislav.lisovskiy@intel.com>
 <20200326183959.22903-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326183959.22903-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v20 06/10] drm/i915: Add proper SAGV support
 for TGL+
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 26, 2020 at 08:39:59PM +0200, Stanislav Lisovskiy wrote:
> Let's refactor the whole SAGV logic, moving
> the main calculations from intel_can_enable_sagv
> to intel_compute_sagv_mask, which also handles
> this in a unified way calling gen specific
> functions to evaluate if SAGV is allowed for
> each crtc. If crtc sagv mask have been changed
> we serialize access and modify global state.
> =

> intel_can_enable_sagv now uses bw_state which
> stores all information related to SAGV and
> is now a trivial helper.
> =

> v2:
>     - Rework watermark calculation algorithm to
>       attempt to calculate Level 0 watermark
>       with added sagv block time latency and
>       check if it fits in DBuf in order to
>       determine if SAGV can be enabled already
>       at this stage, just as BSpec 49325 states.
>       if that fails rollback to usual Level 0
>       latency and disable SAGV.
>     - Remove unneeded tabs(James Ausmus)
> =

> v3: Rebased the patch
> =

> v4: - Added back interlaced check for Gen12 and
>       added separate function for TGL SAGV check
>       (thanks to James Ausmus for spotting)
>     - Removed unneeded gen check
>     - Extracted Gen12 SAGV decision making code
>       to a separate function from skl_compute_wm
> =

> v5: - Added SAGV global state to dev_priv, because
>       we need to track all pipes, not only those
>       in atomic state. Each pipe has now correspondent
>       bit mask reflecting, whether it can tolerate
>       SAGV or not(thanks to Ville Syrjala for suggestions).
>     - Now using active flag instead of enable in crc
>       usage check.
> =

> v6: - Fixed rebase conflicts
> =

> v7: - kms_cursor_legacy seems to get broken because of multiple memcpy
>       calls when copying level 0 water marks for enabled SAGV, to
>       fix this now simply using that field right away, without copying,
>       for that introduced a new wm_level accessor which decides which
>       wm_level to return based on SAGV state.
> =

> v8: - Protect crtc_sagv_mask same way as we do for other global state
>       changes: i.e check if changes are needed, then grab all crtc locks
>       to serialize the changes(Ville Syrj=E4l=E4)
>     - Add crtc_sagv_mask caching in order to avoid needless recalculations
>       (Matthew Roper)
>     - Put back Gen12 SAGV switch in order to get it enabled in separate
>       patch(Matthew Roper)
>     - Rename *_set_sagv_mask to *_compute_sagv_mask(Matthew Roper)
>     - Check if there are no active pipes in intel_can_enable_sagv
>       instead of platform specific functions(Matthew Roper), same
>       for intel_has_sagv check.
> =

> v9  - Switched to u8 for crtc_sagv_mask(Ville Syrj=E4l=E4)
>     - crtc_sagv_mask now is pipe_sagv_mask(Ville Syrj=E4l=E4)
>     - Extracted sagv checking logic from skl/icl/tgl_compute_sagv_mask
>     - Extracted skl_plane_wm_level function and passing latency to
>       separate patches(Ville Syrj=E4l=E4)
>     - Removed part of unneeded copy-paste from tgl_check_pipe_fits_sagv_wm
>       (Ville Syrj=E4l=E4)
>     - Now using simple assignment for sagv_wm0 as it contains only
>       pod types and no pointers(Ville Syrj=E4l=E4)
>     - Fixed intel_can_enable_sagv not to do double duty, now it only
>       check SAGV bits by ANDing those between local and global state.
>       The SAGV masks are now computed after watermarks are available,
>       in order to be able to figure out if ddb ranges are fitting nicely.
>       (Ville Syrj=E4l=E4)
>     - Now having uv_sagv_wm0 and sagv_wm0, otherwise we have wrong logic
>       when using skl_plane_wm_level accessor, as we had previously for
>       Gen11+ color plane and regular wm levels, so probably both
>       has to be recalculated with additional SAGV block time for Level 0.
> =

> v10: - Starting to use new global state for storing pipe_sagv_mask
> =

> v11: - Fixed rebase conflict with recent drm-tip
>      - Check if we really need to recalculate SAGV mask, otherwise
>        bail out without making any changes.
>      - Use cached SAGV result, instead of recalculating it everytime,
>        if bw_state hasn't changed.
> =

> v12: - Removed WARN from intel_can_enable_sagv, in some of the commits
>        if we don't recalculated watermarks, bw_state is not recalculated,
>        thus leading to SAGV state not recalculated by the commit state,
>        which is still calling intel_can_enable_sagv function. Fix that
>        by just analyzing the current global bw_state object - because
>        we simply have no other objects related to that.
> =

> v13: - Rebased, fixed warnings regarding long lines
>      - Changed function call sites from intel_atomic_bw* to
>        intel_wb_* as was suggested.(Jani Nikula)
>      - Taken ddb_state_changed and bw_state_changed into use.
> =

> v14: - total_affected_planes is no longer needed to check for ddb changes,
>        just as active_pipe_changes.
> =

> v15: - Fixed stupid mistake with uninitialized crtc in
>        skl_compute_sagv_mask.
> =

> v16: - Convert pipe_sagv_mask to pipe_sagv_reject and now using inverted
>        flag to indicate SAGV readiness for the pipe(Ville Syrj=E4l=E4)
>      - Added return value to intel_compute_sagv_mask which call
>        intel_atomic_serialize_global_state in order to properly
>        propagate EDEADLCK to drm.
>      - Based on the discussion with Ville, removed active_pipe_changes
>        check and also there seems to be no need for checking
>        ddb_state_changes as well.
>        Instead we just iterate through crtcs in state - having
>        crtc in a state already guarantees that it is at least read-locked
>        Having additional flag to check if there actually were some plane
>        wm/ddb changes would be probably added later as an optimization.
>      - We can't get parent atomic state from crtc_state at commit stage
>        (nice drm feature), also propagating state through function call
>        chain seems to be overkill and not possible(cursor legacy updates)
>        Querying for bw_state object from global state is not possible as
>        it might get swapped with other global state.
>        So... just sticked can_sagv boolean into wm crtc state.
> =

> v17: - Skip inactive crtcs, when checking for SAGV-readiness.
> =

> v18: - Switch to use intel_atomic_crtc_state_for_each_plane_state
>        instead of for_each_intel_plane_on_crtc and fixed previous
>        code, which was using old plane state, which caused NULL ptr
>        dereference, bacause that code is now called before we swap the
>        state.
> =

> v19: - Use intel_atomic_bw_* pattern again
>      - Optimized sagv checks in verify_wm_state(Ville Syrj=E4l=E4)
>      - Do intel_compute_sagv_mask after ddb is allocated(Ville Syrj=E4l=
=E4),
>        using it's results
>      - Use bw_state in intel_can_enable_sagv
>      - Use COLOR_PLANE enum instead of boolean yuv or "0", "1" magic
>      - Extracted sagv wm0 calculation into separate skl_compute_sagv_wm
>        function(Ville Syrj=E4l=E4)
> =

> v20: - Added check for NULL for bw_state in commit_tail
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@intel.com>
> Cc: James Ausmus <james.ausmus@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.h       |   6 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  30 ++-
>  .../drm/i915/display/intel_display_types.h    |   3 +
>  drivers/gpu/drm/i915/intel_pm.c               | 244 ++++++++++++++++--
>  drivers/gpu/drm/i915/intel_pm.h               |   4 +-
>  5 files changed, 256 insertions(+), 31 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i9=
15/display/intel_bw.h
> index fe6579c952f5..6ad3ea7cedfe 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -18,6 +18,12 @@ struct intel_crtc_state;
>  struct intel_bw_state {
>  	struct intel_global_state base;
>  =

> +	/*
> +	 * Contains a bit mask, used to determine, whether correspondent
> +	 * pipe allows SAGV or not.
> +	 */
> +	u8 pipe_sagv_reject;
> +
>  	unsigned int data_rate[I915_MAX_PIPES];
>  	u8 num_active_planes[I915_MAX_PIPES];
>  };
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index e630429af2c0..8a0d952c67bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14009,7 +14009,9 @@ static void verify_wm_state(struct intel_crtc *cr=
tc,
>  		/* Watermarks */
>  		for (level =3D 0; level <=3D max_level; level++) {
>  			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
> -						&sw_plane_wm->wm[level]))
> +						&sw_plane_wm->wm[level]) ||
> +			    (level =3D=3D 0 && skl_wm_level_equals(&hw_plane_wm->wm[level],
> +							       &sw_plane_wm->sagv_wm0)))
>  				continue;
>  =

>  			drm_err(&dev_priv->drm,
> @@ -14064,7 +14066,9 @@ static void verify_wm_state(struct intel_crtc *cr=
tc,
>  		/* Watermarks */
>  		for (level =3D 0; level <=3D max_level; level++) {
>  			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
> -						&sw_plane_wm->wm[level]))
> +						&sw_plane_wm->wm[level]) ||
> +			    (level =3D=3D 0 && skl_wm_level_equals(&hw_plane_wm->wm[level],
> +							       &sw_plane_wm->sagv_wm0)))
>  				continue;
>  =

>  			drm_err(&dev_priv->drm,
> @@ -15535,6 +15539,10 @@ static void intel_atomic_commit_tail(struct inte=
l_atomic_state *state)
>  		crtc->config =3D new_crtc_state;
>  =

>  	if (state->modeset) {
> +		struct intel_bw_state *bw_state;
> +		bw_state =3D intel_atomic_get_bw_new_state(state);

Needlessly wide scope. Can declare+init at the same time. Also const.

> +
>  		drm_atomic_helper_update_legacy_modeset_state(dev, &state->base);
>  =

>  		intel_set_cdclk_pre_plane_update(state);
> @@ -15543,8 +15551,10 @@ static void intel_atomic_commit_tail(struct inte=
l_atomic_state *state)
>  		 * SKL workaround: bspec recommends we disable the SAGV when we
>  		 * have more then one pipe enabled
>  		 */
> -		if (!intel_can_enable_sagv(state))
> -			intel_disable_sagv(dev_priv);
> +		if (INTEL_GEN(dev_priv) < 11) {
> +			if (bw_state && !intel_can_enable_sagv(bw_state))
> +				intel_disable_sagv(dev_priv);
> +		}
>  =

>  		intel_modeset_verify_disabled(dev_priv, state);
>  	}
> @@ -15644,8 +15654,15 @@ static void intel_atomic_commit_tail(struct inte=
l_atomic_state *state)
>  	if (state->modeset)
>  		intel_verify_planes(state);
>  =

> -	if (state->modeset && intel_can_enable_sagv(state))
> -		intel_enable_sagv(dev_priv);
> +	if (INTEL_GEN(dev_priv) < 11) {
> +		struct intel_bw_state *bw_state;
> +
> +		bw_state =3D intel_atomic_get_bw_new_state(state);
> +
> +		if (bw_state && state->modeset && intel_can_enable_sagv(bw_state)) {
> +			intel_enable_sagv(dev_priv);
> +		}

Pointless {}

The different strcuture of the nested ifs also irks me a bit. But meh
for now I guess.

> +	}
>  =

>  	drm_atomic_helper_commit_hw_done(&state->base);
>  =

> @@ -15797,7 +15814,6 @@ static int intel_atomic_commit(struct drm_device =
*dev,
>  =

>  	if (state->global_state_changed) {
>  		assert_global_state_locked(dev_priv);
> -

Spurious change

>  		dev_priv->active_pipes =3D state->active_pipes;
>  	}
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 523e0444b373..51fa5a746a5f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -679,6 +679,8 @@ struct skl_plane_wm {
>  	struct skl_wm_level wm[8];
>  	struct skl_wm_level uv_wm[8];
>  	struct skl_wm_level trans_wm;
> +	struct skl_wm_level sagv_wm0;
> +	struct skl_wm_level uv_sagv_wm0;
>  	bool is_planar;
>  };
>  =

> @@ -689,6 +691,7 @@ enum color_plane {
>  =

>  struct skl_pipe_wm {
>  	struct skl_plane_wm planes[I915_MAX_PLANES];
> +	bool can_sagv;
>  };
>  =

>  enum vlv_wm_level {
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 64193b098175..63c46918d1ed 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -43,6 +43,7 @@
>  #include "i915_fixed.h"
>  #include "i915_irq.h"
>  #include "i915_trace.h"
> +#include "display/intel_bw.h"
>  #include "intel_pm.h"
>  #include "intel_sideband.h"
>  #include "../../../platform/x86/intel_ips.h"
> @@ -3634,7 +3635,7 @@ static bool skl_needs_memory_bw_wa(struct drm_i915_=
private *dev_priv)
>  	return IS_GEN9_BC(dev_priv) || IS_BROXTON(dev_priv);
>  }
>  =

> -static bool
> +bool
>  intel_has_sagv(struct drm_i915_private *dev_priv)
>  {
>  	/* HACK! */
> @@ -3827,33 +3828,106 @@ static bool skl_can_enable_sagv_on_pipe(struct i=
ntel_crtc_state *crtc_state)
>  	return icl_can_enable_sagv_on_pipe(crtc_state);
>  }
>  =

> -bool intel_can_enable_sagv(struct intel_atomic_state *state)
> +static bool
> +tgl_can_enable_sagv_on_pipe(struct intel_crtc_state *crtc_state);
> +
> +bool intel_can_enable_sagv(struct intel_bw_state *bw_state)
> +{
> +	return bw_state->pipe_sagv_reject =3D=3D 0;
> +}
> +
> +static int intel_compute_sagv_mask(struct intel_atomic_state *state)
>  {
> +	int ret;
>  	struct drm_device *dev =3D state->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	struct intel_crtc *crtc;
> -	struct intel_crtc_state *crtc_state;
> +	struct intel_crtc_state *new_crtc_state;
> +	struct intel_bw_state *new_bw_state =3D NULL;
> +	struct intel_bw_state *old_bw_state =3D NULL;
>  	int i;
> +	bool can_sagv;
>  =

> +	/*
> +	 * If SAGV is not supported we just can't do anything
> +	 * not even set or reject SAGV points - just bail out.
> +	 * Thus avoid needless calculations.
> +	 */

Seems overly verbose. I'd just drop the entire comment.
Rule of thumb: never add comments, unless absolutely necessary.

>  	if (!intel_has_sagv(dev_priv))
> -		return false;
> +		return 0;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc,
> +					 new_crtc_state, i) {
> +		bool pipe_sagv_enable;
> +
> +		new_bw_state =3D intel_atomic_get_bw_state(state);
> +		if (IS_ERR(new_bw_state)) {
> +			WARN(1, "Could not get bw_state\n");

What's with the warn?

> +			return PTR_ERR(new_bw_state);
> +		}
> +
> +		old_bw_state =3D intel_atomic_get_bw_old_state(state);
> +
> +		if (!new_crtc_state->hw.active)
> +			continue;

There's the missing active check!. Just move into the functions(s)
below.

> +
> +		if (INTEL_GEN(dev_priv) >=3D 12) {
> +			pipe_sagv_enable =3D tgl_can_enable_sagv_on_pipe(new_crtc_state);
> +		} else if (INTEL_GEN(dev_priv) >=3D 11) {
> +			pipe_sagv_enable =3D icl_can_enable_sagv_on_pipe(new_crtc_state);
> +		} else {
> +			pipe_sagv_enable =3D skl_can_enable_sagv_on_pipe(new_crtc_state);
> +		}

I would put that if ladder into a separate function to reduce the noise
here. At which point we don't even need this 'pipe_sagv_enable' bool
anymore and the code will read better.

> +
> +		if (pipe_sagv_enable)
> +			new_bw_state->pipe_sagv_reject &=3D ~BIT(crtc->pipe);
> +		else
> +			new_bw_state->pipe_sagv_reject |=3D BIT(crtc->pipe);
> +	}
> +
> +	if (!new_bw_state || !old_bw_state)
> +		return 0;
> +
> +	can_sagv =3D new_bw_state->pipe_sagv_reject =3D=3D 0;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc,
> +					 new_crtc_state, i) {
> +		struct skl_pipe_wm *pipe_wm =3D &new_crtc_state->wm.skl.optimal;
> +
> +		/*
> +		 * Due to drm limitation at commit state, when
> +		 * changes are written the whole atomic state is
> +		 * zeroed away =3D> which prevents from using it,
> +		 * so just sticking it into pipe wm state for
> +		 * keeping it simple - anyway this is related to wm.
> +		 * Proper way in ideal universe would be of course not
> +		 * to lose parent atomic state object from child crtc_state,
> +		 * and stick to OOP programming principles, which had been
> +		 * scientifically proven to work.
> +		 */
> +		pipe_wm->can_sagv =3D can_sagv;
> +	}
>  =

>  	/*
> -	 * If there are no active CRTCs, no additional checks need be performed
> +	 * For SAGV we need to account all the pipes,
> +	 * not only the ones which are in state currently.
> +	 * Grab all locks if we detect that we are actually
> +	 * going to do something.
>  	 */

More overly verbose comments. IMO just nuke.

> -	if (hweight8(state->active_pipes) =3D=3D 0)
> -		return true;
> +	if (new_bw_state->pipe_sagv_reject !=3D old_bw_state->pipe_sagv_reject)=
 {
> +		DRM_DEBUG_KMS("State %p: old sagv mask 0x%x, new sagv mask 0x%x\n",
> +			      state,
> +			      old_bw_state->pipe_sagv_reject,
> +			      new_bw_state->pipe_sagv_reject);

Very temporary looking debug.

>  =

> -	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> -		if (INTEL_GEN(dev_priv) <=3D 9) {
> -			if (!skl_can_enable_sagv_on_pipe(crtc_state))
> -				return false;
> -		} else if (!icl_can_enable_sagv_on_pipe(crtc_state)) {
> -			return false;
> +		ret =3D intel_atomic_serialize_global_state(&new_bw_state->base);
> +		if (ret) {
> +			DRM_DEBUG_KMS("Could not serialize global state\n");

No debugs for these pls.

> +			return ret;
>  		}
>  	}
>  =

> -	return true;
> +	return 0;
>  }
>  =

>  /*
> @@ -4075,6 +4149,7 @@ skl_cursor_allocation(const struct intel_crtc_state=
 *crtc_state,
>  		unsigned int latency =3D dev_priv->wm.skl_latency[level];
>  =

>  		skl_compute_plane_wm(crtc_state, level, latency, &wp, &wm, &wm);
> +

Spurious change.

>  		if (wm.min_ddb_alloc =3D=3D U16_MAX)
>  			break;
>  =

> @@ -4589,9 +4664,66 @@ skl_plane_wm_level(const struct intel_crtc_state *=
crtc_state,
>  	const struct skl_plane_wm *wm =3D
>  		&crtc_state->wm.skl.optimal.planes[plane_id];
>  =

> +	if (!level) {
> +		const struct skl_pipe_wm *pipe_wm =3D &crtc_state->wm.skl.optimal;

Why is this here instead of higher up?

> +
> +		if (pipe_wm->can_sagv)
> +			return color_plane =3D=3D COLOR_PLANE_Y ? &wm->sagv_wm0 : &wm->uv_sag=
v_wm0;
> +	}
> +
>  	return color_plane =3D=3D COLOR_PLANE_Y ? &wm->wm[level] : &wm->uv_wm[l=
evel];
>  }
>  =

> +static bool
> +tgl_can_enable_sagv_on_pipe(struct intel_crtc_state *crtc_state)
const

> +{
> +	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc_state->uapi.crtc);

'crtc'

> +	enum plane_id plane_id;
> +
> +	/*
> +	 * If pipe is not active it can't affect SAGV rejection
> +	 * Checking it here is needed to leave only cases when
> +	 * alloc_size is 0 for any other reasons, except inactive
> +	 * pipe. As inactive pipe is fine, however having no ddb
> +	 * space available is already problematic - so need to
> +	 * to separate those.
> +	 */
> +	if (!crtc_state->hw.active)
> +		return true;
> +
> +	/*
> +	 * skl_allocate_pipe_ddb already done it's job to allocate
> +	 * as much blocks as possible for each plane - let's now
> +	 * evaluate if those were enough to enable SAGV.
> +	 * Criteria is that we need to have wm0 + sagv_block_time blocks
> +	 * for level 0 for each plane.
> +	 */

The comment-to-code ratio seems way too high to me.

> +	for_each_plane_id_on_crtc(intel_crtc, plane_id) {
> +		struct skl_ddb_entry *plane_alloc =3D
> +			&crtc_state->wm.skl.plane_ddb_y[plane_id];
> +		struct skl_ddb_entry *uv_plane_alloc =3D
> +			&crtc_state->wm.skl.plane_ddb_uv[plane_id];

consts missing

> +		const struct skl_plane_wm *wm =3D
> +			&crtc_state->wm.skl.optimal.planes[plane_id];
> +
> +		if (skl_ddb_entry_size(plane_alloc) < wm->sagv_wm0.min_ddb_alloc) {
> +			DRM_DEBUG_KMS("Not enough ddb blocks(%d-%d) for SAGV plane %d pipe %c=
\n",
> +				      plane_alloc->start, plane_alloc->end, plane_id,
> +				      pipe_name(intel_crtc->pipe));

Are we going to drown in debug noise?

> +			return false;
> +		}
> +
> +		if (skl_ddb_entry_size(uv_plane_alloc) < wm->uv_sagv_wm0.min_ddb_alloc=
) {
> +			DRM_DEBUG_KMS("Not enough ddb blocks(%d-%d) for SAGV uv plane %d pipe=
 %c\n",
> +				      plane_alloc->start, plane_alloc->end, plane_id,
> +				      pipe_name(intel_crtc->pipe));
> +			return false;
> +		}

uv_wm isn't a thing on icl+.

> +	}
> +
> +	return true;
> +}
> +
>  static int
>  skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state)
>  {
> @@ -5173,10 +5305,17 @@ static void skl_compute_plane_wm(const struct int=
el_crtc_state *crtc_state,
>  static void
>  skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
>  		      const struct skl_wm_params *wm_params,
> -		      struct skl_wm_level *levels)
> +		      struct skl_plane_wm *plane_wm,
> +		      enum color_plane color_plane)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
>  	int level, max_level =3D ilk_wm_max_level(dev_priv);
> +	/*
> +	 * Check which kind of plane is it and based on that calculate
> +	 * correspondent WM levels.
> +	 */
> +	struct skl_wm_level *levels =3D color_plane =3D=3D COLOR_PLANE_UV ?
> +				      plane_wm->uv_wm : plane_wm->wm;
>  	struct skl_wm_level *result_prev =3D &levels[0];

Why are we chancing this function? I see no reason for it.

>  =

>  	for (level =3D 0; level <=3D max_level; level++) {
> @@ -5190,6 +5329,40 @@ skl_compute_wm_levels(const struct intel_crtc_stat=
e *crtc_state,
>  	}
>  }
>  =

> +static void skl_compute_sagv_wm(const struct intel_crtc_state *crtc_stat=
e,
> +				const struct skl_wm_params *wm_params,
> +				struct skl_plane_wm *plane_wm,
> +				enum color_plane color_plane)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> +	struct skl_wm_level *sagv_wm =3D color_plane =3D=3D COLOR_PLANE_UV ?
> +				&plane_wm->uv_sagv_wm0 : &plane_wm->sagv_wm0;
> +	struct skl_wm_level *levels =3D color_plane =3D=3D COLOR_PLANE_UV ?
> +				plane_wm->uv_wm : plane_wm->wm;

Seems wrong here too. uv_wm isn't a thing on icl+.

> +
> +	/*
> +	 * For Gen12 if it is an L0 we need to also
> +	 * consider sagv_block_time when calculating
> +	 * L0 watermark - we will need that when making
> +	 * a decision whether enable SAGV or not.
> +	 * For older gens we agreed to copy L0 value for
> +	 * compatibility.
> +	 */
> +	if ((INTEL_GEN(dev_priv) >=3D 12)) {
> +		u32 latency =3D dev_priv->wm.skl_latency[0];
> +
> +		latency +=3D dev_priv->sagv_block_time_us;
> +		skl_compute_plane_wm(crtc_state, 0, latency,
> +				     wm_params, &levels[0],
> +				     sagv_wm);
> +		DRM_DEBUG_KMS("%d L0 blocks required for SAGV vs %d for non-SAGV\n",
> +			      sagv_wm->min_ddb_alloc, levels[0].min_ddb_alloc);
> +	} else {
> +		/* Since all members are POD */
> +		*sagv_wm =3D levels[0];
> +	}
> +}
> +
>  static void skl_compute_transition_wm(const struct intel_crtc_state *crt=
c_state,
>  				      const struct skl_wm_params *wp,
>  				      struct skl_plane_wm *wm)
> @@ -5270,7 +5443,8 @@ static int skl_build_plane_wm_single(struct intel_c=
rtc_state *crtc_state,
>  	if (ret)
>  		return ret;
>  =

> -	skl_compute_wm_levels(crtc_state, &wm_params, wm->wm);
> +	skl_compute_wm_levels(crtc_state, &wm_params, wm, COLOR_PLANE_Y);
> +	skl_compute_sagv_wm(crtc_state, &wm_params, wm, COLOR_PLANE_Y);
>  	skl_compute_transition_wm(crtc_state, &wm_params, wm);
>  =

>  	return 0;
> @@ -5292,7 +5466,8 @@ static int skl_build_plane_wm_uv(struct intel_crtc_=
state *crtc_state,
>  	if (ret)
>  		return ret;
>  =

> -	skl_compute_wm_levels(crtc_state, &wm_params, wm->uv_wm);
> +	skl_compute_wm_levels(crtc_state, &wm_params, wm, COLOR_PLANE_UV);
> +	skl_compute_sagv_wm(crtc_state, &wm_params, wm, COLOR_PLANE_UV);
>  =

>  	return 0;
>  }
> @@ -5631,9 +5806,25 @@ skl_print_wm_changes(struct intel_atomic_state *st=
ate)
>  		for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
>  			enum plane_id plane_id =3D plane->id;
>  			const struct skl_plane_wm *old_wm, *new_wm;
> +			const struct skl_wm_level *old_wm_level, *new_wm_level;
> +			u16 old_plane_res_l, new_plane_res_l;
> +			u8  old_plane_res_b, new_plane_res_b;
> +			u16 old_min_ddb_alloc, new_min_ddb_alloc;
> +			int color_plane =3D 0;
>  =

>  			old_wm =3D &old_pipe_wm->planes[plane_id];
>  			new_wm =3D &new_pipe_wm->planes[plane_id];
> +			old_wm_level =3D skl_plane_wm_level(old_crtc_state, plane_id, 0, colo=
r_plane);
> +			new_wm_level =3D skl_plane_wm_level(new_crtc_state, plane_id, 0, colo=
r_plane);
> +
> +			old_plane_res_l =3D old_wm_level->plane_res_l;
> +			old_plane_res_b =3D old_wm_level->plane_res_b;
> +
> +			new_plane_res_l =3D new_wm_level->plane_res_l;
> +			new_plane_res_b =3D new_wm_level->plane_res_b;
> +
> +			old_min_ddb_alloc =3D old_wm_level->min_ddb_alloc;
> +			new_min_ddb_alloc =3D new_wm_level->min_ddb_alloc;
>  =

>  			if (skl_plane_wm_equals(dev_priv, old_wm, new_wm))
>  				continue;
> @@ -5657,7 +5848,7 @@ skl_print_wm_changes(struct intel_atomic_state *sta=
te)
>  				    "[PLANE:%d:%s]   lines %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d=
,%c%3d,%c%3d"
>  				      " -> %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d\n",
>  				    plane->base.base.id, plane->base.name,
> -				    enast(old_wm->wm[0].ignore_lines), old_wm->wm[0].plane_res_l,
> +				    enast(old_wm->wm[0].ignore_lines), old_plane_res_l,
>  				    enast(old_wm->wm[1].ignore_lines), old_wm->wm[1].plane_res_l,
>  				    enast(old_wm->wm[2].ignore_lines), old_wm->wm[2].plane_res_l,
>  				    enast(old_wm->wm[3].ignore_lines), old_wm->wm[3].plane_res_l,
> @@ -5667,7 +5858,7 @@ skl_print_wm_changes(struct intel_atomic_state *sta=
te)
>  				    enast(old_wm->wm[7].ignore_lines), old_wm->wm[7].plane_res_l,
>  				    enast(old_wm->trans_wm.ignore_lines), old_wm->trans_wm.plane_res=
_l,
>  =

> -				    enast(new_wm->wm[0].ignore_lines), new_wm->wm[0].plane_res_l,
> +				    enast(new_wm->wm[0].ignore_lines), new_plane_res_l,
>  				    enast(new_wm->wm[1].ignore_lines), new_wm->wm[1].plane_res_l,
>  				    enast(new_wm->wm[2].ignore_lines), new_wm->wm[2].plane_res_l,
>  				    enast(new_wm->wm[3].ignore_lines), new_wm->wm[3].plane_res_l,
> @@ -5681,12 +5872,12 @@ skl_print_wm_changes(struct intel_atomic_state *s=
tate)
>  				    "[PLANE:%d:%s]  blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
>  				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
>  				    plane->base.base.id, plane->base.name,
> -				    old_wm->wm[0].plane_res_b, old_wm->wm[1].plane_res_b,
> +				    old_plane_res_b, old_wm->wm[1].plane_res_b,
>  				    old_wm->wm[2].plane_res_b, old_wm->wm[3].plane_res_b,
>  				    old_wm->wm[4].plane_res_b, old_wm->wm[5].plane_res_b,
>  				    old_wm->wm[6].plane_res_b, old_wm->wm[7].plane_res_b,
>  				    old_wm->trans_wm.plane_res_b,
> -				    new_wm->wm[0].plane_res_b, new_wm->wm[1].plane_res_b,
> +				    new_plane_res_b, new_wm->wm[1].plane_res_b,
>  				    new_wm->wm[2].plane_res_b, new_wm->wm[3].plane_res_b,
>  				    new_wm->wm[4].plane_res_b, new_wm->wm[5].plane_res_b,
>  				    new_wm->wm[6].plane_res_b, new_wm->wm[7].plane_res_b,
> @@ -5696,12 +5887,12 @@ skl_print_wm_changes(struct intel_atomic_state *s=
tate)
>  				    "[PLANE:%d:%s] min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
>  				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
>  				    plane->base.base.id, plane->base.name,
> -				    old_wm->wm[0].min_ddb_alloc, old_wm->wm[1].min_ddb_alloc,
> +				    old_min_ddb_alloc, old_wm->wm[1].min_ddb_alloc,
>  				    old_wm->wm[2].min_ddb_alloc, old_wm->wm[3].min_ddb_alloc,
>  				    old_wm->wm[4].min_ddb_alloc, old_wm->wm[5].min_ddb_alloc,
>  				    old_wm->wm[6].min_ddb_alloc, old_wm->wm[7].min_ddb_alloc,
>  				    old_wm->trans_wm.min_ddb_alloc,
> -				    new_wm->wm[0].min_ddb_alloc, new_wm->wm[1].min_ddb_alloc,
> +				    new_min_ddb_alloc, new_wm->wm[1].min_ddb_alloc,
>  				    new_wm->wm[2].min_ddb_alloc, new_wm->wm[3].min_ddb_alloc,
>  				    new_wm->wm[4].min_ddb_alloc, new_wm->wm[5].min_ddb_alloc,
>  				    new_wm->wm[6].min_ddb_alloc, new_wm->wm[7].min_ddb_alloc,

I think I mentioned it before already, but I think we may want to just
dump the sagv wm0 as its own thing here.

> @@ -5866,6 +6057,10 @@ skl_compute_wm(struct intel_atomic_state *state)
>  	if (ret)
>  		return ret;
>  =

> +	ret =3D intel_compute_sagv_mask(state);
> +	if (ret)
> +		return ret;
> +
>  	/*
>  	 * skl_compute_ddb() will have adjusted the final watermarks
>  	 * based on how much ddb is available. Now we can actually
> @@ -5993,6 +6188,9 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *cr=
tc,
>  				val =3D I915_READ(CUR_WM(pipe, level));
>  =

>  			skl_wm_level_from_reg_val(val, &wm->wm[level]);
> +			if (level =3D=3D 0)
> +				memcpy(&wm->sagv_wm0, &wm->wm[level],
> +				       sizeof(struct skl_wm_level));

A bit pointless to do that inside the loop.

>  		}
>  =

>  		if (plane_id !=3D PLANE_CURSOR)
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index d60a85421c5a..5fb32db4abc5 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -9,6 +9,7 @@
>  #include <linux/types.h>
>  =

>  #include "i915_reg.h"
> +#include "display/intel_bw.h"
>  =

>  struct drm_device;
>  struct drm_i915_private;
> @@ -41,7 +42,8 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
>  			      struct skl_pipe_wm *out);
>  void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
>  void vlv_wm_sanitize(struct drm_i915_private *dev_priv);
> -bool intel_can_enable_sagv(struct intel_atomic_state *state);
> +bool intel_has_sagv(struct drm_i915_private *dev_priv);
> +bool intel_can_enable_sagv(struct intel_bw_state *bw_state);
>  int intel_enable_sagv(struct drm_i915_private *dev_priv);
>  int intel_disable_sagv(struct drm_i915_private *dev_priv);
>  bool skl_wm_level_equals(const struct skl_wm_level *l1,
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
