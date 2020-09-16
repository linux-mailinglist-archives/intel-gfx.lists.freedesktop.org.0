Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7895626BE66
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 09:44:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0CFF6E9D0;
	Wed, 16 Sep 2020 07:44:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2B2C6E9D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 07:44:16 +0000 (UTC)
IronPort-SDR: rEEz6o/CADnMlQ+FwfeOAhzS5xDLPfeLQUQd6Gaa0ERcpF2jnR7g43KJp/fYaSyGNM+nBFmHO0
 9u2RV9q8elsA==
X-IronPort-AV: E=McAfee;i="6000,8403,9745"; a="147108264"
X-IronPort-AV: E=Sophos;i="5.76,432,1592895600"; d="scan'208";a="147108264"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 00:44:16 -0700
IronPort-SDR: mdrDKlgDvoCwuUX2YrF3pueV6cN5+uLY4gAaRADVpQAk6tJmWT0fvEz4PY566L4Rfnt/xgxSCk
 7ylZQgFSctmQ==
X-IronPort-AV: E=Sophos;i="5.76,432,1592895600"; d="scan'208";a="483196239"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 00:44:13 -0700
Date: Wed, 16 Sep 2020 10:44:14 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200916074414.GA1219@intel.com>
References: <20200902122141.15181-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200902122141.15181-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove the old global state stuff
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

On Wed, Sep 02, 2020 at 03:21:41PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> With the dbuf code mostly converted over to the new global state
> handling we can remove the leftovers of the old global state
> stuff.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c   | 39 -------------------
>  drivers/gpu/drm/i915/display/intel_atomic.h   |  4 --
>  drivers/gpu/drm/i915/display/intel_display.c  | 22 -----------
>  .../drm/i915/display/intel_display_types.h    |  7 ----
>  4 files changed, 72 deletions(-)

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> =

> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/dr=
m/i915/display/intel_atomic.c
> index 630f49b7aa01..86be032bcf96 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -527,8 +527,6 @@ void intel_atomic_state_clear(struct drm_atomic_state=
 *s)
>  	intel_atomic_clear_global_state(state);
>  =

>  	state->dpll_set =3D state->modeset =3D false;
> -	state->global_state_changed =3D false;
> -	state->active_pipes =3D 0;
>  }
>  =

>  struct intel_crtc_state *
> @@ -542,40 +540,3 @@ intel_atomic_get_crtc_state(struct drm_atomic_state =
*state,
>  =

>  	return to_intel_crtc_state(crtc_state);
>  }
> -
> -int _intel_atomic_lock_global_state(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	struct intel_crtc *crtc;
> -
> -	state->global_state_changed =3D true;
> -
> -	for_each_intel_crtc(&dev_priv->drm, crtc) {
> -		int ret;
> -
> -		ret =3D drm_modeset_lock(&crtc->base.mutex,
> -				       state->base.acquire_ctx);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	return 0;
> -}
> -
> -int _intel_atomic_serialize_global_state(struct intel_atomic_state *stat=
e)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	struct intel_crtc *crtc;
> -
> -	state->global_state_changed =3D true;
> -
> -	for_each_intel_crtc(&dev_priv->drm, crtc) {
> -		struct intel_crtc_state *crtc_state;
> -
> -		crtc_state =3D intel_atomic_get_crtc_state(&state->base, crtc);
> -		if (IS_ERR(crtc_state))
> -			return PTR_ERR(crtc_state);
> -	}
> -
> -	return 0;
> -}
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h b/drivers/gpu/dr=
m/i915/display/intel_atomic.h
> index 11146292b06f..285de07011dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.h
> @@ -56,8 +56,4 @@ int intel_atomic_setup_scalers(struct drm_i915_private =
*dev_priv,
>  			       struct intel_crtc *intel_crtc,
>  			       struct intel_crtc_state *crtc_state);
>  =

> -int _intel_atomic_lock_global_state(struct intel_atomic_state *state);
> -
> -int _intel_atomic_serialize_global_state(struct intel_atomic_state *stat=
e);
> -
>  #endif /* __INTEL_ATOMIC_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index dc622af8695c..553e4440442a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14636,16 +14636,8 @@ u8 intel_calc_active_pipes(struct intel_atomic_s=
tate *state,
>  static int intel_modeset_checks(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	int ret;
>  =

>  	state->modeset =3D true;
> -	state->active_pipes =3D intel_calc_active_pipes(state, dev_priv->active=
_pipes);
> -
> -	if (state->active_pipes !=3D dev_priv->active_pipes) {
> -		ret =3D _intel_atomic_lock_global_state(state);
> -		if (ret)
> -			return ret;
> -	}
>  =

>  	if (IS_HASWELL(dev_priv))
>  		return hsw_mode_set_planes_workaround(state);
> @@ -15759,14 +15751,6 @@ static void intel_atomic_track_fbs(struct intel_=
atomic_state *state)
>  					plane->frontbuffer_bit);
>  }
>  =

> -static void assert_global_state_locked(struct drm_i915_private *dev_priv)
> -{
> -	struct intel_crtc *crtc;
> -
> -	for_each_intel_crtc(&dev_priv->drm, crtc)
> -		drm_modeset_lock_assert_held(&crtc->base.mutex);
> -}
> -
>  static int intel_atomic_commit(struct drm_device *dev,
>  			       struct drm_atomic_state *_state,
>  			       bool nonblock)
> @@ -15842,12 +15826,6 @@ static int intel_atomic_commit(struct drm_device=
 *dev,
>  	intel_shared_dpll_swap_state(state);
>  	intel_atomic_track_fbs(state);
>  =

> -	if (state->global_state_changed) {
> -		assert_global_state_locked(dev_priv);
> -
> -		dev_priv->active_pipes =3D state->active_pipes;
> -	}
> -
>  	drm_atomic_state_get(&state->base);
>  	INIT_WORK(&state->base.commit_work, intel_atomic_commit_work);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 413b60337a0b..60f66013e513 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -481,8 +481,6 @@ struct intel_atomic_state {
>  =

>  	bool dpll_set, modeset;
>  =

> -	u8 active_pipes;
> -
>  	struct intel_shared_dpll_state shared_dpll[I915_NUM_PLLS];
>  =

>  	/*
> @@ -493,11 +491,6 @@ struct intel_atomic_state {
>  =

>  	bool rps_interactive;
>  =

> -	/*
> -	 * active_pipes
> -	 */
> -	bool global_state_changed;
> -
>  	struct i915_sw_fence commit_ready;
>  =

>  	struct llist_node freed;
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
