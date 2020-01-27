Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8900B14A8DE
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 18:21:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB82D6E13C;
	Mon, 27 Jan 2020 17:21:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D7676E13C
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 17:21:35 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 09:03:12 -0800
X-IronPort-AV: E=Sophos;i="5.70,370,1574150400"; d="scan'208";a="221790722"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 09:03:10 -0800
Date: Mon, 27 Jan 2020 19:03:01 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200127170301.GA5006@ideak-desk.fi.intel.com>
References: <20200120174728.21095-18-ville.syrjala@linux.intel.com>
 <20200121140353.25997-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121140353.25997-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 16/17] drm/i915: Convert cdclk to global
 state
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 21, 2020 at 04:03:53PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Let's convert cdclk_state to be a proper global state. That allows
> us to use the regular atomic old vs. new state accessor, hopefully
> making the code less confusing.
> =

> We do have to deal with a few more error cases in case the cdclk
> state duplication fails. But so be it.
> =

> v2: Fix new plane min_cdclk vs. old crtc min_cdclk check
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c   |   1 -
>  .../gpu/drm/i915/display/intel_atomic_plane.c |  68 ++++---
>  .../gpu/drm/i915/display/intel_atomic_plane.h |   5 +-
>  drivers/gpu/drm/i915/display/intel_audio.c    |  39 +++-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 192 ++++++++++--------
>  drivers/gpu/drm/i915/display/intel_cdclk.h    |  45 +++-
>  drivers/gpu/drm/i915/display/intel_display.c  | 122 +++++++----
>  .../drm/i915/display/intel_display_types.h    |   3 -
>  drivers/gpu/drm/i915/i915_drv.h               |  45 +---
>  9 files changed, 316 insertions(+), 204 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/dr=
m/i915/display/intel_atomic.c
> index 45842ebcdebd..b51ddf9a250f 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -518,7 +518,6 @@ void intel_atomic_state_clear(struct drm_atomic_state=
 *s)
>  	state->dpll_set =3D state->modeset =3D false;
>  	state->global_state_changed =3D false;
>  	state->active_pipes =3D 0;
> -	intel_cdclk_clear_state(state);
>  }
>  =

>  struct intel_crtc_state *
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.c
> index 563caec1d201..230d0e4f6169 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -37,6 +37,7 @@
>  =

>  #include "i915_trace.h"
>  #include "intel_atomic_plane.h"
> +#include "intel_cdclk.h"
>  #include "intel_display_types.h"
>  #include "intel_pm.h"
>  #include "intel_sprite.h"
> @@ -155,44 +156,61 @@ unsigned int intel_plane_data_rate(const struct int=
el_crtc_state *crtc_state,
>  	return cpp * crtc_state->pixel_rate;
>  }
>  =

> -bool intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
> -				struct intel_plane *plane)
> +int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
> +			       struct intel_plane *plane,
> +			       bool *need_cdclk_calc)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	const struct intel_cdclk_state *cdclk_state =3D
> -		&dev_priv->cdclk_state;
>  	const struct intel_plane_state *plane_state =3D
>  		intel_atomic_get_new_plane_state(state, plane);
>  	struct intel_crtc *crtc =3D to_intel_crtc(plane_state->hw.crtc);
> -	struct intel_crtc_state *crtc_state;
> +	const struct intel_cdclk_state *cdclk_state;
> +	struct intel_crtc_state *new_crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	const struct intel_crtc_state *old_crtc_state =3D
> +		intel_atomic_get_old_crtc_state(state, crtc);
>  =

>  	if (!plane_state->uapi.visible || !plane->min_cdclk)
> -		return false;
> +		return 0;
> +
> +	new_crtc_state->min_cdclk[plane->id] =3D
> +		plane->min_cdclk(new_crtc_state, plane_state);
>  =

> -	crtc_state =3D intel_atomic_get_new_crtc_state(state, crtc);
> +	/*
> +	 * No need to check against the cdclk state if
> +	 * the min cdclk for the plane doesn't increase.
> +	 *
> +	 * Ie. we only ever increase the cdclk due to plane
> +	 * requirements. This can reduce back and forth
> +	 * display blinking due to constant cdclk changes.
> +	 */
> +	if (new_crtc_state->min_cdclk[plane->id] <=3D
> +	    old_crtc_state->min_cdclk[plane->id])
> +		return 0;
>  =

> -	crtc_state->min_cdclk[plane->id] =3D
> -		plane->min_cdclk(crtc_state, plane_state);
> +	cdclk_state =3D intel_atomic_get_cdclk_state(state);
> +	if (IS_ERR(cdclk_state))
> +		return PTR_ERR(cdclk_state);
>  =

