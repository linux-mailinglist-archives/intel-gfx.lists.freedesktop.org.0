Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF99A123323
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 18:04:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 478286E081;
	Tue, 17 Dec 2019 17:04:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 556076E081
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 17:04:36 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 09:04:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,326,1571727600"; d="scan'208";a="212439185"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 17 Dec 2019 09:04:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Dec 2019 19:04:32 +0200
Date: Tue, 17 Dec 2019 19:04:32 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20191217170432.GF1208@intel.com>
References: <20191213141231.7330-1-stanislav.lisovskiy@intel.com>
 <20191213141231.7330-2-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213141231.7330-2-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v12 1/3] drm/i915: Refactor
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

On Fri, Dec 13, 2019 at 04:12:29PM +0200, Stanislav Lisovskiy wrote:
> Currently intel_can_enable_sagv function contains
> a mix of workarounds for different platforms
> some of them are not valid for gens >=3D 11 already,
> so lets split it into separate functions.
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

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@intel.com>
> Cc: James Ausmus <james.ausmus@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  12 +-
>  .../drm/i915/display/intel_display_types.h    |   9 +
>  drivers/gpu/drm/i915/i915_drv.h               |   6 +
>  drivers/gpu/drm/i915/intel_pm.c               | 416 +++++++++++++++---
>  drivers/gpu/drm/i915/intel_pm.h               |   1 +
>  5 files changed, 393 insertions(+), 51 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 0f37f1d2026d..d58c70fbc08e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -13379,7 +13379,10 @@ static void verify_wm_state(struct intel_crtc *c=
rtc,
>  		/* Watermarks */
>  		for (level =3D 0; level <=3D max_level; level++) {
>  			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
> -						&sw_plane_wm->wm[level]))
> +						&sw_plane_wm->wm[level]) ||
> +			   (skl_wm_level_equals(&hw_plane_wm->wm[level],
> +						&sw_plane_wm->sagv_wm0) &&
> +			   (level =3D=3D 0)))
>  				continue;
>  =

>  			DRM_ERROR("mismatch in WM pipe %c plane %d level %d (expected e=3D%d =
b=3D%u l=3D%u, got e=3D%d b=3D%u l=3D%u)\n",
> @@ -13431,7 +13434,10 @@ static void verify_wm_state(struct intel_crtc *c=
rtc,
>  		/* Watermarks */
>  		for (level =3D 0; level <=3D max_level; level++) {
>  			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
> -						&sw_plane_wm->wm[level]))
> +						&sw_plane_wm->wm[level]) ||
> +			   (skl_wm_level_equals(&hw_plane_wm->wm[level],
> +						&sw_plane_wm->sagv_wm0) &&
> +			   (level =3D=3D 0)))
>  				continue;
>  =

>  			DRM_ERROR("mismatch in WM pipe %c cursor level %d (expected e=3D%d b=
=3D%u l=3D%u, got e=3D%d b=3D%u l=3D%u)\n",
> @@ -14808,6 +14814,8 @@ static void intel_atomic_commit_tail(struct intel=
_atomic_state *state)
>  			dev_priv->display.optimize_watermarks(state, crtc);
>  	}
>  =

