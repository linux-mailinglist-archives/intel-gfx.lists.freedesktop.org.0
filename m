Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A96F98D3283
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 11:03:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0285D10E398;
	Wed, 29 May 2024 09:03:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c+6xWhIF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC3B110E382
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 09:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716973409; x=1748509409;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=TR72HBZIRW1z0NwouNiid1f8u01cly2xJI9Bd2xtgrc=;
 b=c+6xWhIFmiOX21MNf32p8OMDY7RIlbtwOTdnKYJ/gmwND0s7WQQJzhw3
 NXLzEV4susXhCHFWH57ISQboj8k2jM4HuvHn2No/y7ZywvOp08uXzSTCs
 y9+PJ8TNRhTFNGgTYjzIvv21+oDTTXizgVSoGVLUGxoJKikRY3airWLqC
 pj60j65DhoJwee0+EfeOrVsr54KqsrupvUIK7D/3AJrjh7+EtBlE9g21D
 MVjgngljRH54wxnl//Nk1uEzQjGQvGEwWSJweH4Ko4RNL4B/826KzHQNX
 BErt3J8LC6cIAQ8hY/dTiZjkyWj/V8pfEbi7QjIjq5WQOGA/dXwwVtoZY g==;
X-CSE-ConnectionGUID: XAYSnAMeQiSQV4RyQLWIhA==
X-CSE-MsgGUID: oyjEwyj7Tmmu0l/bIhwYiA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="38751275"
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="38751275"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:03:29 -0700
X-CSE-ConnectionGUID: k1B/xCB9R4e7ejsAaBXXGg==
X-CSE-MsgGUID: w4CXk6ANSISCFzADUiIr6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="35983138"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:03:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/7] drm/i915: Reuse intel_mode_vblank_start()
In-Reply-To: <20240528185647.7765-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240528185647.7765-1-ville.syrjala@linux.intel.com>
 <20240528185647.7765-2-ville.syrjala@linux.intel.com>
Date: Wed, 29 May 2024 12:03:27 +0300
Message-ID: <87y17tj8gw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Tue, 28 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Replace a few hand rolled copies of intel_mode_vblank_start() with
> the real thing.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c    | 10 +++-------
>  drivers/gpu/drm/i915/display/intel_vblank.c |  9 +++------
>  drivers/gpu/drm/i915/display/intel_vblank.h |  3 +++
>  3 files changed, 9 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i=
915/display/intel_dsb.c
> index 4baaa92ceaec..319fbebd7008 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -328,14 +328,10 @@ static int intel_dsb_dewake_scanline(const struct i=
ntel_crtc_state *crtc_state)
>  	unsigned int latency =3D skl_watermark_max_latency(i915, 0);
>  	int vblank_start;
>=20=20
> -	if (crtc_state->vrr.enable) {
> +	if (crtc_state->vrr.enable)
>  		vblank_start =3D intel_vrr_vmin_vblank_start(crtc_state);
> -	} else {
> -		vblank_start =3D adjusted_mode->crtc_vblank_start;
> -
> -		if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
> -			vblank_start =3D DIV_ROUND_UP(vblank_start, 2);
> -	}
> +	else
> +		vblank_start =3D intel_mode_vblank_start(adjusted_mode);
>=20=20
>  	return max(0, vblank_start - intel_usecs_to_scanlines(adjusted_mode, la=
tency));
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/dr=
m/i915/display/intel_vblank.c
> index 951190bcbc50..1f57596f8208 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -89,9 +89,7 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
>=20=20
>  	htotal =3D mode->crtc_htotal;
>  	hsync_start =3D mode->crtc_hsync_start;
> -	vbl_start =3D mode->crtc_vblank_start;
> -	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
> -		vbl_start =3D DIV_ROUND_UP(vbl_start, 2);
> +	vbl_start =3D intel_mode_vblank_start(mode);
>=20=20
>  	/* Convert to pixel count */
>  	vbl_start *=3D htotal;
> @@ -313,11 +311,10 @@ static bool i915_get_crtc_scanoutpos(struct drm_crt=
c *_crtc,
>  	htotal =3D mode->crtc_htotal;
>  	hsync_start =3D mode->crtc_hsync_start;
>  	vtotal =3D mode->crtc_vtotal;
> -	vbl_start =3D mode->crtc_vblank_start;
> +	vbl_start =3D intel_mode_vblank_start(mode);
>  	vbl_end =3D mode->crtc_vblank_end;
>=20=20
>  	if (mode->flags & DRM_MODE_FLAG_INTERLACE) {
> -		vbl_start =3D DIV_ROUND_UP(vbl_start, 2);
>  		vbl_end /=3D 2;
>  		vtotal /=3D 2;
>  	}
> @@ -577,7 +574,7 @@ void intel_crtc_update_active_timings(const struct in=
tel_crtc_state *crtc_state,
>  	spin_unlock_irqrestore(&i915->drm.vblank_time_lock, irqflags);
>  }
>=20=20
> -static int intel_mode_vblank_start(const struct drm_display_mode *mode)
> +int intel_mode_vblank_start(const struct drm_display_mode *mode)
>  {
>  	int vblank_start =3D mode->crtc_vblank_start;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/dr=
m/i915/display/intel_vblank.h
> index ec6c3da3eeac..08825a4d8fb7 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.h
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.h
> @@ -10,6 +10,7 @@
>  #include <linux/types.h>
>=20=20
>  struct drm_crtc;
> +struct drm_display_mode;
>  struct intel_crtc;
>  struct intel_crtc_state;
>=20=20
> @@ -19,6 +20,8 @@ struct intel_vblank_evade_ctx {
>  	bool need_vlv_dsi_wa;
>  };
>=20=20
> +int intel_mode_vblank_start(const struct drm_display_mode *mode);
> +
>  void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_sta=
te,
>  			     const struct intel_crtc_state *new_crtc_state,
>  			     struct intel_vblank_evade_ctx *evade);

--=20
Jani Nikula, Intel