>  	/*
> -	 * Does the cdclk need to be bumbed up?
> +	 * No need to recalculate the cdclk state if
> +	 * the min cdclk for the pipe doesn't increase.
>  	 *
> -	 * Note: we obviously need to be called before the new
> -	 * cdclk frequency is calculated so state->cdclk.logical
> -	 * hasn't been populated yet. Hence we look at the old
> -	 * cdclk state under dev_priv->cdclk.logical. This is
> -	 * safe as long we hold at least one crtc mutex (which
> -	 * must be true since we have crtc_state).
> +	 * Ie. we only ever increase the cdclk due to plane
> +	 * requirements. This can reduce back and forth
> +	 * display blinking due to constant cdclk changes.
>  	 */
> -	if (crtc_state->min_cdclk[plane->id] > cdclk_state->logical.cdclk) {
> -		DRM_DEBUG_KMS("[PLANE:%d:%s] min_cdclk (%d kHz) > logical cdclk (%d kH=
z)\n",
> -			      plane->base.base.id, plane->base.name,
> -			      crtc_state->min_cdclk[plane->id],
> -			      cdclk_state->logical.cdclk);
> -		return true;
> -	}
> +	if (new_crtc_state->min_cdclk[plane->id] <=3D
> +	    cdclk_state->min_cdclk[crtc->pipe])
> +		return 0;
> +
> +	DRM_DEBUG_KMS("[PLANE:%d:%s] min cdclk (%d kHz) > [CRTC:%d:%s] min cdcl=
k (%d kHz)\n",
> +		      plane->base.base.id, plane->base.name,
> +		      new_crtc_state->min_cdclk[plane->id],
> +		      crtc->base.base.id, crtc->base.name,
> +		      cdclk_state->min_cdclk[crtc->pipe]);
> +	*need_cdclk_calc =3D true;
>  =

> -	return false;
> +	return 0;
>  }
>  =

>  static void intel_plane_clear_hw_state(struct intel_plane_state *plane_s=
tate)
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.h
> index 5cedafdddb55..2bcf15e34728 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> @@ -46,7 +46,8 @@ int intel_plane_atomic_calc_changes(const struct intel_=
crtc_state *old_crtc_stat
>  				    struct intel_crtc_state *crtc_state,
>  				    const struct intel_plane_state *old_plane_state,
>  				    struct intel_plane_state *plane_state);
> -bool intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
> -				struct intel_plane *plane);
> +int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
> +			       struct intel_plane *plane,
> +			       bool *need_cdclk_calc);
>  =

>  #endif /* __INTEL_ATOMIC_PLANE_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index 12626fd94d29..9debac75eaec 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -30,6 +30,7 @@
>  #include "i915_drv.h"
>  #include "intel_atomic.h"
>  #include "intel_audio.h"
> +#include "intel_cdclk.h"
>  #include "intel_display_types.h"
>  #include "intel_lpe_audio.h"
>  =

> @@ -800,6 +801,34 @@ void intel_init_audio_hooks(struct drm_i915_private =
*dev_priv)
>  	}
>  }
>  =

> +static int glk_force_audio_cdclk_commit(struct intel_atomic_state *state,
> +					bool enable)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_cdclk_state *cdclk_state;
> +	struct intel_crtc *crtc;
> +	int ret;
> +
> +	/* need to hold at least one crtc lock for the global state */
> +	crtc =3D intel_get_crtc_for_pipe(dev_priv, PIPE_A);
> +	ret =3D drm_modeset_lock(&crtc->base.mutex, state->base.acquire_ctx);
> +	if (ret)
> +		return ret;

Nit: couldn't intel_atomic_lock_global_state() be moved earlier instead
of the above?

Reviewed-by: Imre Deak <imre.deak@intel.com>