> +	dev_priv->crtc_sagv_mask =3D state->crtc_sagv_mask;
> +
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_cr=
tc_state, i) {
>  		intel_post_plane_update(state, crtc);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 83ea04149b77..5301e1042b40 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -490,6 +490,14 @@ struct intel_atomic_state {
>  	 */
>  	u8 active_pipe_changes;
>  =

> +	/*
> +	 * Contains a mask which reflects whether correspondent pipe
> +	 * can tolerate SAGV or not, so that we can make a decision
> +	 * at atomic_commit_tail stage, whether we enable it or not
> +	 * based on global state in dev_priv.
> +	 */
> +	u32 crtc_sagv_mask;

Fits in u8, s/crtc/pipe/ so we don't get confused.

> +
>  	u8 active_pipes;
>  	/* minimum acceptable cdclk for each pipe */
>  	int min_cdclk[I915_MAX_PIPES];
> @@ -670,6 +678,7 @@ struct skl_plane_wm {
>  	struct skl_wm_level wm[8];
>  	struct skl_wm_level uv_wm[8];
>  	struct skl_wm_level trans_wm;
> +	struct skl_wm_level sagv_wm0;
>  	bool is_planar;
>  };
>  =

> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 0781b6326b8c..b877c42213c4 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1171,6 +1171,12 @@ struct drm_i915_private {
>  =

>  	u32 sagv_block_time_us;
>  =

> +	/*
> +	 * Contains a bit mask, whether correspondent
> +	 * pipe allows SAGV or not.
> +	 */
> +	u32 crtc_sagv_mask;

ditto.

> +
>  	struct {
>  		/*
>  		 * Raw watermark latency values:
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index ccbbdf4a6aab..d70c33df0bbf 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3647,7 +3647,7 @@ static bool skl_needs_memory_bw_wa(struct drm_i915_=
private *dev_priv)
>  	return IS_GEN9_BC(dev_priv) || IS_BROXTON(dev_priv);
>  }
>  =

> -static bool
> +bool
>  intel_has_sagv(struct drm_i915_private *dev_priv)
>  {
>  	/* HACK! */
> @@ -3770,7 +3770,7 @@ intel_disable_sagv(struct drm_i915_private *dev_pri=
v)
>  	return 0;
>  }
>  =

> -bool intel_can_enable_sagv(struct intel_atomic_state *state)
> +static void skl_compute_sagv_mask(struct intel_atomic_state *state)
>  {
>  	struct drm_device *dev =3D state->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> @@ -3780,29 +3780,15 @@ bool intel_can_enable_sagv(struct intel_atomic_st=
ate *state)
>  	enum pipe pipe;
>  	int level, latency;
>  =

> -	if (!intel_has_sagv(dev_priv))
> -		return false;
> -
> -	/*
> -	 * If there are no active CRTCs, no additional checks need be performed
> -	 */
> -	if (hweight8(state->active_pipes) =3D=3D 0)
> -		return true;
> -
> -	/*
> -	 * SKL+ workaround: bspec recommends we disable SAGV when we have
> -	 * more then one pipe enabled
> -	 */
> -	if (hweight8(state->active_pipes) > 1)
> -		return false;
> -
>  	/* Since we're now guaranteed to only have one active CRTC... */
>  	pipe =3D ffs(state->active_pipes) - 1;
>  	crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
>  	crtc_state =3D to_intel_crtc_state(crtc->base.state);
> +	state->crtc_sagv_mask &=3D ~BIT(crtc->pipe);
>  =

> -	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
> -		return false;
> +	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE) {
> +		return;
> +	}
>  =

>  	for_each_intel_plane_on_crtc(dev, crtc, plane) {
>  		struct skl_plane_wm *wm =3D
> @@ -3830,6 +3816,136 @@ bool intel_can_enable_sagv(struct intel_atomic_st=
ate *state)
>  		 * can't enable SAGV.
>  		 */
>  		if (latency < dev_priv->sagv_block_time_us)
> +			return;
> +	}
> +
> +	state->crtc_sagv_mask |=3D BIT(crtc->pipe);
> +}

Looks like we can keep this as a pure function and leave it up to the
caller to update the mask. Much easier on the brain to deal with pure
functions.

> +
> +static void tgl_compute_sagv_mask(struct intel_atomic_state *state);
> +
> +static void icl_compute_sagv_mask(struct intel_atomic_state *state)
> +{
> +	struct drm_device *dev =3D state->base.dev;
> +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct intel_crtc *crtc;
> +	struct intel_crtc_state *new_crtc_state;
> +	int level, latency;
> +	int i;
> +	int plane_id;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc,
> +					 new_crtc_state, i) {
> +		unsigned int flags =3D crtc->base.state->adjusted_mode.flags;
> +		bool can_sagv;
> +
> +		if (flags & DRM_MODE_FLAG_INTERLACE)
> +			continue;
> +
> +		if (!new_crtc_state->hw.active)
> +			continue;
> +
> +		can_sagv =3D true;
> +		for_each_plane_id_on_crtc(crtc, plane_id) {
> +			struct skl_plane_wm *wm =3D
> +				&new_crtc_state->wm.skl.optimal.planes[plane_id];
> +
> +			/* Skip this plane if it's not enabled */
> +			if (!wm->wm[0].plane_en)
> +				continue;
> +
> +			/* Find the highest enabled wm level for this plane */
> +			for (level =3D ilk_wm_max_level(dev_priv);
> +			     !wm->wm[level].plane_en; --level) {
> +			}
> +
> +			latency =3D dev_priv->wm.skl_latency[level];
> +
> +			/*
> +			 * If any of the planes on this pipe don't enable
> +			 * wm levels that incur memory latencies higher than
> +			 * sagv_block_time_us we can't enable SAGV.
> +			 */
> +			if (latency < dev_priv->sagv_block_time_us) {
> +				can_sagv =3D false;
> +				break;
> +			}

Hmm. What's the difference between this and the skl version?

> +		}
> +		if (can_sagv)
> +			state->crtc_sagv_mask |=3D BIT(crtc->pipe);
> +		else
> +			state->crtc_sagv_mask &=3D ~BIT(crtc->pipe);
> +	}
> +}
> +
> +bool intel_can_enable_sagv(struct intel_atomic_state *state)

This seems to do a double duty: compute the mask, and return whether we
can enable sagv. Those two things should be separate funtions IMO.

> +{
> +	struct drm_device *dev =3D state->base.dev;
> +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	int ret, i;
> +	struct intel_crtc *crtc;
> +	struct intel_crtc_state *new_crtc_state;
> +
> +	if (!intel_has_sagv(dev_priv))
> +		return false;
> +
> +	/*
> +	 * Check if we had already calculated the mask.
> +	 * if we had - then we already have global state,
> +	 * serialized and thus protected from changes from
> +	 * other commits and able to use cached version here.
> +	 */
> +	if (!state->crtc_sagv_mask) {
> +		/*
> +		 * If there are no active CRTCs, no additional
> +		 * checks need be performed
> +		 */
> +		if (hweight8(state->active_pipes) =3D=3D 0)
> +			return false;
> +
> +		/*
> +		 * Make sure we always pick global state first,
> +		 * there shouldn't be any issue as we hold only locks
> +		 * to correspondent crtcs in state, however once
> +		 * we detect that we need to change SAGV mask
> +		 * in global state, we will grab all the crtc locks
> +		 * in order to get this serialized, thus other
> +		 * racing commits having other crtc locks, will have
> +		 * to start over again, as stated by Wound-Wait
> +		 * algorithm.
> +		 */
> +		state->crtc_sagv_mask =3D dev_priv->crtc_sagv_mask;
> +
> +		if (INTEL_GEN(dev_priv) >=3D 12)
> +			tgl_compute_sagv_mask(state);
> +		else if (INTEL_GEN(dev_priv) =3D=3D 11)
> +			icl_compute_sagv_mask(state);
> +		else
> +			skl_compute_sagv_mask(state);
> +
> +		/*
> +		 * For SAGV we need to account all the pipes,
> +		 * not only the ones which are in state currently.
> +		 * Grab all locks if we detect that we are actually
> +		 * going to do something.
> +		 */
> +		if (state->crtc_sagv_mask !=3D dev_priv->crtc_sagv_mask) {
> +			ret =3D intel_atomic_serialize_global_state(state);
> +			if (ret) {
> +				DRM_DEBUG_KMS("Could not serialize global state\n");
> +				return false;
> +			}
> +		}
> +	}
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		u32 mask =3D BIT(crtc->pipe);
> +		bool state_sagv_masked =3D (mask & state->crtc_sagv_mask) =3D=3D 0;
> +
> +		if (!new_crtc_state->hw.active)
> +			continue;
> +
> +		if (state_sagv_masked)
>  			return false;
>  	}
>  =

> @@ -3955,6 +4071,7 @@ static int skl_compute_wm_params(const struct intel=
_crtc_state *crtc_state,
>  				 int color_plane);
>  static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_sta=
te,
>  				 int level,
> +				 u32 latency,

Passing in the latency could be split into a separate trivial patch.

>  				 const struct skl_wm_params *wp,
>  				 const struct skl_wm_level *result_prev,
>  				 struct skl_wm_level *result /* out */);
> @@ -3977,7 +4094,10 @@ skl_cursor_allocation(const struct intel_crtc_stat=
e *crtc_state,
>  	WARN_ON(ret);
>  =

>  	for (level =3D 0; level <=3D max_level; level++) {
> -		skl_compute_plane_wm(crtc_state, level, &wp, &wm, &wm);
> +		u32 latency =3D dev_priv->wm.skl_latency[level];
> +
> +		skl_compute_plane_wm(crtc_state, level, latency, &wp, &wm, &wm);
> +
>  		if (wm.min_ddb_alloc =3D=3D U16_MAX)
>  			break;
>  =

> @@ -4242,6 +4362,98 @@ icl_get_total_relative_data_rate(struct intel_crtc=
_state *crtc_state,
>  	return total_data_rate;
>  }
>  =

> +static int
> +tgl_check_pipe_fits_sagv_wm(struct intel_crtc_state *crtc_state,
> +			    struct skl_ddb_allocation *ddb /* out */)
> +{
> +	struct drm_crtc *crtc =3D crtc_state->uapi.crtc;
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
> +	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc);
> +	struct skl_ddb_entry *alloc =3D &crtc_state->wm.skl.ddb;
> +	u16 alloc_size;
> +	u16 total[I915_MAX_PLANES] =3D {};
> +	u64 total_data_rate;
> +	enum plane_id plane_id;
> +	int num_active;
> +	u64 plane_data_rate[I915_MAX_PLANES] =3D {};
> +	u32 blocks;
> +
> +	/*
> +	 * No need to check gen here, we call this only for gen12
> +	 */
> +	total_data_rate =3D
> +		icl_get_total_relative_data_rate(crtc_state,
> +						 plane_data_rate);
> +
> +	skl_ddb_get_pipe_allocation_limits(dev_priv, crtc_state,
> +					   total_data_rate,
> +					   ddb, alloc, &num_active);
> +	alloc_size =3D skl_ddb_entry_size(alloc);
> +	if (alloc_size =3D=3D 0)
> +		return -ENOSPC;
> +
> +	/* Allocate fixed number of blocks for cursor. */
> +	total[PLANE_CURSOR] =3D skl_cursor_allocation(crtc_state, num_active);
> +	alloc_size -=3D total[PLANE_CURSOR];
> +	crtc_state->wm.skl.plane_ddb_y[PLANE_CURSOR].start =3D
> +		alloc->end - total[PLANE_CURSOR];
> +	crtc_state->wm.skl.plane_ddb_y[PLANE_CURSOR].end =3D alloc->end;

Why are we recomputing the cursor ddb here?

> +
> +	/*
> +	 * Do check if we can fit L0 + sagv_block_time and
> +	 * disable SAGV if we can't.
> +	 */
> +	blocks =3D 0;
> +	for_each_plane_id_on_crtc(intel_crtc, plane_id) {
> +		const struct skl_plane_wm *wm =3D
> +			&crtc_state->wm.skl.optimal.planes[plane_id];
> +
> +		if (plane_id =3D=3D PLANE_CURSOR) {
> +			if (WARN_ON(wm->sagv_wm0.min_ddb_alloc >
> +				    total[PLANE_CURSOR])) {
> +				blocks =3D U32_MAX;
> +				break;
> +			}
> +			continue;
> +		}
> +
> +		blocks +=3D wm->sagv_wm0.min_ddb_alloc;
> +		if (blocks > alloc_size)
> +			return -ENOSPC;
> +	}

Looks like lots of copy paste. Please refactor if you think the
current code is useful for this.

But I don't really see why this is here. AFAICS we should just
include the sagv wm as part of current ddb allocation loop, iff we
have a chance of enabling sagv. And probably if we don't have enough
room for the sagv wms we should still try to allocate based on the
normal level 0 wm and mark sagv as no go.

Not quite sure what we should do with the cursor ddb since we don't
want to change that needlessly. I guess we could just have it compute
also the sagv wm and if that succeeds then bump the ddb allocation
if needed.

> +	return 0;
> +}
> +
> +static const struct skl_wm_level *
> +skl_plane_wm_level(struct intel_plane *plane,
> +		   const struct intel_crtc_state *crtc_state,
> +		   int level,
> +		   bool yuv)

s/bool yuv/int color_plane/ to match existing code.

> +{
> +	struct drm_atomic_state *state =3D crtc_state->uapi.state;
> +	enum plane_id plane_id =3D plane->id;
> +	const struct skl_plane_wm *wm =3D
> +		&crtc_state->wm.skl.optimal.planes[plane_id];
> +
> +	/*
> +	 * Looks ridicilous but need to check if state is not
> +	 * NULL here as it might be as some cursor plane manipulations
> +	 * seem to happen when no atomic state is actually present,
> +	 * despite crtc_state is allocated. Removing state check
> +	 * from here will result in kernel panic on boot.
> +	 * However we now need to check whether should be use SAGV
> +	 * wm levels here.
> +	 */

Should really find out what is happening instead of papering over it.

> +	if (state) {
> +		struct intel_atomic_state *intel_state =3D
> +			to_intel_atomic_state(state);
> +		if (intel_can_enable_sagv(intel_state) && !level)
> +			return &wm->sagv_wm0;
> +	}
> +
> +	return yuv ? &wm->uv_wm[level] : &wm->wm[level];
> +}
> +
>  static int
>  skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state,
>  		      struct skl_ddb_allocation *ddb /* out */)
> @@ -4256,6 +4468,9 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crtc=
_state,
>  	u16 uv_total[I915_MAX_PLANES] =3D {};
>  	u64 total_data_rate;
>  	enum plane_id plane_id;
> +	struct intel_plane *plane;
> +	const struct skl_wm_level *wm_level;
> +	const struct skl_wm_level *wm_uv_level;

