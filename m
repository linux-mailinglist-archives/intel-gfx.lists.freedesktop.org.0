Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62ECD13C6E7
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 16:05:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 987F66EACF;
	Wed, 15 Jan 2020 15:05:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BDC36EACF
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 15:05:07 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 07:05:06 -0800
X-IronPort-AV: E=Sophos;i="5.70,322,1574150400"; d="scan'208";a="218156846"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 07:05:05 -0800
Date: Wed, 15 Jan 2020 17:05:01 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200115150501.GB18295@ideak-desk.fi.intel.com>
References: <20191213133453.22152-1-ville.syrjala@linux.intel.com>
 <20191213133453.22152-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213133453.22152-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/fbc: Move the plane state
 check into the fbc functions
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

On Fri, Dec 13, 2019 at 03:34:50PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Instead of dealing with the presence/absence of the primary
> plane in the higher level pre/post plane update code let's
> move all that into the fbc code itself. Now the higher level
> code doesn't have to think about FBC details anymore.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 26 +++----------
>  drivers/gpu/drm/i915/display/intel_fbc.c     | 40 +++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_fbc.h     | 13 +++----
>  3 files changed, 42 insertions(+), 37 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 8f14352a2193..3e540fcca216 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6013,13 +6013,10 @@ static void intel_post_plane_update(struct intel_=
atomic_state *state,
>  				    struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	struct intel_plane *primary =3D to_intel_plane(crtc->base.primary);
>  	const struct intel_crtc_state *old_crtc_state =3D
>  		intel_atomic_get_old_crtc_state(state, crtc);
>  	const struct intel_crtc_state *new_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> -	const struct intel_plane_state *new_primary_state =3D
> -		intel_atomic_get_new_plane_state(state, primary);
>  	enum pipe pipe =3D crtc->pipe;
>  =

>  	intel_frontbuffer_flip(dev_priv, new_crtc_state->fb_bits);
> @@ -6030,8 +6027,7 @@ static void intel_post_plane_update(struct intel_at=
omic_state *state,
>  	if (hsw_post_update_enable_ips(old_crtc_state, new_crtc_state))
>  		hsw_enable_ips(new_crtc_state);
>  =

> -	if (new_primary_state)
> -		intel_fbc_post_update(crtc);
> +	intel_fbc_post_update(state, crtc);
>  =

>  	if (needs_nv12_wa(old_crtc_state) &&
>  	    !needs_nv12_wa(new_crtc_state))
> @@ -6046,20 +6042,16 @@ static void intel_pre_plane_update(struct intel_a=
tomic_state *state,
>  				   struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	struct intel_plane *primary =3D to_intel_plane(crtc->base.primary);
>  	const struct intel_crtc_state *old_crtc_state =3D
>  		intel_atomic_get_old_crtc_state(state, crtc);
>  	const struct intel_crtc_state *new_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> -	const struct intel_plane_state *new_primary_state =3D
> -		intel_atomic_get_new_plane_state(state, primary);
>  	enum pipe pipe =3D crtc->pipe;
>  =

>  	if (hsw_pre_update_disable_ips(old_crtc_state, new_crtc_state))
>  		hsw_disable_ips(old_crtc_state);
>  =

> -	if (new_primary_state &&
> -	    intel_fbc_pre_update(crtc, new_crtc_state, new_primary_state))
> +	if (intel_fbc_pre_update(state, crtc))
>  		intel_wait_for_vblank(dev_priv, pipe);
>  =

>  	/* Display WA 827 */
> @@ -14289,9 +14281,6 @@ static void intel_update_crtc(struct intel_crtc *=
crtc,
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	bool modeset =3D needs_modeset(new_crtc_state);
> -	struct intel_plane_state *new_plane_state =3D
> -		intel_atomic_get_new_plane_state(state,
> -						 to_intel_plane(crtc->base.primary));
>  =

>  	if (modeset) {
>  		intel_crtc_update_active_timings(new_crtc_state);
> @@ -14314,8 +14303,8 @@ static void intel_update_crtc(struct intel_crtc *=
crtc,
>  =

>  	if (new_crtc_state->update_pipe && !new_crtc_state->enable_fbc)
>  		intel_fbc_disable(crtc);
> -	else if (new_plane_state)
> -		intel_fbc_enable(crtc, new_crtc_state, new_plane_state);
> +	else
> +		intel_fbc_enable(state, crtc);
>  =

>  	/* Perform vblank evasion around commit operation */
>  	intel_pipe_update_start(new_crtc_state);
> @@ -14472,15 +14461,12 @@ static void intel_post_crtc_enable_updates(stru=
ct intel_crtc *crtc,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_crtc_state *old_crtc_state =3D
>  		intel_atomic_get_old_crtc_state(state, crtc);
> -	struct intel_plane_state *new_plane_state =3D
> -		intel_atomic_get_new_plane_state(state,
> -						 to_intel_plane(crtc->base.primary));
>  	bool modeset =3D needs_modeset(new_crtc_state);
>  =

>  	if (new_crtc_state->update_pipe && !new_crtc_state->enable_fbc)
>  		intel_fbc_disable(crtc);
> -	else if (new_plane_state)
> -		intel_fbc_enable(crtc, new_crtc_state, new_plane_state);
> +	else
> +		intel_fbc_enable(state, crtc);
>  =

>  	/* Perform vblank evasion around commit operation */
>  	intel_pipe_update_start(new_crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index a1048ece541e..42504e6353d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -867,10 +867,14 @@ static bool intel_fbc_can_flip_nuke(const struct in=
tel_crtc_state *crtc_state)
>  	return true;
>  }
>  =

> -bool intel_fbc_pre_update(struct intel_crtc *crtc,
> -			  const struct intel_crtc_state *crtc_state,
> -			  const struct intel_plane_state *plane_state)
> +bool intel_fbc_pre_update(struct intel_atomic_state *state,
> +			  struct intel_crtc *crtc)
>  {
> +	struct intel_plane *plane =3D to_intel_plane(crtc->base.primary);
> +	const struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	const struct intel_plane_state *plane_state =3D
> +		intel_atomic_get_new_plane_state(state, plane);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	struct intel_fbc *fbc =3D &dev_priv->fbc;
>  	const char *reason =3D "update pending";
> @@ -879,6 +883,9 @@ bool intel_fbc_pre_update(struct intel_crtc *crtc,
>  	if (!fbc_supported(dev_priv))
>  		return need_vblank_wait;
>  =

> +	if (!plane_state)
> +		return need_vblank_wait;
> +
>  	mutex_lock(&fbc->lock);
>  =

>  	if (fbc->crtc !=3D crtc)
> @@ -967,14 +974,21 @@ static void __intel_fbc_post_update(struct intel_cr=
tc *crtc)
>  		intel_fbc_deactivate(dev_priv, "frontbuffer write");
>  }
>  =

> -void intel_fbc_post_update(struct intel_crtc *crtc)
> +void intel_fbc_post_update(struct intel_atomic_state *state,
> +			   struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct intel_plane *plane =3D to_intel_plane(crtc->base.primary);
> +	const struct intel_plane_state *plane_state =3D
> +		intel_atomic_get_new_plane_state(state, plane);
>  	struct intel_fbc *fbc =3D &dev_priv->fbc;
>  =

>  	if (!fbc_supported(dev_priv))
>  		return;
>  =

> +	if (!plane_state)
> +		return;
> +
>  	mutex_lock(&fbc->lock);
>  	__intel_fbc_post_update(crtc);
>  	mutex_unlock(&fbc->lock);
> @@ -1107,18 +1121,24 @@ void intel_fbc_choose_crtc(struct drm_i915_privat=
e *dev_priv,
>   * intel_fbc_enable multiple times for the same pipe without an
>   * intel_fbc_disable in the middle, as long as it is deactivated.
>   */
> -void intel_fbc_enable(struct intel_crtc *crtc,
> -		      const struct intel_crtc_state *crtc_state,
> -		      const struct intel_plane_state *plane_state)
> +void intel_fbc_enable(struct intel_atomic_state *state,
> +		      struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct intel_plane *plane =3D to_intel_plane(crtc->base.primary);
> +	const struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	const struct intel_plane_state *plane_state =3D
> +		intel_atomic_get_new_plane_state(state, plane);
>  	struct intel_fbc *fbc =3D &dev_priv->fbc;
>  	struct intel_fbc_state_cache *cache =3D &fbc->state_cache;
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  =

>  	if (!fbc_supported(dev_priv))
>  		return;
>  =

> +	if (!plane_state)
> +		return;
> +
>  	mutex_lock(&fbc->lock);
>  =

>  	if (fbc->crtc) {
> @@ -1139,14 +1159,14 @@ void intel_fbc_enable(struct intel_crtc *crtc,
>  =

>  	if (intel_fbc_alloc_cfb(dev_priv,
>  				intel_fbc_calculate_cfb_size(dev_priv, cache),
> -				fb->format->cpp[0])) {
> +				plane_state->hw.fb->format->cpp[0])) {
>  		cache->plane.visible =3D false;
>  		fbc->no_fbc_reason =3D "not enough stolen memory";
>  		goto out;
>  	}
>  =

>  	if ((IS_GEN9_BC(dev_priv) || IS_BROXTON(dev_priv)) &&
> -	    fb->modifier !=3D I915_FORMAT_MOD_X_TILED)
> +	    plane_state->hw.fb->modifier !=3D I915_FORMAT_MOD_X_TILED)
>  		cache->gen9_wa_cfb_stride =3D
>  			DIV_ROUND_UP(cache->plane.src_w, 32 * fbc->threshold) * 8;
>  	else
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i=
915/display/intel_fbc.h
> index c8a5e5098687..6dc1edefe81b 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.h
> @@ -19,14 +19,13 @@ struct intel_plane_state;
>  void intel_fbc_choose_crtc(struct drm_i915_private *dev_priv,
>  			   struct intel_atomic_state *state);
>  bool intel_fbc_is_active(struct drm_i915_private *dev_priv);
> -bool intel_fbc_pre_update(struct intel_crtc *crtc,
> -			  const struct intel_crtc_state *crtc_state,
> -			  const struct intel_plane_state *plane_state);
> -void intel_fbc_post_update(struct intel_crtc *crtc);
> +bool intel_fbc_pre_update(struct intel_atomic_state *state,
> +			  struct intel_crtc *crtc);
> +void intel_fbc_post_update(struct intel_atomic_state *state,
> +			   struct intel_crtc *crtc);
>  void intel_fbc_init(struct drm_i915_private *dev_priv);
> -void intel_fbc_enable(struct intel_crtc *crtc,
> -		      const struct intel_crtc_state *crtc_state,
> -		      const struct intel_plane_state *plane_state);
> +void intel_fbc_enable(struct intel_atomic_state *state,
> +		      struct intel_crtc *crtc);
>  void intel_fbc_disable(struct intel_crtc *crtc);
>  void intel_fbc_global_disable(struct drm_i915_private *dev_priv);
>  void intel_fbc_invalidate(struct drm_i915_private *dev_priv,
> -- =

> 2.23.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