> +
> +	cdclk_state =3D intel_atomic_get_cdclk_state(state);
> +	if (IS_ERR(cdclk_state))
> +		return PTR_ERR(cdclk_state);
> +
> +	cdclk_state->force_min_cdclk_changed =3D true;
> +	cdclk_state->force_min_cdclk =3D enable ? 2 * 96000 : 0;
> +
> +	ret =3D intel_atomic_lock_global_state(&cdclk_state->base);
> +	if (ret)
> +		return ret;
> +
> +	return drm_atomic_commit(&state->base);
> +}
> +
>  static void glk_force_audio_cdclk(struct drm_i915_private *dev_priv,
>  				  bool enable)
>  {
> @@ -815,15 +844,7 @@ static void glk_force_audio_cdclk(struct drm_i915_pr=
ivate *dev_priv,
>  	state->acquire_ctx =3D &ctx;
>  =

>  retry:
> -	to_intel_atomic_state(state)->cdclk_state.force_min_cdclk_changed =3D t=
rue;
> -	to_intel_atomic_state(state)->cdclk_state.force_min_cdclk =3D
> -		enable ? 2 * 96000 : 0;
> -
> -	/* Protects dev_priv->cdclk.force_min_cdclk */
> -	ret =3D _intel_atomic_lock_global_state(to_intel_atomic_state(state));
> -	if (!ret)
> -		ret =3D drm_atomic_commit(state);
> -
> +	ret =3D glk_force_audio_cdclk_commit(to_intel_atomic_state(state), enab=
le);
>  	if (ret =3D=3D -EDEADLK) {
>  		drm_atomic_state_clear(state);
>  		drm_modeset_backoff(&ctx);
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 3b7932ae2a77..e14bda2bec71 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1807,37 +1807,6 @@ static bool intel_cdclk_changed(const struct intel=
_cdclk_config *a,
>  		a->voltage_level !=3D b->voltage_level;
>  }
>  =

> -/**
> - * intel_cdclk_clear_state - clear the cdclk state
> - * @state: atomic state
> - *
> - * Clear the cdclk state for ww_mutex backoff.
> - */
> -void intel_cdclk_clear_state(struct intel_atomic_state *state)
> -{
> -	memset(&state->cdclk_state, 0, sizeof(state->cdclk_state));
> -	state->cdclk_state.pipe =3D INVALID_PIPE;
> -}
> -
> -/**
> - * intel_cdclk_swap_state - make atomic CDCLK configuration effective
> - * @state: atomic state
> - *
> - * This is the CDCLK version of drm_atomic_helper_swap_state() since the
> - * helper does not handle driver-specific global state.
> - *
> - * Similarly to the atomic helpers this function does a complete swap,
> - * i.e. it also puts the old state into @state. This is used by the comm=
it
> - * code to determine how CDCLK has changed (for instance did it increase=
 or
> - * decrease).
> - */
> -void intel_cdclk_swap_state(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -
> -	swap(state->cdclk_state, dev_priv->cdclk_state);
> -}
> -
>  void intel_dump_cdclk_config(const struct intel_cdclk_config *cdclk_conf=
ig,
>  			     const char *context)
>  {
> @@ -1888,14 +1857,22 @@ void
>  intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	/* called after intel_cdclk_swap_state()! */
> -	const struct intel_cdclk_state *old_cdclk_state =3D &state->cdclk_state;
> -	const struct intel_cdclk_state *new_cdclk_state =3D &dev_priv->cdclk_st=
ate;
> +	const struct intel_cdclk_state *old_cdclk_state =3D
> +		intel_atomic_get_old_cdclk_state(state);
> +	const struct intel_cdclk_state *new_cdclk_state =3D
> +		intel_atomic_get_new_cdclk_state(state);
>  	enum pipe pipe =3D new_cdclk_state->pipe;
>  =

> +	if (!intel_cdclk_changed(&old_cdclk_state->actual,
> +				 &new_cdclk_state->actual))
> +		return;
> +
>  	if (pipe =3D=3D INVALID_PIPE ||
> -	    old_cdclk_state->actual.cdclk <=3D new_cdclk_state->actual.cdclk)
> +	    old_cdclk_state->actual.cdclk <=3D new_cdclk_state->actual.cdclk) {
> +		WARN_ON(!new_cdclk_state->base.changed);
> +
>  		intel_set_cdclk(dev_priv, &new_cdclk_state->actual, pipe);
> +	}
>  }
>  =

>  /**
> @@ -1909,14 +1886,22 @@ void
>  intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	/* called after intel_cdclk_swap_state()! */
> -	const struct intel_cdclk_state *old_cdclk_state =3D &state->cdclk_state;
> -	const struct intel_cdclk_state *new_cdclk_state =3D &dev_priv->cdclk_st=
ate;
> +	const struct intel_cdclk_state *old_cdclk_state =3D
> +		intel_atomic_get_old_cdclk_state(state);
> +	const struct intel_cdclk_state *new_cdclk_state =3D
> +		intel_atomic_get_new_cdclk_state(state);
>  	enum pipe pipe =3D new_cdclk_state->pipe;
>  =

> +	if (!intel_cdclk_changed(&old_cdclk_state->actual,
> +				 &new_cdclk_state->actual))
> +		return;
> +
>  	if (pipe !=3D INVALID_PIPE &&
> -	    old_cdclk_state->actual.cdclk > new_cdclk_state->actual.cdclk)
> +	    old_cdclk_state->actual.cdclk > new_cdclk_state->actual.cdclk) {
> +		WARN_ON(!new_cdclk_state->base.changed);
> +
>  		intel_set_cdclk(dev_priv, &new_cdclk_state->actual, pipe);
> +	}
>  }
>  =

>  static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc=
_state)
> @@ -2042,10 +2027,10 @@ int intel_crtc_compute_min_cdclk(const struct int=
el_crtc_state *crtc_state)
>  	return min_cdclk;
>  }
>  =

> -static int intel_compute_min_cdclk(struct intel_atomic_state *state)
> +static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
>  {
> +	struct intel_atomic_state *state =3D cdclk_state->base.state;
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	struct intel_cdclk_state *cdclk_state =3D &state->cdclk_state;
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state *crtc_state;
>  	int min_cdclk, i;
> @@ -2063,7 +2048,7 @@ static int intel_compute_min_cdclk(struct intel_ato=
mic_state *state)
>  =

>  		cdclk_state->min_cdclk[i] =3D min_cdclk;
>  =

> -		ret =3D _intel_atomic_lock_global_state(state);
> +		ret =3D intel_atomic_lock_global_state(&cdclk_state->base);
>  		if (ret)
>  			return ret;
>  	}
> @@ -2088,10 +2073,10 @@ static int intel_compute_min_cdclk(struct intel_a=
tomic_state *state)
>   * future platforms this code will need to be
>   * adjusted.
>   */
> -static int bxt_compute_min_voltage_level(struct intel_atomic_state *stat=
e)
> +static int bxt_compute_min_voltage_level(struct intel_cdclk_state *cdclk=
_state)
>  {
> +	struct intel_atomic_state *state =3D cdclk_state->base.state;
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	struct intel_cdclk_state *cdclk_state =3D &state->cdclk_state;
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state *crtc_state;
>  	u8 min_voltage_level;
> @@ -2111,7 +2096,7 @@ static int bxt_compute_min_voltage_level(struct int=
el_atomic_state *state)
>  =

>  		cdclk_state->min_voltage_level[i] =3D min_voltage_level;
>  =

> -		ret =3D _intel_atomic_lock_global_state(state);
> +		ret =3D intel_atomic_lock_global_state(&cdclk_state->base);
>  		if (ret)
>  			return ret;
>  	}
> @@ -2124,13 +2109,13 @@ static int bxt_compute_min_voltage_level(struct i=
ntel_atomic_state *state)
>  	return min_voltage_level;
>  }
>  =

