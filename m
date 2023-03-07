Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8776ADEAF
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 13:28:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EDE910E123;
	Tue,  7 Mar 2023 12:28:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A0E010E123
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 12:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678192116; x=1709728116;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=KkT9axtCnUgBnie5wM3hOCYYAB1reoLSPINZhvMnoJk=;
 b=GQ3NLnOcYSU4K1sVq82P4owgK67fFah2lnwW9JdgmiIWW+99E8xsyr7B
 blTm/VFs0nESZ+kC31l9xd8TgrhdY+pDjb+OukWGR2ZGq1gqN5t+SY0o1
 6c0LbeGvZMLRz/3yVpU2Q2NhJ3g0zY2lWKmUwFZbZSv5VdFlBomDDz+Aj
 SR1JwpRPpfTvrbOhTgY/okaOQlIpvyhevf5XNPJrA8BWmCmBIH43Nd37i
 hUm2P/MxV8017JTHbpFnDn86O+Fz7Pit4xEf+oBwXCP9f+YNprGbvaaSL
 H3CTnl9cSS7WzBphBvuEZmJH3zd5Ht6aEKs9bPoeO0gSSR6nbLlZGAsjY Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="422110180"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="422110180"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 04:28:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="678921666"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="678921666"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.155])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 04:28:34 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230306152841.6563-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230306152841.6563-1-ville.syrjala@linux.intel.com>
 <20230306152841.6563-3-ville.syrjala@linux.intel.com>
Date: Tue, 07 Mar 2023 14:28:31 +0200
Message-ID: <877cvssq34.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Relocate
 intel_crtc_update_active_timings()
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

On Mon, 06 Mar 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Move intel_crtc_update_active_timings() into intel_vblank.c
> where it more properly belongs.

