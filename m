Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7414B3A1318
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 13:44:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94A676E038;
	Wed,  9 Jun 2021 11:44:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 674B66E038
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 11:44:36 +0000 (UTC)
IronPort-SDR: 3LID1WktXRN8q/r04DtINDL7jflHGSr7KkoYKfzpcV9ABlTaDrpIvwxca1pH3TPc4eR3LeL0Pu
 vjsc6LPf/Gkg==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="226423196"
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="226423196"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 04:44:35 -0700
IronPort-SDR: NmVTaJnYeYQVOXihl+yiqEA6p4Z7R3rdj+XcAstWRyVQzi72bEzkOQPmsmoZo1NQf40Hg/1uQ9
 rjrn4pQc9IQg==
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="402290170"
Received: from akshayka-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.254.35.119])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 04:44:35 -0700
Date: Wed, 9 Jun 2021 07:44:33 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <YMCpoTBisGKObOiH@intel.com>
References: <20210609085632.22026-1-ville.syrjala@linux.intel.com>
 <20210609085632.22026-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210609085632.22026-5-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Clean up pre-skl wm calling
 convention
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

On Wed, Jun 09, 2021 at 11:56:30AM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Just pass the full atomic state+crtc to the pre-skl watermark
> functions, and clean up the types/variable names around the area.
> =

> Note that having both .compute_pipe_wm() and .compute_intermediate_wm()
> is entirely redundant now. We could unify them to a single vfunc.
> But let's do this one step at a time.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  5 +-
>  drivers/gpu/drm/i915/i915_drv.h              |  6 +-
>  drivers/gpu/drm/i915/intel_pm.c              | 97 ++++++++++----------
>  3 files changed, 58 insertions(+), 50 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 1615501685c9..62221243fca9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7288,12 +7288,13 @@ static int intel_crtc_atomic_check(struct intel_a=
tomic_state *state,
>  	}
>  =

>  	if (dev_priv->display.compute_pipe_wm) {
> -		ret =3D dev_priv->display.compute_pipe_wm(crtc_state);
> +		ret =3D dev_priv->display.compute_pipe_wm(state, crtc);
>  		if (ret) {
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "Target pipe watermarks are invalid\n");
>  			return ret;
>  		}
> +
>  	}
>  =