> -static int vlv_modeset_calc_cdclk(struct intel_atomic_state *state)
> +static int vlv_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
>  {
> +	struct intel_atomic_state *state =3D cdclk_state->base.state;
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	struct intel_cdclk_state *cdclk_state =3D &state->cdclk_state;
>  	int min_cdclk, cdclk;
>  =

> -	min_cdclk =3D intel_compute_min_cdclk(state);
> +	min_cdclk =3D intel_compute_min_cdclk(cdclk_state);
>  	if (min_cdclk < 0)
>  		return min_cdclk;
>  =

> @@ -2153,12 +2138,12 @@ static int vlv_modeset_calc_cdclk(struct intel_at=
omic_state *state)
>  	return 0;
>  }
>  =

> -static int bdw_modeset_calc_cdclk(struct intel_atomic_state *state)
> +static int bdw_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
>  {
> -	struct intel_cdclk_state *cdclk_state =3D &state->cdclk_state;
> +	struct intel_atomic_state *state =3D cdclk_state->base.state;
>  	int min_cdclk, cdclk;
>  =

> -	min_cdclk =3D intel_compute_min_cdclk(state);
> +	min_cdclk =3D intel_compute_min_cdclk(cdclk_state);
>  	if (min_cdclk < 0)
>  		return min_cdclk;
>  =

> @@ -2185,10 +2170,10 @@ static int bdw_modeset_calc_cdclk(struct intel_at=
omic_state *state)
>  	return 0;
>  }
>  =

> -static int skl_dpll0_vco(struct intel_atomic_state *state)
> +static int skl_dpll0_vco(struct intel_cdclk_state *cdclk_state)
>  {
> +	struct intel_atomic_state *state =3D cdclk_state->base.state;
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	struct intel_cdclk_state *cdclk_state =3D &state->cdclk_state;
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state *crtc_state;
>  	int vco, i;
> @@ -2222,16 +2207,16 @@ static int skl_dpll0_vco(struct intel_atomic_stat=
e *state)
>  	return vco;
>  }
>  =

> -static int skl_modeset_calc_cdclk(struct intel_atomic_state *state)
> +static int skl_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
>  {
> -	struct intel_cdclk_state *cdclk_state =3D &state->cdclk_state;
> +	struct intel_atomic_state *state =3D cdclk_state->base.state;
>  	int min_cdclk, cdclk, vco;
>  =

> -	min_cdclk =3D intel_compute_min_cdclk(state);
> +	min_cdclk =3D intel_compute_min_cdclk(cdclk_state);
>  	if (min_cdclk < 0)
>  		return min_cdclk;
>  =

> -	vco =3D skl_dpll0_vco(state);
> +	vco =3D skl_dpll0_vco(cdclk_state);
>  =

>  	/*
>  	 * FIXME should also account for plane ratio
> @@ -2258,17 +2243,17 @@ static int skl_modeset_calc_cdclk(struct intel_at=
omic_state *state)
>  	return 0;
>  }
>  =

> -static int bxt_modeset_calc_cdclk(struct intel_atomic_state *state)
> +static int bxt_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
>  {
> +	struct intel_atomic_state *state =3D cdclk_state->base.state;
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	struct intel_cdclk_state *cdclk_state =3D &state->cdclk_state;
>  	int min_cdclk, min_voltage_level, cdclk, vco;
>  =

> -	min_cdclk =3D intel_compute_min_cdclk(state);
> +	min_cdclk =3D intel_compute_min_cdclk(cdclk_state);
>  	if (min_cdclk < 0)
>  		return min_cdclk;
>  =

> -	min_voltage_level =3D bxt_compute_min_voltage_level(state);
> +	min_voltage_level =3D bxt_compute_min_voltage_level(cdclk_state);
>  	if (min_voltage_level < 0)
>  		return min_voltage_level;
>  =

> @@ -2335,7 +2320,7 @@ static int intel_modeset_all_pipes(struct intel_ato=
mic_state *state)
>  	return 0;
>  }
>  =

> -static int fixed_modeset_calc_cdclk(struct intel_atomic_state *state)
> +static int fixed_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_stat=
e)
>  {
>  	int min_cdclk;
>  =

> @@ -2344,54 +2329,95 @@ static int fixed_modeset_calc_cdclk(struct intel_=
atomic_state *state)
>  	 * check that the required minimum frequency doesn't exceed
>  	 * the actual cdclk frequency.
>  	 */
> -	min_cdclk =3D intel_compute_min_cdclk(state);
> +	min_cdclk =3D intel_compute_min_cdclk(cdclk_state);
>  	if (min_cdclk < 0)
>  		return min_cdclk;
>  =

>  	return 0;
>  }
>  =