Wish the function naming could reflect the file name, but hey, if it
declutters intel_display.c it's good!

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Also do the s/dev_priv/i915/ modernization rename while at it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 84 ------------------
>  drivers/gpu/drm/i915/display/intel_display.h  |  1 -
>  .../drm/i915/display/intel_modeset_setup.c    |  1 +
>  drivers/gpu/drm/i915/display/intel_vblank.c   | 85 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vblank.h   |  2 +
>  5 files changed, 88 insertions(+), 85 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 020320468967..add3bed3d2e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5903,90 +5903,6 @@ int intel_modeset_all_pipes(struct intel_atomic_st=
ate *state,
>  	return 0;
>  }
>=20=20
> -void intel_crtc_update_active_timings(const struct intel_crtc_state *crt=
c_state)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	struct drm_display_mode adjusted_mode;
> -	int vmax_vblank_start =3D 0;
> -	unsigned long irqflags;
> -
> -	drm_mode_init(&adjusted_mode, &crtc_state->hw.adjusted_mode);
> -
> -	if (crtc_state->vrr.enable) {
> -		adjusted_mode.crtc_vtotal =3D crtc_state->vrr.vmax;
> -		adjusted_mode.crtc_vblank_end =3D crtc_state->vrr.vmax;
> -		adjusted_mode.crtc_vblank_start =3D intel_vrr_vmin_vblank_start(crtc_s=
tate);
> -		vmax_vblank_start =3D intel_vrr_vmax_vblank_start(crtc_state);
> -	}
> -
> -	/*
> -	 * Belts and suspenders locking to guarantee everyone sees 100%
> -	 * consistent state during fastset seamless refresh rate changes.
> -	 *
> -	 * vblank_time_lock takes care of all drm_vblank.c stuff, and
> -	 * uncore.lock takes care of __intel_get_crtc_scanline() which
> -	 * may get called elsewhere as well.
> -	 *
> -	 * TODO maybe just protect everything (including
> -	 * __intel_get_crtc_scanline()) with vblank_time_lock?
> -	 * Need to audit everything to make sure it's safe.
> -	 */
> -	spin_lock_irqsave(&dev_priv->drm.vblank_time_lock, irqflags);
> -	spin_lock(&dev_priv->uncore.lock);
> -
> -	drm_calc_timestamping_constants(&crtc->base, &adjusted_mode);
> -
> -	crtc->vmax_vblank_start =3D vmax_vblank_start;
> -
> -	crtc->mode_flags =3D crtc_state->mode_flags;
> -
> -	/*
> -	 * The scanline counter increments at the leading edge of hsync.
> -	 *
> -	 * On most platforms it starts counting from vtotal-1 on the
> -	 * first active line. That means the scanline counter value is
> -	 * always one less than what we would expect. Ie. just after
> -	 * start of vblank, which also occurs at start of hsync (on the
> -	 * last active line), the scanline counter will read vblank_start-1.
> -	 *
> -	 * On gen2 the scanline counter starts counting from 1 instead
> -	 * of vtotal-1, so we have to subtract one (or rather add vtotal-1
> -	 * to keep the value positive), instead of adding one.
> -	 *
> -	 * On HSW+ the behaviour of the scanline counter depends on the output
> -	 * type. For DP ports it behaves like most other platforms, but on HDMI
> -	 * there's an extra 1 line difference. So we need to add two instead of
> -	 * one to the value.
> -	 *
> -	 * On VLV/CHV DSI the scanline counter would appear to increment
> -	 * approx. 1/3 of a scanline before start of vblank. Unfortunately
> -	 * that means we can't tell whether we're in vblank or not while
> -	 * we're on that particular line. We must still set scanline_offset
> -	 * to 1 so that the vblank timestamps come out correct when we query
> -	 * the scanline counter from within the vblank interrupt handler.
> -	 * However if queried just before the start of vblank we'll get an
> -	 * answer that's slightly in the future.
> -	 */
> -	if (DISPLAY_VER(dev_priv) =3D=3D 2) {
> -		int vtotal;
> -
> -		vtotal =3D adjusted_mode.crtc_vtotal;
> -		if (adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
> -			vtotal /=3D 2;
> -
> -		crtc->scanline_offset =3D vtotal - 1;
> -	} else if (HAS_DDI(dev_priv) &&
> -		   intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> -		crtc->scanline_offset =3D 2;
> -	} else {
> -		crtc->scanline_offset =3D 1;
> -	}
> -
> -	spin_unlock(&dev_priv->uncore.lock);
> -	spin_unlock_irqrestore(&dev_priv->drm.vblank_time_lock, irqflags);
> -}
> -
>  /*
>   * This implements the workaround described in the "notes" section of th=
e mode
>   * set sequence documentation. When going from no pipes or single pipe to
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 50285fb4fcf5..ce97cb72f6d3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -422,7 +422,6 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_sta=
te *crtc_state);
>  bool intel_pipe_config_compare(const struct intel_crtc_state *current_co=
nfig,
>  			       const struct intel_crtc_state *pipe_config,
>  			       bool fastset);
> -void intel_crtc_update_active_timings(const struct intel_crtc_state *crt=
c_state);
>=20=20
>  void intel_plane_destroy(struct drm_plane *plane);
>  void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers=
/gpu/drm/i915/display/intel_modeset_setup.c
> index 60f71e6f0491..c51209a3d36a 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -26,6 +26,7 @@
>  #include "intel_modeset_setup.h"
>  #include "intel_pch_display.h"
>  #include "intel_pm.h"
> +#include "intel_vblank.h"
>  #include "intel_wm.h"
>  #include "skl_watermark.h"
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/dr=
m/i915/display/intel_vblank.c
> index 571f5dda1e66..48bf3923af11 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -8,6 +8,7 @@
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_vblank.h"
> +#include "intel_vrr.h"
>=20=20
>  /*
>   * This timing diagram depicts the video signal in and
> @@ -439,3 +440,87 @@ void intel_wait_for_pipe_scanline_moving(struct inte=
l_crtc *crtc)
>  {
>  	wait_for_pipe_scanline_moving(crtc, true);
>  }
> +
> +void intel_crtc_update_active_timings(const struct intel_crtc_state *crt=
c_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct drm_display_mode adjusted_mode;
> +	int vmax_vblank_start =3D 0;
> +	unsigned long irqflags;
> +
> +	drm_mode_init(&adjusted_mode, &crtc_state->hw.adjusted_mode);
> +
> +	if (crtc_state->vrr.enable) {
> +		adjusted_mode.crtc_vtotal =3D crtc_state->vrr.vmax;
> +		adjusted_mode.crtc_vblank_end =3D crtc_state->vrr.vmax;
> +		adjusted_mode.crtc_vblank_start =3D intel_vrr_vmin_vblank_start(crtc_s=
tate);
> +		vmax_vblank_start =3D intel_vrr_vmax_vblank_start(crtc_state);
> +	}
> +
> +	/*
> +	 * Belts and suspenders locking to guarantee everyone sees 100%
> +	 * consistent state during fastset seamless refresh rate changes.
> +	 *
> +	 * vblank_time_lock takes care of all drm_vblank.c stuff, and
> +	 * uncore.lock takes care of __intel_get_crtc_scanline() which
> +	 * may get called elsewhere as well.
> +	 *
> +	 * TODO maybe just protect everything (including
> +	 * __intel_get_crtc_scanline()) with vblank_time_lock?
> +	 * Need to audit everything to make sure it's safe.
> +	 */
> +	spin_lock_irqsave(&i915->drm.vblank_time_lock, irqflags);
> +	spin_lock(&i915->uncore.lock);
> +
> +	drm_calc_timestamping_constants(&crtc->base, &adjusted_mode);
> +
> +	crtc->vmax_vblank_start =3D vmax_vblank_start;
> +
> +	crtc->mode_flags =3D crtc_state->mode_flags;
> +
> +	/*
> +	 * The scanline counter increments at the leading edge of hsync.
> +	 *
> +	 * On most platforms it starts counting from vtotal-1 on the
> +	 * first active line. That means the scanline counter value is
> +	 * always one less than what we would expect. Ie. just after
> +	 * start of vblank, which also occurs at start of hsync (on the
> +	 * last active line), the scanline counter will read vblank_start-1.
> +	 *
> +	 * On gen2 the scanline counter starts counting from 1 instead
> +	 * of vtotal-1, so we have to subtract one (or rather add vtotal-1
> +	 * to keep the value positive), instead of adding one.
> +	 *
> +	 * On HSW+ the behaviour of the scanline counter depends on the output
> +	 * type. For DP ports it behaves like most other platforms, but on HDMI
> +	 * there's an extra 1 line difference. So we need to add two instead of
> +	 * one to the value.
> +	 *
> +	 * On VLV/CHV DSI the scanline counter would appear to increment
> +	 * approx. 1/3 of a scanline before start of vblank. Unfortunately
> +	 * that means we can't tell whether we're in vblank or not while
> +	 * we're on that particular line. We must still set scanline_offset
> +	 * to 1 so that the vblank timestamps come out correct when we query
> +	 * the scanline counter from within the vblank interrupt handler.
> +	 * However if queried just before the start of vblank we'll get an
> +	 * answer that's slightly in the future.
> +	 */
> +	if (DISPLAY_VER(i915) =3D=3D 2) {
> +		int vtotal;
> +
> +		vtotal =3D adjusted_mode.crtc_vtotal;
> +		if (adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
> +			vtotal /=3D 2;
> +
> +		crtc->scanline_offset =3D vtotal - 1;
> +	} else if (HAS_DDI(i915) &&
> +		   intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> +		crtc->scanline_offset =3D 2;
> +	} else {
> +		crtc->scanline_offset =3D 1;
> +	}
> +
> +	spin_unlock(&i915->uncore.lock);
> +	spin_unlock_irqrestore(&i915->drm.vblank_time_lock, irqflags);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/dr=
m/i915/display/intel_vblank.h
> index c9fea2c2a990..0884db7e76ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.h
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.h
> @@ -11,6 +11,7 @@
>=20=20
>  struct drm_crtc;
>  struct intel_crtc;
> +struct intel_crtc_state;
>=20=20
>  u32 i915_get_vblank_counter(struct drm_crtc *crtc);
>  u32 g4x_get_vblank_counter(struct drm_crtc *crtc);
> @@ -19,5 +20,6 @@ bool intel_crtc_get_vblank_timestamp(struct drm_crtc *c=
rtc, int *max_error,
>  int intel_get_crtc_scanline(struct intel_crtc *crtc);
>  void intel_wait_for_pipe_scanline_stopped(struct intel_crtc *crtc);
>  void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc);
> +void intel_crtc_update_active_timings(const struct intel_crtc_state *crt=
c_state);
>=20=20
>  #endif /* __INTEL_VBLANK_H__ */

--=20
Jani Nikula, Intel Open Source Graphics Center
