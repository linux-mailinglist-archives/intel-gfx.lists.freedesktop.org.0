Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F0E4B8445
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 10:30:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4081210E7C3;
	Wed, 16 Feb 2022 09:30:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C755E10E7C3
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 09:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645003823; x=1676539823;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=nwGUPfm8EIy1/jkjZXCEP96vNQoOESyZQWgAG+Odruc=;
 b=mCKyfS3YWMrSx3zIZqqmd4l5FSfjJRbb5Q3ZyHm6empbjj67HMeakmrq
 5oOYKPrASUL5VoX1jmcBidzvTsBFJXl36ddOL2Ruf1D8ABhKcV7V5hJ1y
 gDot3ZLREEb0LTILx3VfMqL1xl8ojdMO6UYrdVnpfkeAeFRFipTilFo4S
 wsK9K3qsA3GBESuop25lDPEx8OwMMg5iSkvVOs8BWGyWIL1aJjCd19aor
 OLf8FfWnQE+1k9QIEmIzxeOa0n0d7RTsAp2Jw1mG/I2M0PtxaL+/Hu5e8
 HqGmd7rQU5G70bpAEdVwc222ZAiFbgeMh6gr8Otbjk8Yp1TRPAK4BEiI6 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="249393204"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="249393204"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 01:30:23 -0800
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="636404247"
Received: from rbilei-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.13.113])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 01:30:21 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220211090629.15555-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
 <20220211090629.15555-2-ville.syrjala@linux.intel.com>
Date: Wed, 16 Feb 2022 11:30:17 +0200
Message-ID: <87bkz75fbq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Move
 intel_plane_atomic_calc_changes() & co. out
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