> +static struct intel_global_state *intel_cdclk_duplicate_state(struct int=
el_global_obj *obj)
> +{
> +	struct intel_cdclk_state *cdclk_state;
> +
> +	cdclk_state =3D kmemdup(obj->state, sizeof(*cdclk_state), GFP_KERNEL);
> +	if (!cdclk_state)
> +		return NULL;
> +
> +	cdclk_state->force_min_cdclk_changed =3D false;
> +	cdclk_state->pipe =3D INVALID_PIPE;
> +
> +	return &cdclk_state->base;
> +}
> +
> +static void intel_cdclk_destroy_state(struct intel_global_obj *obj,
> +				      struct intel_global_state *state)
> +{
> +	kfree(state);
> +}
> +
> +static const struct intel_global_state_funcs intel_cdclk_funcs =3D {
> +	.atomic_duplicate_state =3D intel_cdclk_duplicate_state,
> +	.atomic_destroy_state =3D intel_cdclk_destroy_state,
> +};
> +
> +struct intel_cdclk_state *
> +intel_atomic_get_cdclk_state(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_global_state *cdclk_state;
> +
> +	cdclk_state =3D intel_atomic_get_global_obj_state(state, &dev_priv->cdc=
lk.obj);
> +	if (IS_ERR(cdclk_state))
> +		return ERR_CAST(cdclk_state);
> +
> +	return to_intel_cdclk_state(cdclk_state);
> +}
> +
> +int intel_cdclk_init(struct drm_i915_private *dev_priv)
> +{
> +	struct intel_cdclk_state *cdclk_state;
> +
> +	cdclk_state =3D kzalloc(sizeof(*cdclk_state), GFP_KERNEL);
> +	if (!cdclk_state)
> +		return -ENOMEM;
> +
> +	intel_atomic_global_obj_init(dev_priv, &dev_priv->cdclk.obj,
> +				     &cdclk_state->base, &intel_cdclk_funcs);
> +
> +	return 0;
> +}
> +
>  int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	const struct intel_cdclk_state *old_cdclk_state =3D &dev_priv->cdclk_st=
ate;
> -	struct intel_cdclk_state *new_cdclk_state =3D &state->cdclk_state;
> +	const struct intel_cdclk_state *old_cdclk_state;
> +	struct intel_cdclk_state *new_cdclk_state;
>  	enum pipe pipe;
>  	int ret;
>  =

> -	memcpy(new_cdclk_state->min_cdclk, old_cdclk_state->min_cdclk,
> -	       sizeof(new_cdclk_state->min_cdclk));
> -	memcpy(new_cdclk_state->min_voltage_level, old_cdclk_state->min_voltage=
_level,
> -	       sizeof(new_cdclk_state->min_voltage_level));
> +	new_cdclk_state =3D intel_atomic_get_cdclk_state(state);
> +	if (IS_ERR(new_cdclk_state))
> +		return PTR_ERR(new_cdclk_state);
>  =

> -	/* keep the current setting */
> -	if (!new_cdclk_state->force_min_cdclk_changed)
> -		new_cdclk_state->force_min_cdclk =3D old_cdclk_state->force_min_cdclk;
> +	old_cdclk_state =3D intel_atomic_get_old_cdclk_state(state);
>  =

> -	new_cdclk_state->logical =3D old_cdclk_state->logical;
> -	new_cdclk_state->actual =3D old_cdclk_state->actual;
> -
> -	ret =3D dev_priv->display.modeset_calc_cdclk(state);
> +	ret =3D dev_priv->display.modeset_calc_cdclk(new_cdclk_state);
>  	if (ret)
>  		return ret;
>  =

> -	/*
> -	 * Writes to dev_priv->cdclk.{actual,logical} must protected
> -	 * by holding all the crtc mutexes even if we don't end up
> -	 * touching the hardware
> -	 */
>  	if (intel_cdclk_changed(&old_cdclk_state->actual,
>  				&new_cdclk_state->actual)) {
>  		/*
>  		 * Also serialize commits across all crtcs
>  		 * if the actual hw needs to be poked.
>  		 */
> -		ret =3D _intel_atomic_serialize_global_state(state);
> +		ret =3D intel_atomic_serialize_global_state(&new_cdclk_state->base);
>  		if (ret)
>  			return ret;
>  	} else if (intel_cdclk_changed(&old_cdclk_state->logical,
>  				       &new_cdclk_state->logical)) {
> -		ret =3D _intel_atomic_lock_global_state(state);
> +		ret =3D intel_atomic_lock_global_state(&new_cdclk_state->base);
>  		if (ret)
>  			return ret;
>  	} else {
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm=
/i915/display/intel_cdclk.h
> index 4b965db07720..195fca70bfcb 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -8,11 +8,12 @@
>  =

>  #include <linux/types.h>
>  =

> +#include "i915_drv.h"
>  #include "intel_display.h"
> +#include "intel_global_state.h"
>  =

>  struct drm_i915_private;
>  struct intel_atomic_state;
> -struct intel_cdclk_config;
>  struct intel_crtc_state;
>  =

>  struct intel_cdclk_vals {
> @@ -22,6 +23,35 @@ struct intel_cdclk_vals {
>  	u8 ratio;
>  };
>  =

> +struct intel_cdclk_state {
> +	struct intel_global_state base;
> +
> +	/*
> +	 * Logical configuration of cdclk (used for all scaling,
> +	 * watermark, etc. calculations and checks). This is
> +	 * computed as if all enabled crtcs were active.
> +	 */
> +	struct intel_cdclk_config logical;
> +
> +	/*
> +	 * Actual configuration of cdclk, can be different from the
> +	 * logical configuration only when all crtc's are DPMS off.
> +	 */
> +	struct intel_cdclk_config actual;
> +
> +	/* minimum acceptable cdclk for each pipe */
> +	int min_cdclk[I915_MAX_PIPES];
> +	/* minimum acceptable voltage level for each pipe */
> +	u8 min_voltage_level[I915_MAX_PIPES];
> +
> +	/* pipe to which cd2x update is synchronized */
> +	enum pipe pipe;
> +
> +	/* forced minimum cdclk for glk+ audio w/a */
> +	int force_min_cdclk;
> +	bool force_min_cdclk_changed;
> +};
> +
>  int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_sta=
te);
>  void intel_cdclk_init_hw(struct drm_i915_private *i915);
>  void intel_cdclk_uninit_hw(struct drm_i915_private *i915);
> @@ -31,12 +61,21 @@ void intel_update_cdclk(struct drm_i915_private *dev_=
priv);
>  void intel_update_rawclk(struct drm_i915_private *dev_priv);
>  bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
>  			       const struct intel_cdclk_config *b);
> -void intel_cdclk_clear_state(struct intel_atomic_state *state);
> -void intel_cdclk_swap_state(struct intel_atomic_state *state);
>  void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
>  void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
>  void intel_dump_cdclk_config(const struct intel_cdclk_config *cdclk_conf=
ig,
>  			     const char *context);
>  int intel_modeset_calc_cdclk(struct intel_atomic_state *state);
>  =