>  	if (dev_priv->display.compute_intermediate_wm) {
> @@ -7306,7 +7307,7 @@ static int intel_crtc_atomic_check(struct intel_ato=
mic_state *state,
>  		 * old state and the new state.  We can program these
>  		 * immediately.
>  		 */
> -		ret =3D dev_priv->display.compute_intermediate_wm(crtc_state);
> +		ret =3D dev_priv->display.compute_intermediate_wm(state, crtc);
>  		if (ret) {
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "No valid intermediate pipe watermarks are possible\n");
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 38ff2fb89744..e9cf0eaad7f8 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -270,8 +270,10 @@ struct drm_i915_display_funcs {
>  	int (*bw_calc_min_cdclk)(struct intel_atomic_state *state);
>  	int (*get_fifo_size)(struct drm_i915_private *dev_priv,
>  			     enum i9xx_plane_id i9xx_plane);
> -	int (*compute_pipe_wm)(struct intel_crtc_state *crtc_state);
> -	int (*compute_intermediate_wm)(struct intel_crtc_state *crtc_state);
> +	int (*compute_pipe_wm)(struct intel_atomic_state *state,
> +			       struct intel_crtc *crtc);
> +	int (*compute_intermediate_wm)(struct intel_atomic_state *state,
> +				       struct intel_crtc *crtc);
>  	void (*initial_watermarks)(struct intel_atomic_state *state,
>  				   struct intel_crtc *crtc);
>  	void (*atomic_update_watermarks)(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 7ce9537fa2c7..dd682c64daf0 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -1370,11 +1370,11 @@ static bool g4x_compute_fbc_en(const struct g4x_w=
m_state *wm_state,
>  	return true;
>  }
>  =

> -static int g4x_compute_pipe_wm(struct intel_crtc_state *crtc_state)
> +static int g4x_compute_pipe_wm(struct intel_atomic_state *state,
> +			       struct intel_crtc *crtc)
>  {
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct intel_atomic_state *state =3D
> -		to_intel_atomic_state(crtc_state->uapi.state);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct g4x_wm_state *wm_state =3D &crtc_state->wm.g4x.optimal;
>  	int num_active_planes =3D hweight8(crtc_state->active_planes &
>  					 ~BIT(PLANE_CURSOR));
> @@ -1451,20 +1451,21 @@ static int g4x_compute_pipe_wm(struct intel_crtc_=
state *crtc_state)
>  	return 0;
>  }
>  =

> -static int g4x_compute_intermediate_wm(struct intel_crtc_state *new_crtc=
_state)
> +static int g4x_compute_intermediate_wm(struct intel_atomic_state *state,
> +				       struct intel_crtc *crtc)
>  {
> -	struct intel_crtc *crtc =3D to_intel_crtc(new_crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct intel_crtc_state *new_crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	const struct intel_crtc_state *old_crtc_state =3D
> +		intel_atomic_get_old_crtc_state(state, crtc);
>  	struct g4x_wm_state *intermediate =3D &new_crtc_state->wm.g4x.intermedi=
ate;
>  	const struct g4x_wm_state *optimal =3D &new_crtc_state->wm.g4x.optimal;
> -	struct intel_atomic_state *intel_state =3D
> -		to_intel_atomic_state(new_crtc_state->uapi.state);
> -	const struct intel_crtc_state *old_crtc_state =3D
> -		intel_atomic_get_old_crtc_state(intel_state, crtc);
>  	const struct g4x_wm_state *active =3D &old_crtc_state->wm.g4x.optimal;
>  	enum plane_id plane_id;
>  =

> -	if (!new_crtc_state->hw.active || drm_atomic_crtc_needs_modeset(&new_cr=
tc_state->uapi)) {
> +	if (!new_crtc_state->hw.active ||
> +	    drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi)) {
>  		*intermediate =3D *optimal;
>  =

>  		intermediate->cxsr =3D false;
> @@ -1890,12 +1891,12 @@ static bool vlv_raw_crtc_wm_is_valid(const struct=
 intel_crtc_state *crtc_state,
>  		vlv_raw_plane_wm_is_valid(crtc_state, PLANE_CURSOR, level);
>  }
>  =

> -static int vlv_compute_pipe_wm(struct intel_crtc_state *crtc_state)
> +static int vlv_compute_pipe_wm(struct intel_atomic_state *state,
> +			       struct intel_crtc *crtc)
>  {
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	struct intel_atomic_state *state =3D
> -		to_intel_atomic_state(crtc_state->uapi.state);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct vlv_wm_state *wm_state =3D &crtc_state->wm.vlv.optimal;
>  	const struct vlv_fifo_state *fifo_state =3D
>  		&crtc_state->wm.vlv.fifo_state;
> @@ -2095,19 +2096,20 @@ static void vlv_atomic_update_fifo(struct intel_a=
tomic_state *state,
>  =

>  #undef VLV_FIFO
>  =

> -static int vlv_compute_intermediate_wm(struct intel_crtc_state *new_crtc=
_state)
> +static int vlv_compute_intermediate_wm(struct intel_atomic_state *state,
> +				       struct intel_crtc *crtc)
>  {
> -	struct intel_crtc *crtc =3D to_intel_crtc(new_crtc_state->uapi.crtc);
> +	struct intel_crtc_state *new_crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	const struct intel_crtc_state *old_crtc_state =3D
> +		intel_atomic_get_old_crtc_state(state, crtc);
>  	struct vlv_wm_state *intermediate =3D &new_crtc_state->wm.vlv.intermedi=
ate;
>  	const struct vlv_wm_state *optimal =3D &new_crtc_state->wm.vlv.optimal;
> -	struct intel_atomic_state *intel_state =3D
> -		to_intel_atomic_state(new_crtc_state->uapi.state);
> -	const struct intel_crtc_state *old_crtc_state =3D
> -		intel_atomic_get_old_crtc_state(intel_state, crtc);
>  	const struct vlv_wm_state *active =3D &old_crtc_state->wm.vlv.optimal;
>  	int level;
>  =

> -	if (!new_crtc_state->hw.active || drm_atomic_crtc_needs_modeset(&new_cr=
tc_state->uapi)) {
> +	if (!new_crtc_state->hw.active ||
> +	    drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi)) {
>  		*intermediate =3D *optimal;
>  =

>  		intermediate->cxsr =3D false;
> @@ -3144,10 +3146,12 @@ static bool ilk_validate_pipe_wm(const struct drm=
_i915_private *dev_priv,
>  }
>  =

>  /* Compute new watermarks for the pipe */
> -static int ilk_compute_pipe_wm(struct intel_crtc_state *crtc_state)
> +static int ilk_compute_pipe_wm(struct intel_atomic_state *state,
> +			       struct intel_crtc *crtc)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);

I didn't see much advantage on changing 1 to 2 arguments when you need the
previous one anyway.

But maybe I'm missing some other patch like the possible clean-up
mentioned at the commit message above...

anyway the code looks correct and no blocker here, so up to you:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  	struct intel_pipe_wm *pipe_wm;
>  	struct intel_plane *plane;
>  	const struct intel_plane_state *plane_state;
> @@ -3220,16 +3224,16 @@ static int ilk_compute_pipe_wm(struct intel_crtc_=
state *crtc_state)
>   * state and the new state.  These can be programmed to the hardware
>   * immediately.
>   */
> -static int ilk_compute_intermediate_wm(struct intel_crtc_state *newstate)
> +static int ilk_compute_intermediate_wm(struct intel_atomic_state *state,
> +				       struct intel_crtc *crtc)
>  {
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(newstate->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(intel_crtc->base.dev);
> -	struct intel_pipe_wm *a =3D &newstate->wm.ilk.intermediate;
> -	struct intel_atomic_state *intel_state =3D
> -		to_intel_atomic_state(newstate->uapi.state);
> -	const struct intel_crtc_state *oldstate =3D
> -		intel_atomic_get_old_crtc_state(intel_state, intel_crtc);
> -	const struct intel_pipe_wm *b =3D &oldstate->wm.ilk.optimal;
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct intel_crtc_state *new_crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	const struct intel_crtc_state *old_crtc_state =3D
> +		intel_atomic_get_old_crtc_state(state, crtc);
> +	struct intel_pipe_wm *a =3D &new_crtc_state->wm.ilk.intermediate;
> +	const struct intel_pipe_wm *b =3D &old_crtc_state->wm.ilk.optimal;
>  	int level, max_level =3D ilk_wm_max_level(dev_priv);
>  =

>  	/*
> @@ -3237,9 +3241,10 @@ static int ilk_compute_intermediate_wm(struct inte=
l_crtc_state *newstate)
>  	 * currently active watermarks to get values that are safe both before
>  	 * and after the vblank.
>  	 */
> -	*a =3D newstate->wm.ilk.optimal;
> -	if (!newstate->hw.active || drm_atomic_crtc_needs_modeset(&newstate->ua=
pi) ||
> -	    intel_state->skip_intermediate_wm)
> +	*a =3D new_crtc_state->wm.ilk.optimal;
> +	if (!new_crtc_state->hw.active ||
> +	    drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi) ||
> +	    state->skip_intermediate_wm)
>  		return 0;
>  =

>  	a->pipe_enabled |=3D b->pipe_enabled;
> @@ -3270,8 +3275,8 @@ static int ilk_compute_intermediate_wm(struct intel=
_crtc_state *newstate)
>  	 * If our intermediate WM are identical to the final WM, then we can
>  	 * omit the post-vblank programming; only update if it's different.
>  	 */
> -	if (memcmp(a, &newstate->wm.ilk.optimal, sizeof(*a)) !=3D 0)
> -		newstate->wm.need_postvbl_update =3D true;
> +	if (memcmp(a, &new_crtc_state->wm.ilk.optimal, sizeof(*a)) !=3D 0)
> +		new_crtc_state->wm.need_postvbl_update =3D true;
>  =

>  	return 0;
>  }
> @@ -3283,12 +3288,12 @@ static void ilk_merge_wm_level(struct drm_i915_pr=
ivate *dev_priv,
>  			       int level,
>  			       struct intel_wm_level *ret_wm)
>  {
> -	const struct intel_crtc *intel_crtc;
> +	const struct intel_crtc *crtc;
>  =

>  	ret_wm->enable =3D true;
>  =

> -	for_each_intel_crtc(&dev_priv->drm, intel_crtc) {
> -		const struct intel_pipe_wm *active =3D &intel_crtc->wm.active.ilk;
> +	for_each_intel_crtc(&dev_priv->drm, crtc) {
> +		const struct intel_pipe_wm *active =3D &crtc->wm.active.ilk;
>  		const struct intel_wm_level *wm =3D &active->wm[level];
>  =

>  		if (!active->pipe_enabled)
> @@ -3388,7 +3393,7 @@ static void ilk_compute_wm_results(struct drm_i915_=
private *dev_priv,
>  				   enum intel_ddb_partitioning partitioning,
>  				   struct ilk_wm_values *results)
>  {
> -	struct intel_crtc *intel_crtc;
> +	struct intel_crtc *crtc;
>  	int level, wm_lp;
>  =

>  	results->enable_fbc_wm =3D merged->fbc_wm_enabled;
> @@ -3433,9 +3438,9 @@ static void ilk_compute_wm_results(struct drm_i915_=
private *dev_priv,
>  	}
>  =

>  	/* LP0 register values */
> -	for_each_intel_crtc(&dev_priv->drm, intel_crtc) {
> -		enum pipe pipe =3D intel_crtc->pipe;
> -		const struct intel_pipe_wm *pipe_wm =3D &intel_crtc->wm.active.ilk;
> +	for_each_intel_crtc(&dev_priv->drm, crtc) {
> +		enum pipe pipe =3D crtc->pipe;
> +		const struct intel_pipe_wm *pipe_wm =3D &crtc->wm.active.ilk;
>  		const struct intel_wm_level *r =3D &pipe_wm->wm[0];
>  =

>  		if (drm_WARN_ON(&dev_priv->drm, !r->enable))
> -- =

> 2.31.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