Needlessly wide scope.

>  	int num_active;
>  	u64 plane_data_rate[I915_MAX_PLANES] =3D {};
>  	u64 uv_plane_data_rate[I915_MAX_PLANES] =3D {};
> @@ -4307,12 +4522,15 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *cr=
tc_state,
>  	 */
>  	for (level =3D ilk_wm_max_level(dev_priv); level >=3D 0; level--) {
>  		blocks =3D 0;
> -		for_each_plane_id_on_crtc(intel_crtc, plane_id) {
> -			const struct skl_plane_wm *wm =3D
> -				&crtc_state->wm.skl.optimal.planes[plane_id];
> +		for_each_intel_plane_on_crtc(&dev_priv->drm, intel_crtc, plane) {
> +			plane_id =3D plane->id;
> +			wm_level =3D skl_plane_wm_level(plane, crtc_state,
> +						      level, false);
> +			wm_uv_level =3D skl_plane_wm_level(plane, crtc_state,
> +							 level, true);
>  =

>  			if (plane_id =3D=3D PLANE_CURSOR) {
> -				if (WARN_ON(wm->wm[level].min_ddb_alloc >
> +				if (WARN_ON(wm_level->min_ddb_alloc >
>  					    total[PLANE_CURSOR])) {
>  					blocks =3D U32_MAX;
>  					break;
> @@ -4320,8 +4538,8 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crtc=
_state,
>  				continue;
>  			}
>  =

> -			blocks +=3D wm->wm[level].min_ddb_alloc;
> -			blocks +=3D wm->uv_wm[level].min_ddb_alloc;
> +			blocks +=3D wm_level->min_ddb_alloc;
> +			blocks +=3D wm_uv_level->min_ddb_alloc;
>  		}
>  =

>  		if (blocks <=3D alloc_size) {
> @@ -4342,12 +4560,16 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *cr=
tc_state,
>  	 * watermark level, plus an extra share of the leftover blocks
>  	 * proportional to its relative data rate.
>  	 */
> -	for_each_plane_id_on_crtc(intel_crtc, plane_id) {
> -		const struct skl_plane_wm *wm =3D
> -			&crtc_state->wm.skl.optimal.planes[plane_id];
> +	for_each_intel_plane_on_crtc(&dev_priv->drm, intel_crtc, plane) {
>  		u64 rate;
>  		u16 extra;
>  =

> +		plane_id =3D plane->id;

These s/plane_id/plane/ changes seem a bit pointless. Just churn with
no functional difference AFAICS.

> +		wm_level =3D skl_plane_wm_level(plane, crtc_state,
> +					      level, false);
> +		wm_uv_level =3D skl_plane_wm_level(plane, crtc_state,
> +						 level, true);

The introduction of skl_plane_wm_level() could be a separate patch.

> +
>  		if (plane_id =3D=3D PLANE_CURSOR)
>  			continue;
>  =

> @@ -4362,7 +4584,7 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crtc=
_state,
>  		extra =3D min_t(u16, alloc_size,
>  			      DIV64_U64_ROUND_UP(alloc_size * rate,
>  						 total_data_rate));
> -		total[plane_id] =3D wm->wm[level].min_ddb_alloc + extra;
> +		total[plane_id] =3D wm_level->min_ddb_alloc + extra;
>  		alloc_size -=3D extra;
>  		total_data_rate -=3D rate;
>  =

> @@ -4373,7 +4595,7 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crtc=
_state,
>  		extra =3D min_t(u16, alloc_size,
>  			      DIV64_U64_ROUND_UP(alloc_size * rate,
>  						 total_data_rate));
> -		uv_total[plane_id] =3D wm->uv_wm[level].min_ddb_alloc + extra;
> +		uv_total[plane_id] =3D wm_uv_level->min_ddb_alloc + extra;
>  		alloc_size -=3D extra;
>  		total_data_rate -=3D rate;
>  	}
> @@ -4414,9 +4636,14 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crt=
c_state,
>  	 * that aren't actually possible.
>  	 */
>  	for (level++; level <=3D ilk_wm_max_level(dev_priv); level++) {
> -		for_each_plane_id_on_crtc(intel_crtc, plane_id) {
> +		for_each_intel_plane_on_crtc(&dev_priv->drm, intel_crtc, plane) {
>  			struct skl_plane_wm *wm =3D
> -				&crtc_state->wm.skl.optimal.planes[plane_id];
> +				&crtc_state->wm.skl.optimal.planes[plane->id];
> +
> +			wm_level =3D skl_plane_wm_level(plane, crtc_state,
> +						      level, false);
> +			wm_uv_level =3D skl_plane_wm_level(plane, crtc_state,
> +							 level, true);
>  =

>  			/*
>  			 * We only disable the watermarks for each plane if
> @@ -4430,9 +4657,10 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crt=
c_state,
>  			 *  planes must be enabled before the level will be used."
>  			 * So this is actually safe to do.
>  			 */
> -			if (wm->wm[level].min_ddb_alloc > total[plane_id] ||
> -			    wm->uv_wm[level].min_ddb_alloc > uv_total[plane_id])
> -				memset(&wm->wm[level], 0, sizeof(wm->wm[level]));
> +			if (wm_level->min_ddb_alloc > total[plane->id] ||
> +			    wm_uv_level->min_ddb_alloc > uv_total[plane->id])
> +				memset(&wm->wm[level], 0,
> +				       sizeof(struct skl_wm_level));
>  =

>  			/*
>  			 * Wa_1408961008:icl, ehl
> @@ -4440,9 +4668,14 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crt=
c_state,
>  			 */
>  			if (IS_GEN(dev_priv, 11) &&
>  			    level =3D=3D 1 && wm->wm[0].plane_en) {
> -				wm->wm[level].plane_res_b =3D wm->wm[0].plane_res_b;
> -				wm->wm[level].plane_res_l =3D wm->wm[0].plane_res_l;
> -				wm->wm[level].ignore_lines =3D wm->wm[0].ignore_lines;
> +				wm_level =3D skl_plane_wm_level(plane, crtc_state,
> +							      0, false);
> +				wm->wm[level].plane_res_b =3D
> +					wm_level->plane_res_b;
> +				wm->wm[level].plane_res_l =3D
> +					wm_level->plane_res_l;
> +				wm->wm[level].ignore_lines =3D
> +					wm_level->ignore_lines;
>  			}
>  		}
>  	}
> @@ -4671,12 +4904,12 @@ static bool skl_wm_has_lines(struct drm_i915_priv=
ate *dev_priv, int level)
>  =

>  static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_sta=
te,
>  				 int level,
> +				 u32 latency,
>  				 const struct skl_wm_params *wp,
>  				 const struct skl_wm_level *result_prev,
>  				 struct skl_wm_level *result /* out */)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> -	u32 latency =3D dev_priv->wm.skl_latency[level];
>  	uint_fixed_16_16_t method1, method2;
>  	uint_fixed_16_16_t selected_result;
>  	u32 res_blocks, res_lines, min_ddb_alloc =3D 0;
> @@ -4797,20 +5030,46 @@ static void skl_compute_plane_wm(const struct int=
el_crtc_state *crtc_state,
>  static void
>  skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
>  		      const struct skl_wm_params *wm_params,
> -		      struct skl_wm_level *levels)
> +		      struct skl_plane_wm *plane_wm,
> +		      bool yuv)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
>  	int level, max_level =3D ilk_wm_max_level(dev_priv);
> +	/*
> +	 * Check which kind of plane is it and based on that calculate
> +	 * correspondent WM levels.
> +	 */
> +	struct skl_wm_level *levels =3D yuv ? plane_wm->uv_wm : plane_wm->wm;
>  	struct skl_wm_level *result_prev =3D &levels[0];
>  =

>  	for (level =3D 0; level <=3D max_level; level++) {
>  		struct skl_wm_level *result =3D &levels[level];
> +		u32 latency =3D dev_priv->wm.skl_latency[level];
>  =

> -		skl_compute_plane_wm(crtc_state, level, wm_params,
> -				     result_prev, result);
> +		skl_compute_plane_wm(crtc_state, level, latency,
> +				     wm_params, result_prev, result);
>  =

>  		result_prev =3D result;
>  	}
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
> +				     &plane_wm->sagv_wm0);
> +	} else {
> +		memcpy(&plane_wm->sagv_wm0, &levels[0],
> +		       sizeof(struct skl_wm_level));

Simple assignments should do.

> +	}
>  }
>  =

>  static u32
> @@ -4903,7 +5162,7 @@ static int skl_build_plane_wm_single(struct intel_c=
rtc_state *crtc_state,
>  	if (ret)
>  		return ret;
>  =

> -	skl_compute_wm_levels(crtc_state, &wm_params, wm->wm);
> +	skl_compute_wm_levels(crtc_state, &wm_params, wm, false);
>  	skl_compute_transition_wm(crtc_state, &wm_params, wm);
>  =

>  	return 0;
> @@ -4925,7 +5184,7 @@ static int skl_build_plane_wm_uv(struct intel_crtc_=
state *crtc_state,
>  	if (ret)
>  		return ret;
>  =

> -	skl_compute_wm_levels(crtc_state, &wm_params, wm->uv_wm);
> +	skl_compute_wm_levels(crtc_state, &wm_params, wm, true);
>  =

>  	return 0;
>  }
> @@ -5062,10 +5321,13 @@ void skl_write_plane_wm(struct intel_plane *plane,
>  		&crtc_state->wm.skl.plane_ddb_y[plane_id];
>  	const struct skl_ddb_entry *ddb_uv =3D
>  		&crtc_state->wm.skl.plane_ddb_uv[plane_id];
> +	const struct skl_wm_level *wm_level;
>  =

>  	for (level =3D 0; level <=3D max_level; level++) {
> +		wm_level =3D skl_plane_wm_level(plane, crtc_state, level, false);
> +
>  		skl_write_wm_level(dev_priv, PLANE_WM(pipe, plane_id, level),
> -				   &wm->wm[level]);
> +				   wm_level);
>  	}
>  	skl_write_wm_level(dev_priv, PLANE_WM_TRANS(pipe, plane_id),
>  			   &wm->trans_wm);
> @@ -5096,10 +5358,13 @@ void skl_write_cursor_wm(struct intel_plane *plan=
e,
>  		&crtc_state->wm.skl.optimal.planes[plane_id];
>  	const struct skl_ddb_entry *ddb =3D
>  		&crtc_state->wm.skl.plane_ddb_y[plane_id];
> +	const struct skl_wm_level *wm_level;
>  =

>  	for (level =3D 0; level <=3D max_level; level++) {
> +		wm_level =3D skl_plane_wm_level(plane, crtc_state, level, false);
> +
>  		skl_write_wm_level(dev_priv, CUR_WM(pipe, level),
> -				   &wm->wm[level]);
> +				   wm_level);
>  	}
>  	skl_write_wm_level(dev_priv, CUR_WM_TRANS(pipe), &wm->trans_wm);
>  =

> @@ -5473,18 +5738,68 @@ static int skl_wm_add_affected_planes(struct inte=
l_atomic_state *state,
>  	return 0;
>  }
>  =

> +static void tgl_compute_sagv_mask(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_crtc *crtc;
> +	struct intel_crtc_state *new_crtc_state;
> +	struct intel_crtc_state *old_crtc_state;
> +	struct skl_ddb_allocation *ddb =3D &state->wm_results.ddb;
> +	int ret;
> +	int i;
> +	struct intel_plane *plane;
> +
> +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> +					    new_crtc_state, i) {
> +		int pipe_bit =3D BIT(crtc->pipe);
> +		bool skip =3D true;
> +
> +		/*
> +		 * If we had set this mast already once for this state,
> +		 * no need to waste CPU cycles for doing this again.
> +		 */
> +		for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
> +			enum plane_id plane_id =3D plane->id;
> +
> +			if (!skl_plane_wm_equals(dev_priv,
> +						 &old_crtc_state->wm.skl.optimal.planes[plane_id],
> +						 &new_crtc_state->wm.skl.optimal.planes[plane_id])) {
> +				skip =3D false;
> +				break;
> +			}
> +		}
> +
> +		/*
> +		 * Check if wm levels are actually the same as for previous
> +		 * state, which means we can just skip doing this long check
> +		 * and just  copy correspondent bit from previous state.
> +		 */
> +		if (skip)
> +			continue;
> +
> +		ret =3D tgl_check_pipe_fits_sagv_wm(new_crtc_state, ddb);
> +		if (!ret)
> +			state->crtc_sagv_mask |=3D pipe_bit;
> +		else
> +			state->crtc_sagv_mask &=3D ~pipe_bit;
> +	}
> +}
> +
>  static int
>  skl_compute_wm(struct intel_atomic_state *state)
>  {
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state *new_crtc_state;
>  	struct intel_crtc_state *old_crtc_state;
> -	struct skl_ddb_values *results =3D &state->wm_results;
>  	int ret, i;
> +	struct skl_ddb_values *results =3D &state->wm_results;
>  =

>  	/* Clear all dirty flags */
>  	results->dirty_pipes =3D 0;
>  =

> +	/* No SAGV until we check if it's possible */
> +	state->crtc_sagv_mask =3D 0;
> +
>  	ret =3D skl_ddb_add_affected_pipes(state);
>  	if (ret)
>  		return ret;
> @@ -5664,6 +5979,9 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *cr=
tc,
>  				val =3D I915_READ(CUR_WM(pipe, level));
>  =

>  			skl_wm_level_from_reg_val(val, &wm->wm[level]);
> +			if (level =3D=3D 0)
> +				memcpy(&wm->sagv_wm0, &wm->wm[level],
> +				       sizeof(struct skl_wm_level));
>  		}
>  =

>  		if (plane_id !=3D PLANE_CURSOR)
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index c06c6a846d9a..4136d4508e63 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -43,6 +43,7 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
>  void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
>  void vlv_wm_sanitize(struct drm_i915_private *dev_priv);
>  bool intel_can_enable_sagv(struct intel_atomic_state *state);
> +bool intel_has_sagv(struct drm_i915_private *dev_priv);
>  int intel_enable_sagv(struct drm_i915_private *dev_priv);
>  int intel_disable_sagv(struct drm_i915_private *dev_priv);
>  bool skl_wm_level_equals(const struct skl_wm_level *l1,
> -- =

> 2.17.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