> +struct intel_cdclk_state *
> +intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
> +
> +#define to_intel_cdclk_state(x) container_of((x), struct intel_cdclk_sta=
te, base)
> +#define intel_atomic_get_old_cdclk_state(state) \
> +	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i=
915(state->base.dev)->cdclk.obj))
> +#define intel_atomic_get_new_cdclk_state(state) \
> +	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i=
915(state->base.dev)->cdclk.obj))
> +
> +int intel_cdclk_init(struct drm_i915_private *dev_priv);
> +
>  #endif /* __INTEL_CDCLK_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index dc767efffd9a..dca100546be8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7482,7 +7482,7 @@ static void intel_crtc_disable_noatomic(struct inte=
l_crtc *crtc,
>  	struct intel_bw_state *bw_state =3D
>  		to_intel_bw_state(dev_priv->bw_obj.state);
>  	struct intel_cdclk_state *cdclk_state =3D
> -		&dev_priv->cdclk_state;
> +		to_intel_cdclk_state(dev_priv->cdclk.obj.state);
>  	struct intel_crtc_state *crtc_state =3D
>  		to_intel_crtc_state(crtc->base.state);
>  	enum intel_display_power_domain domain;
> @@ -7780,17 +7780,17 @@ bool hsw_crtc_state_ips_capable(const struct inte=
l_crtc_state *crtc_state)
>  	return true;
>  }
>  =

> -static bool hsw_compute_ips_config(struct intel_crtc_state *crtc_state)
> +static int hsw_compute_ips_config(struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv =3D
>  		to_i915(crtc_state->uapi.crtc->dev);
> -	struct intel_atomic_state *intel_state =3D
> +	struct intel_atomic_state *state =3D
>  		to_intel_atomic_state(crtc_state->uapi.state);
> -	const struct intel_cdclk_state *cdclk_state =3D
> -		&intel_state->cdclk_state;
> +
> +	crtc_state->ips_enabled =3D false;
>  =

>  	if (!hsw_crtc_state_ips_capable(crtc_state))
> -		return false;
> +		return 0;
>  =

>  	/*
>  	 * When IPS gets enabled, the pipe CRC changes. Since IPS gets
> @@ -7799,18 +7799,27 @@ static bool hsw_compute_ips_config(struct intel_c=
rtc_state *crtc_state)
>  	 * completely disable it.
>  	 */
>  	if (crtc_state->crc_enabled)
> -		return false;
> +		return 0;
>  =

>  	/* IPS should be fine as long as at least one plane is enabled. */
>  	if (!(crtc_state->active_planes & ~BIT(PLANE_CURSOR)))
> -		return false;
> +		return 0;
>  =

> -	/* pixel rate mustn't exceed 95% of cdclk with IPS on BDW */
> -	if (IS_BROADWELL(dev_priv) &&
> -	    crtc_state->pixel_rate > cdclk_state->logical.cdclk * 95 / 100)
> -		return false;
> +	if (IS_BROADWELL(dev_priv)) {
> +		const struct intel_cdclk_state *cdclk_state;
>  =

> -	return true;
> +		cdclk_state =3D intel_atomic_get_cdclk_state(state);
> +		if (IS_ERR(cdclk_state))
> +			return PTR_ERR(cdclk_state);
> +
> +		/* pixel rate mustn't exceed 95% of cdclk with IPS on BDW */
> +		if (crtc_state->pixel_rate > cdclk_state->logical.cdclk * 95 / 100)
> +			return 0;
> +	}
> +
> +	crtc_state->ips_enabled =3D true;
> +
> +	return 0;
>  }
>  =

>  static bool intel_crtc_supports_double_wide(const struct intel_crtc *crt=
c)
> @@ -12543,14 +12552,11 @@ static u16 hsw_linetime_wm(const struct intel_c=
rtc_state *crtc_state)
>  				 adjusted_mode->crtc_clock);
>  }
>  =

> -static u16 hsw_ips_linetime_wm(const struct intel_crtc_state *crtc_state)
> +static u16 hsw_ips_linetime_wm(const struct intel_crtc_state *crtc_state,
> +			       const struct intel_cdclk_state *cdclk_state)
>  {
> -	const struct intel_atomic_state *state =3D
> -		to_intel_atomic_state(crtc_state->uapi.state);
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
> -	const struct intel_cdclk_state *cdclk_state =3D
> -		&state->cdclk_state;
>  =

>  	if (!crtc_state->hw.enable)
>  		return 0;
> @@ -12580,6 +12586,32 @@ static u16 skl_linetime_wm(const struct intel_cr=
tc_state *crtc_state)
>  	return linetime_wm;
>  }
>  =