On Fri, 11 Feb 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Exfiltrate intel_plane_atomic_calc_changes() and its friends from
> intel_display.c to intel_atomic_plane.c since that is a much better
> fit.
>
> While at it also nuke the official looking kernel docs for
> intel_wm_need_update() and flag it for eventual destruction so
> that people don't get any wrong ideas about using it in new code.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 180 +++++++++++++++++
>  .../gpu/drm/i915/display/intel_atomic_plane.h |   4 -
>  drivers/gpu/drm/i915/display/intel_display.c  | 188 ------------------
>  3 files changed, 180 insertions(+), 192 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.c
> index bec02333bdeb..3355eb637eac 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -45,6 +45,7 @@
>  #include "intel_fb_pin.h"
>  #include "intel_pm.h"
>  #include "intel_sprite.h"
> +#include "skl_scaler.h"
>=20=20
>  static void intel_plane_state_reset(struct intel_plane_state *plane_stat=
e,
>  				    struct intel_plane *plane)
> @@ -330,6 +331,185 @@ void intel_plane_set_invisible(struct intel_crtc_st=
ate *crtc_state,
>  	plane_state->uapi.visible =3D false;
>  }
>=20=20
> +/* FIXME nuke when all wm code is atomic */
> +static bool intel_wm_need_update(const struct intel_plane_state *cur,
> +				 struct intel_plane_state *new)
> +{
> +	/* Update watermarks on tiling or size changes. */
> +	if (new->uapi.visible !=3D cur->uapi.visible)
> +		return true;
> +
> +	if (!cur->hw.fb || !new->hw.fb)
> +		return false;
> +
> +	if (cur->hw.fb->modifier !=3D new->hw.fb->modifier ||
> +	    cur->hw.rotation !=3D new->hw.rotation ||
> +	    drm_rect_width(&new->uapi.src) !=3D drm_rect_width(&cur->uapi.src) =
||
> +	    drm_rect_height(&new->uapi.src) !=3D drm_rect_height(&cur->uapi.src=
) ||
> +	    drm_rect_width(&new->uapi.dst) !=3D drm_rect_width(&cur->uapi.dst) =
||
> +	    drm_rect_height(&new->uapi.dst) !=3D drm_rect_height(&cur->uapi.dst=
))
> +		return true;
> +
> +	return false;
> +}
> +
> +static bool intel_plane_is_scaled(const struct intel_plane_state *plane_=
state)
> +{
> +	int src_w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> +	int src_h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
> +	int dst_w =3D drm_rect_width(&plane_state->uapi.dst);
> +	int dst_h =3D drm_rect_height(&plane_state->uapi.dst);
> +
> +	return src_w !=3D dst_w || src_h !=3D dst_h;
> +}
> +
> +static bool intel_plane_do_async_flip(struct intel_plane *plane,
> +				      const struct intel_crtc_state *old_crtc_state,
> +				      const struct intel_crtc_state *new_crtc_state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +
> +	if (!plane->async_flip)
> +		return false;
> +
> +	if (!new_crtc_state->uapi.async_flip)
> +		return false;
> +
> +	/*
> +	 * In platforms after DISPLAY13, we might need to override
> +	 * first async flip in order to change watermark levels
> +	 * as part of optimization.
> +	 * So for those, we are checking if this is a first async flip.
> +	 * For platforms earlier than DISPLAY13 we always do async flip.
> +	 */
> +	return DISPLAY_VER(i915) < 13 || old_crtc_state->uapi.async_flip;
> +}
> +
> +static int intel_plane_atomic_calc_changes(const struct intel_crtc_state=
 *old_crtc_state,
> +					   struct intel_crtc_state *new_crtc_state,
> +					   const struct intel_plane_state *old_plane_state,
> +					   struct intel_plane_state *new_plane_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(new_crtc_state->uapi.crtc);
> +	struct intel_plane *plane =3D to_intel_plane(new_plane_state->uapi.plan=
e);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	bool mode_changed =3D intel_crtc_needs_modeset(new_crtc_state);
> +	bool was_crtc_enabled =3D old_crtc_state->hw.active;
> +	bool is_crtc_enabled =3D new_crtc_state->hw.active;
> +	bool turn_off, turn_on, visible, was_visible;
> +	int ret;
> +
> +	if (DISPLAY_VER(dev_priv) >=3D 9 && plane->id !=3D PLANE_CURSOR) {
> +		ret =3D skl_update_scaler_plane(new_crtc_state, new_plane_state);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	was_visible =3D old_plane_state->uapi.visible;
> +	visible =3D new_plane_state->uapi.visible;
> +
> +	if (!was_crtc_enabled && drm_WARN_ON(&dev_priv->drm, was_visible))
> +		was_visible =3D false;
> +
> +	/*
> +	 * Visibility is calculated as if the crtc was on, but
> +	 * after scaler setup everything depends on it being off
> +	 * when the crtc isn't active.
> +	 *
> +	 * FIXME this is wrong for watermarks. Watermarks should also
> +	 * be computed as if the pipe would be active. Perhaps move
> +	 * per-plane wm computation to the .check_plane() hook, and
> +	 * only combine the results from all planes in the current place?
> +	 */
> +	if (!is_crtc_enabled) {
> +		intel_plane_set_invisible(new_crtc_state, new_plane_state);
> +		visible =3D false;
> +	}
> +
> +	if (!was_visible && !visible)
> +		return 0;
> +
> +	turn_off =3D was_visible && (!visible || mode_changed);
> +	turn_on =3D visible && (!was_visible || mode_changed);
> +
> +	drm_dbg_atomic(&dev_priv->drm,
> +		       "[CRTC:%d:%s] with [PLANE:%d:%s] visible %i -> %i, off %i, on %=
i, ms %i\n",
> +		       crtc->base.base.id, crtc->base.name,
> +		       plane->base.base.id, plane->base.name,
> +		       was_visible, visible,
> +		       turn_off, turn_on, mode_changed);
> +
> +	if (turn_on) {
> +		if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
> +			new_crtc_state->update_wm_pre =3D true;
> +
> +		/* must disable cxsr around plane enable/disable */
> +		if (plane->id !=3D PLANE_CURSOR)
> +			new_crtc_state->disable_cxsr =3D true;
> +	} else if (turn_off) {
> +		if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
> +			new_crtc_state->update_wm_post =3D true;
> +
> +		/* must disable cxsr around plane enable/disable */
> +		if (plane->id !=3D PLANE_CURSOR)
> +			new_crtc_state->disable_cxsr =3D true;
> +	} else if (intel_wm_need_update(old_plane_state, new_plane_state)) {
> +		if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv)) {
> +			/* FIXME bollocks */
> +			new_crtc_state->update_wm_pre =3D true;
> +			new_crtc_state->update_wm_post =3D true;
> +		}
> +	}
> +
> +	if (visible || was_visible)
> +		new_crtc_state->fb_bits |=3D plane->frontbuffer_bit;
> +
> +	/*
> +	 * ILK/SNB DVSACNTR/Sprite Enable
> +	 * IVB SPR_CTL/Sprite Enable
> +	 * "When in Self Refresh Big FIFO mode, a write to enable the
> +	 *  plane will be internally buffered and delayed while Big FIFO
> +	 *  mode is exiting."
> +	 *
> +	 * Which means that enabling the sprite can take an extra frame
> +	 * when we start in big FIFO mode (LP1+). Thus we need to drop
> +	 * down to LP0 and wait for vblank in order to make sure the
> +	 * sprite gets enabled on the next vblank after the register write.
> +	 * Doing otherwise would risk enabling the sprite one frame after
> +	 * we've already signalled flip completion. We can resume LP1+
> +	 * once the sprite has been enabled.
> +	 *
> +	 *
> +	 * WaCxSRDisabledForSpriteScaling:ivb
> +	 * IVB SPR_SCALE/Scaling Enable
> +	 * "Low Power watermarks must be disabled for at least one
> +	 *  frame before enabling sprite scaling, and kept disabled
> +	 *  until sprite scaling is disabled."
> +	 *
> +	 * ILK/SNB DVSASCALE/Scaling Enable
> +	 * "When in Self Refresh Big FIFO mode, scaling enable will be
> +	 *  masked off while Big FIFO mode is exiting."
> +	 *
> +	 * Despite the w/a only being listed for IVB we assume that
> +	 * the ILK/SNB note has similar ramifications, hence we apply
> +	 * the w/a on all three platforms.
> +	 *
> +	 * With experimental results seems this is needed also for primary
> +	 * plane, not only sprite plane.
> +	 */
> +	if (plane->id !=3D PLANE_CURSOR &&
> +	    (IS_IRONLAKE(dev_priv) || IS_SANDYBRIDGE(dev_priv) ||
> +	     IS_IVYBRIDGE(dev_priv)) &&
> +	    (turn_on || (!intel_plane_is_scaled(old_plane_state) &&
> +			 intel_plane_is_scaled(new_plane_state))))
> +		new_crtc_state->disable_lp_wm =3D true;
> +
> +	if (intel_plane_do_async_flip(plane, old_crtc_state, new_crtc_state))
> +		new_plane_state->do_async_flip =3D true;
> +
> +	return 0;
> +}
> +
>  int intel_plane_atomic_check_with_state(const struct intel_crtc_state *o=
ld_crtc_state,
>  					struct intel_crtc_state *new_crtc_state,
>  					const struct intel_plane_state *old_plane_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.h
> index ead789709477..9822b921279c 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> @@ -56,10 +56,6 @@ int intel_plane_atomic_check_with_state(const struct i=
ntel_crtc_state *old_crtc_
>  					struct intel_plane_state *intel_state);
>  int intel_plane_atomic_check(struct intel_atomic_state *state,
>  			     struct intel_plane *plane);
> -int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_c=
rtc_state,
> -				    struct intel_crtc_state *crtc_state,
> -				    const struct intel_plane_state *old_plane_state,
> -				    struct intel_plane_state *plane_state);
>  int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
>  			       struct intel_plane *plane,
>  			       bool *need_cdclk_calc);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 9712e069e3c1..3f68fb656fb5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4605,194 +4605,6 @@ intel_encoder_current_mode(struct intel_encoder *=
encoder)
>  	return mode;
>  }
>=20=20
> -/**
> - * intel_wm_need_update - Check whether watermarks need updating
> - * @cur: current plane state
> - * @new: new plane state
> - *
> - * Check current plane state versus the new one to determine whether
> - * watermarks need to be recalculated.
> - *
> - * Returns true or false.
> - */
> -static bool intel_wm_need_update(const struct intel_plane_state *cur,
> -				 struct intel_plane_state *new)
> -{
> -	/* Update watermarks on tiling or size changes. */
> -	if (new->uapi.visible !=3D cur->uapi.visible)
> -		return true;
> -
> -	if (!cur->hw.fb || !new->hw.fb)
> -		return false;
> -
> -	if (cur->hw.fb->modifier !=3D new->hw.fb->modifier ||
> -	    cur->hw.rotation !=3D new->hw.rotation ||
> -	    drm_rect_width(&new->uapi.src) !=3D drm_rect_width(&cur->uapi.src) =
||
> -	    drm_rect_height(&new->uapi.src) !=3D drm_rect_height(&cur->uapi.src=
) ||
> -	    drm_rect_width(&new->uapi.dst) !=3D drm_rect_width(&cur->uapi.dst) =
||
> -	    drm_rect_height(&new->uapi.dst) !=3D drm_rect_height(&cur->uapi.dst=
))
> -		return true;
> -
> -	return false;
> -}
> -
> -static bool needs_scaling(const struct intel_plane_state *state)
> -{
> -	int src_w =3D drm_rect_width(&state->uapi.src) >> 16;
> -	int src_h =3D drm_rect_height(&state->uapi.src) >> 16;
> -	int dst_w =3D drm_rect_width(&state->uapi.dst);
> -	int dst_h =3D drm_rect_height(&state->uapi.dst);
> -
> -	return (src_w !=3D dst_w || src_h !=3D dst_h);
> -}
> -
> -static bool intel_plane_do_async_flip(struct intel_plane *plane,
> -				      const struct intel_crtc_state *old_crtc_state,
> -				      const struct intel_crtc_state *new_crtc_state)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> -
> -	if (!plane->async_flip)
> -		return false;
> -
> -	if (!new_crtc_state->uapi.async_flip)
> -		return false;
> -
> -	/*
> -	 * In platforms after DISPLAY13, we might need to override
> -	 * first async flip in order to change watermark levels
> -	 * as part of optimization.
> -	 * So for those, we are checking if this is a first async flip.
> -	 * For platforms earlier than DISPLAY13 we always do async flip.
> -	 */
> -	return DISPLAY_VER(i915) < 13 || old_crtc_state->uapi.async_flip;
> -}
> -
> -int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_c=
rtc_state,
> -				    struct intel_crtc_state *new_crtc_state,
> -				    const struct intel_plane_state *old_plane_state,
> -				    struct intel_plane_state *new_plane_state)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(new_crtc_state->uapi.crtc);
> -	struct intel_plane *plane =3D to_intel_plane(new_plane_state->uapi.plan=
e);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	bool mode_changed =3D intel_crtc_needs_modeset(new_crtc_state);
> -	bool was_crtc_enabled =3D old_crtc_state->hw.active;
> -	bool is_crtc_enabled =3D new_crtc_state->hw.active;
> -	bool turn_off, turn_on, visible, was_visible;
> -	int ret;
> -
> -	if (DISPLAY_VER(dev_priv) >=3D 9 && plane->id !=3D PLANE_CURSOR) {
> -		ret =3D skl_update_scaler_plane(new_crtc_state, new_plane_state);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	was_visible =3D old_plane_state->uapi.visible;
> -	visible =3D new_plane_state->uapi.visible;
> -
> -	if (!was_crtc_enabled && drm_WARN_ON(&dev_priv->drm, was_visible))
> -		was_visible =3D false;
> -
> -	/*
> -	 * Visibility is calculated as if the crtc was on, but
> -	 * after scaler setup everything depends on it being off
> -	 * when the crtc isn't active.
> -	 *
> -	 * FIXME this is wrong for watermarks. Watermarks should also
> -	 * be computed as if the pipe would be active. Perhaps move
> -	 * per-plane wm computation to the .check_plane() hook, and
> -	 * only combine the results from all planes in the current place?
> -	 */
> -	if (!is_crtc_enabled) {
> -		intel_plane_set_invisible(new_crtc_state, new_plane_state);
> -		visible =3D false;
> -	}
> -
> -	if (!was_visible && !visible)
> -		return 0;
> -
> -	turn_off =3D was_visible && (!visible || mode_changed);
> -	turn_on =3D visible && (!was_visible || mode_changed);
> -
> -	drm_dbg_atomic(&dev_priv->drm,
> -		       "[CRTC:%d:%s] with [PLANE:%d:%s] visible %i -> %i, off %i, on %=
i, ms %i\n",
> -		       crtc->base.base.id, crtc->base.name,
> -		       plane->base.base.id, plane->base.name,
> -		       was_visible, visible,
> -		       turn_off, turn_on, mode_changed);
> -
> -	if (turn_on) {
> -		if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
> -			new_crtc_state->update_wm_pre =3D true;
> -
> -		/* must disable cxsr around plane enable/disable */
> -		if (plane->id !=3D PLANE_CURSOR)
> -			new_crtc_state->disable_cxsr =3D true;
> -	} else if (turn_off) {
> -		if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
> -			new_crtc_state->update_wm_post =3D true;
> -
> -		/* must disable cxsr around plane enable/disable */
> -		if (plane->id !=3D PLANE_CURSOR)
> -			new_crtc_state->disable_cxsr =3D true;
> -	} else if (intel_wm_need_update(old_plane_state, new_plane_state)) {
> -		if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv)) {
> -			/* FIXME bollocks */
> -			new_crtc_state->update_wm_pre =3D true;
> -			new_crtc_state->update_wm_post =3D true;
> -		}
> -	}
> -
> -	if (visible || was_visible)
> -		new_crtc_state->fb_bits |=3D plane->frontbuffer_bit;
> -
> -	/*
> -	 * ILK/SNB DVSACNTR/Sprite Enable
> -	 * IVB SPR_CTL/Sprite Enable
> -	 * "When in Self Refresh Big FIFO mode, a write to enable the
> -	 *  plane will be internally buffered and delayed while Big FIFO
> -	 *  mode is exiting."
> -	 *
> -	 * Which means that enabling the sprite can take an extra frame
> -	 * when we start in big FIFO mode (LP1+). Thus we need to drop
> -	 * down to LP0 and wait for vblank in order to make sure the
> -	 * sprite gets enabled on the next vblank after the register write.
> -	 * Doing otherwise would risk enabling the sprite one frame after
> -	 * we've already signalled flip completion. We can resume LP1+
> -	 * once the sprite has been enabled.
> -	 *
> -	 *
> -	 * WaCxSRDisabledForSpriteScaling:ivb
> -	 * IVB SPR_SCALE/Scaling Enable
> -	 * "Low Power watermarks must be disabled for at least one
> -	 *  frame before enabling sprite scaling, and kept disabled
> -	 *  until sprite scaling is disabled."
> -	 *
> -	 * ILK/SNB DVSASCALE/Scaling Enable
> -	 * "When in Self Refresh Big FIFO mode, scaling enable will be
> -	 *  masked off while Big FIFO mode is exiting."
> -	 *
> -	 * Despite the w/a only being listed for IVB we assume that
> -	 * the ILK/SNB note has similar ramifications, hence we apply
> -	 * the w/a on all three platforms.
> -	 *
> -	 * With experimental results seems this is needed also for primary
> -	 * plane, not only sprite plane.
> -	 */
> -	if (plane->id !=3D PLANE_CURSOR &&
> -	    (IS_IRONLAKE(dev_priv) || IS_SANDYBRIDGE(dev_priv) ||
> -	     IS_IVYBRIDGE(dev_priv)) &&
> -	    (turn_on || (!needs_scaling(old_plane_state) &&
> -			 needs_scaling(new_plane_state))))
> -		new_crtc_state->disable_lp_wm =3D true;
> -
> -	if (intel_plane_do_async_flip(plane, old_crtc_state, new_crtc_state))
> -		new_plane_state->do_async_flip =3D true;
> -
> -	return 0;
> -}
> -
>  static bool encoders_cloneable(const struct intel_encoder *a,
>  			       const struct intel_encoder *b)
>  {

--=20
Jani Nikula, Intel Open Source Graphics Center