> +static int hsw_compute_linetime_wm(struct intel_atomic_state *state,
> +				   struct intel_crtc *crtc)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	const struct intel_cdclk_state *cdclk_state;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 9)
> +		crtc_state->linetime =3D skl_linetime_wm(crtc_state);
> +	else
> +		crtc_state->linetime =3D hsw_linetime_wm(crtc_state);
> +
> +	if (!hsw_crtc_supports_ips(crtc))
> +		return 0;
> +
> +	cdclk_state =3D intel_atomic_get_cdclk_state(state);
> +	if (IS_ERR(cdclk_state))
> +		return PTR_ERR(cdclk_state);
> +
> +	crtc_state->ips_linetime =3D hsw_ips_linetime_wm(crtc_state,
> +						       cdclk_state);
> +
> +	return 0;
> +}
> +
>  static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  				   struct intel_crtc *crtc)
>  {
> @@ -12615,7 +12647,6 @@ static int intel_crtc_atomic_check(struct intel_a=
tomic_state *state,
>  			return ret;
>  	}
>  =

> -	ret =3D 0;
>  	if (dev_priv->display.compute_pipe_wm) {
>  		ret =3D dev_priv->display.compute_pipe_wm(crtc_state);
>  		if (ret) {
> @@ -12646,20 +12677,25 @@ static int intel_crtc_atomic_check(struct intel=
_atomic_state *state,
>  		if (!ret)
>  			ret =3D intel_atomic_setup_scalers(dev_priv, crtc,
>  							 crtc_state);
> +		if (ret)
> +			return ret;
>  	}
>  =

> -	if (HAS_IPS(dev_priv))
> -		crtc_state->ips_enabled =3D hsw_compute_ips_config(crtc_state);
> +	if (HAS_IPS(dev_priv)) {
> +		ret =3D hsw_compute_ips_config(crtc_state);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	if (INTEL_GEN(dev_priv) >=3D 9 ||
> +	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv)) {
> +		ret =3D hsw_compute_linetime_wm(state, crtc);
> +		if (ret)
> +			return ret;
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 9) {
> -		crtc_state->linetime =3D skl_linetime_wm(crtc_state);
> -	} else if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv)) {
> -		crtc_state->linetime =3D hsw_linetime_wm(crtc_state);
> -		if (hsw_crtc_supports_ips(crtc))
> -			crtc_state->ips_linetime =3D hsw_ips_linetime_wm(crtc_state);
>  	}
>  =

> -	return ret;
> +	return 0;
>  }
>  =

>  static void intel_modeset_update_connector_atomic_state(struct drm_devic=
e *dev)
> @@ -14478,7 +14514,7 @@ static bool active_planes_affects_min_cdclk(struc=
t drm_i915_private *dev_priv)
>  }
>  =

>  static int intel_atomic_check_planes(struct intel_atomic_state *state,
> -				     bool *need_modeset)
> +				     bool *need_cdclk_calc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
> @@ -14532,8 +14568,11 @@ static int intel_atomic_check_planes(struct inte=
l_atomic_state *state,
>  	 * affected planes are part of the state. We can now
>  	 * compute the minimum cdclk for each plane.
>  	 */
> -	for_each_new_intel_plane_in_state(state, plane, plane_state, i)
> -		*need_modeset |=3D intel_plane_calc_min_cdclk(state, plane);
> +	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
> +		ret =3D intel_plane_calc_min_cdclk(state, plane, need_cdclk_calc);
> +		if (ret)
> +			return ret;
> +	}
>  =

>  	return 0;
>  }
> @@ -14654,6 +14693,7 @@ static int intel_atomic_check(struct drm_device *=
dev,
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	struct intel_atomic_state *state =3D to_intel_atomic_state(_state);
>  	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
> +	struct intel_cdclk_state *new_cdclk_state;
>  	struct intel_crtc *crtc;
>  	int ret, i;
>  	bool any_ms =3D false;
> @@ -14766,18 +14806,18 @@ static int intel_atomic_check(struct drm_device=
 *dev,
>  	if (ret)
>  		goto fail;
>  =

> -	any_ms |=3D state->cdclk_state.force_min_cdclk_changed;
> -
>  	ret =3D intel_atomic_check_planes(state, &any_ms);
>  	if (ret)
>  		goto fail;
>  =

> +	new_cdclk_state =3D intel_atomic_get_new_cdclk_state(state);
> +	if (new_cdclk_state && new_cdclk_state->force_min_cdclk_changed)
> +		any_ms =3D true;
> +
>  	if (any_ms) {
>  		ret =3D intel_modeset_checks(state);
>  		if (ret)
>  			goto fail;
> -	} else {
> -		state->cdclk_state.logical =3D dev_priv->cdclk_state.logical;
>  	}
>  =

>  	ret =3D intel_atomic_check_crtcs(state);
> @@ -15676,8 +15716,6 @@ static int intel_atomic_commit(struct drm_device =
*dev,
>  		assert_global_state_locked(dev_priv);
>  =

>  		dev_priv->active_pipes =3D state->active_pipes;
> -
> -		intel_cdclk_swap_state(state);
>  	}
>  =

>  	drm_atomic_state_get(&state->base);
> @@ -17356,7 +17394,7 @@ void intel_init_display_hooks(struct drm_i915_pri=
vate *dev_priv)
>  void intel_modeset_init_hw(struct drm_i915_private *i915)
>  {
>  	struct intel_cdclk_state *cdclk_state =3D
> -		&i915->cdclk_state;
> +		to_intel_cdclk_state(i915->cdclk.obj.state);
>  =

>  	intel_update_cdclk(i915);
>  	intel_dump_cdclk_config(&i915->cdclk.hw, "Current CDCLK");
> @@ -17587,6 +17625,10 @@ int intel_modeset_init(struct drm_i915_private *=
i915)
>  =

>  	intel_mode_config_init(i915);
>  =

> +	ret =3D intel_cdclk_init(i915);
> +	if (ret)
> +		return ret;
> +
>  	ret =3D intel_bw_init(i915);
>  	if (ret)
>  		return ret;
> @@ -18071,6 +18113,8 @@ static void readout_plane_state(struct drm_i915_p=
rivate *dev_priv)
>  static void intel_modeset_readout_hw_state(struct drm_device *dev)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct intel_cdclk_state *cdclk_state =3D
> +		to_intel_cdclk_state(dev_priv->cdclk.obj.state);
>  	enum pipe pipe;
>  	struct intel_crtc *crtc;
>  	struct intel_encoder *encoder;
> @@ -18190,8 +18234,6 @@ static void intel_modeset_readout_hw_state(struct=
 drm_device *dev)
>  	for_each_intel_crtc(dev, crtc) {
>  		struct intel_bw_state *bw_state =3D
>  			to_intel_bw_state(dev_priv->bw_obj.state);
> -		struct intel_cdclk_state *cdclk_state =3D
> -			&dev_priv->cdclk_state;
>  		struct intel_crtc_state *crtc_state =3D
>  			to_intel_crtc_state(crtc->base.state);
>  		struct intel_plane *plane;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 628c4a56a9e9..524b6d5235ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -465,8 +465,6 @@ struct intel_atomic_state {
>  	struct __intel_global_objs_state *global_objs;
>  	int num_global_objs;
>  =

> -	struct intel_cdclk_state cdclk_state;
> -
>  	bool dpll_set, modeset;
>  =

>  	/*
> @@ -493,7 +491,6 @@ struct intel_atomic_state {
>  =

>  	/*
>  	 * active_pipes
> -	 * cdclk_state
>  	 */
>  	bool global_state_changed;
>  =

> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 63cda89a4e62..2e6b149478c1 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -65,7 +65,6 @@
>  #include "i915_utils.h"
>  =

>  #include "display/intel_bios.h"
> -#include "display/intel_cdclk.h"
>  #include "display/intel_display.h"
>  #include "display/intel_display_power.h"
>  #include "display/intel_dpll_mgr.h"
> @@ -258,7 +257,8 @@ struct intel_connector;
>  struct intel_encoder;
>  struct intel_atomic_state;
>  struct intel_cdclk_config;
> -struct intel_crtc_state;
> +struct intel_cdclk_state;
> +struct intel_cdclk_vals;
>  struct intel_initial_plane_config;
>  struct intel_crtc;
>  struct intel_limit;
> @@ -282,7 +282,7 @@ struct drm_i915_display_funcs {
>  				    struct intel_crtc *crtc);
>  	int (*compute_global_watermarks)(struct intel_atomic_state *state);
>  	void (*update_wm)(struct intel_crtc *crtc);
> -	int (*modeset_calc_cdclk)(struct intel_atomic_state *state);
> +	int (*modeset_calc_cdclk)(struct intel_cdclk_state *state);
>  	u8 (*calc_voltage_level)(int cdclk);
>  	/* Returns the active state of the crtc, and if the crtc is active,
>  	 * fills out the pipe-config with the hw state. */
> @@ -891,33 +891,6 @@ struct i915_selftest_stash {
>  	atomic_t counter;
>  };
>  =

> -struct intel_cdclk_state {
> -	/*
> -	 * Logical configuration of cdclk (used for all scaling,
> -	 * watermark, etc. calculations and checks). This is
> -	 * computed as if all enabled crtcs were active.
> -	 */
> -	struct intel_cdclk_config logical;
> -
> -	/*
> -	 * Actual configuration of cdclk, can be different from the
> -	 * logical configuration only when all crtc's are DPMS off.
> -	 */
> -	struct intel_cdclk_config actual;
> -
> -	/* minimum acceptable cdclk for each pipe */
> -	int min_cdclk[I915_MAX_PIPES];
> -	/* minimum acceptable voltage level for each pipe */
> -	u8 min_voltage_level[I915_MAX_PIPES];
> -
> -	/* pipe to which cd2x update is synchronized */
> -	enum pipe pipe;
> -
> -	/* forced minimum cdclk for glk+ audio w/a */
> -	int force_min_cdclk;
> -	bool force_min_cdclk_changed;
> -};
> -
>  struct drm_i915_private {
>  	struct drm_device drm;
>  =

> @@ -1034,18 +1007,14 @@ struct drm_i915_private {
>  	unsigned int fdi_pll_freq;
>  	unsigned int czclk_freq;
>  =

> -	/*
> -	 * For reading holding any crtc lock is sufficient,
> -	 * for writing must hold all of them.
> -	 */
> -	struct intel_cdclk_state cdclk_state;
> -
>  	struct {
>  		/* The current hardware cdclk configuration */
>  		struct intel_cdclk_config hw;
>  =

>  		/* cdclk, divider, and ratio table from bspec */
>  		const struct intel_cdclk_vals *table;
> +
> +		struct intel_global_obj obj;
>  	} cdclk;
>  =

>  	/**
> @@ -1104,8 +1073,8 @@ struct drm_i915_private {
>  	struct list_head global_obj_list;
>  =

>  	/*
> -	 * For reading active_pipes, cdclk_state holding any crtc
> -	 * lock is sufficient, for writing must hold all of them.
> +	 * For reading active_pipes holding any crtc lock is
> +	 * sufficient, for writing must hold all of them.
>  	 */
>  	u8 active_pipes;
>  =

> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
