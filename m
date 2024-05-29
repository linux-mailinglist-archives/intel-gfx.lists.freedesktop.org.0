Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C94AD8D328D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 11:06:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0F5010F520;
	Wed, 29 May 2024 09:06:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ltPDM1od";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44CCC10F494
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 09:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716973608; x=1748509608;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=0g9JNtVQxGGgbdosjDg97E/Ten0GF4Bagq0KEo7Dffw=;
 b=ltPDM1odrOOuDazZajGuHPvVQnhoyR9P5n5N6i/0Jdwp3Bn7v+qWjCfV
 4lN+av6jJbdoti9ORTPN8dT7PMb/1iCWSCqIOrpN5v3IPSUw1ZKIMjAtI
 flu2qw9eNw8XChp7YiDVvOaROkfjIi3a/djiDAPtB0ItcuGu1Jd3hSwE9
 IVbIL0DvI/K+bdA696PMJBZVt7casMDARGTddeJvRgsiEAVzZ60OvjMlG
 /ieZ4WJd996VhT4Yj/56wfUlO+dFwWgkR7cF9xnwWCzTmmFF6uK12L7CS
 J+4ov2y18/3T3MgoiKfG3dFX/FrqkLp8t2rm1/EbxiGZhDPVDDHWkaxE4 g==;
X-CSE-ConnectionGUID: YTdp+kg+R8ueNYP8ZDoROg==
X-CSE-MsgGUID: sMxgavEgT8KRJKwEVUFkSA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="38751825"
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="38751825"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:06:48 -0700
X-CSE-ConnectionGUID: Ao7FbZSaSxq2XK8ZGrpdvg==
X-CSE-MsgGUID: 0P+aZvURT9+0Pcnbi+wI4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="35320495"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:06:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/7] drm/i915: Extract intel_mode_vtotal()
In-Reply-To: <20240528185647.7765-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240528185647.7765-1-ville.syrjala@linux.intel.com>
 <20240528185647.7765-4-ville.syrjala@linux.intel.com>
Date: Wed, 29 May 2024 12:06:46 +0300
Message-ID: <87sey1j8bd.fsf@intel.com>
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
> We have several copies of code calculating the hardware's
> idea of vtotal. Pull that to a helper, similar to
> intel_mode_vblank_{start,end}().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vblank.c | 40 +++++++++------------
>  drivers/gpu/drm/i915/display/intel_vblank.h |  1 +
>  2 files changed, 18 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/dr=
m/i915/display/intel_vblank.c
> index ba56015f2c40..31fa5867e1a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -207,9 +207,7 @@ static int __intel_get_crtc_scanline(struct intel_crt=
c *crtc)
>  	if (crtc->mode_flags & I915_MODE_FLAG_GET_SCANLINE_FROM_TIMESTAMP)
>  		return __intel_get_crtc_scanline_from_timestamp(crtc);
>=20=20
> -	vtotal =3D mode->crtc_vtotal;
> -	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
> -		vtotal /=3D 2;
> +	vtotal =3D intel_mode_vtotal(mode);
>=20=20
>  	position =3D intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & PIPEDSL_LINE_M=
ASK;
>=20=20
> @@ -249,11 +247,7 @@ int intel_crtc_scanline_to_hw(struct intel_crtc *crt=
c, int scanline)
>  {
>  	const struct drm_vblank_crtc *vblank =3D drm_crtc_vblank_crtc(&crtc->ba=
se);
>  	const struct drm_display_mode *mode =3D &vblank->hwmode;
> -	int vtotal;
> -
> -	vtotal =3D mode->crtc_vtotal;
> -	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
> -		vtotal /=3D 2;
> +	int vtotal =3D intel_mode_vtotal(mode);
>=20=20
>  	return (scanline + vtotal - crtc->scanline_offset) % vtotal;
>  }
> @@ -310,13 +304,10 @@ static bool i915_get_crtc_scanoutpos(struct drm_crt=
c *_crtc,
>=20=20
>  	htotal =3D mode->crtc_htotal;
>  	hsync_start =3D mode->crtc_hsync_start;
> -	vtotal =3D mode->crtc_vtotal;
> +	vtotal =3D intel_mode_vtotal(mode);
>  	vbl_start =3D intel_mode_vblank_start(mode);
>  	vbl_end =3D intel_mode_vblank_end(mode);
>=20=20
> -	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
> -		vtotal /=3D 2;
> -
>  	/*
>  	 * Enter vblank critical section, as we will do multiple
>  	 * timing critical raw register reads, potentially with
> @@ -508,19 +499,12 @@ static int intel_crtc_scanline_offset(const struct =
intel_crtc_state *crtc_state)
>  	 * However if queried just before the start of vblank we'll get an
>  	 * answer that's slightly in the future.
>  	 */
> -	if (DISPLAY_VER(i915) =3D=3D 2) {
> -		int vtotal;
> -
> -		vtotal =3D adjusted_mode->crtc_vtotal;
> -		if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
> -			vtotal /=3D 2;
> -
> -		return vtotal - 1;
> -	} else if (HAS_DDI(i915) && intel_crtc_has_type(crtc_state, INTEL_OUTPU=
T_HDMI)) {
> +	if (DISPLAY_VER(i915) =3D=3D 2)
> +		return intel_mode_vtotal(adjusted_mode) - 1;
> +	else if (HAS_DDI(i915) && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_=
HDMI))
>  		return 2;
> -	} else {
> +	else
>  		return 1;
> -	}
>  }
>=20=20
>  void intel_crtc_update_active_timings(const struct intel_crtc_state *crt=
c_state,
> @@ -592,6 +576,16 @@ int intel_mode_vblank_end(const struct drm_display_m=
ode *mode)
>  	return vblank_end;
>  }
>=20=20
> +int intel_mode_vtotal(const struct drm_display_mode *mode)
> +{
> +	int vtotal =3D mode->crtc_vtotal;
> +
> +	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
> +		vtotal /=3D 2;
> +
> +	return vtotal;
> +}
> +
>  void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_sta=
te,
>  			     const struct intel_crtc_state *new_crtc_state,
>  			     struct intel_vblank_evade_ctx *evade)
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/dr=
m/i915/display/intel_vblank.h
> index 6f11fd070f19..b51ae2c1039e 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.h
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.h
> @@ -22,6 +22,7 @@ struct intel_vblank_evade_ctx {
>=20=20
>  int intel_mode_vblank_start(const struct drm_display_mode *mode);
>  int intel_mode_vblank_end(const struct drm_display_mode *mode);
> +int intel_mode_vtotal(const struct drm_display_mode *mode);
>=20=20
>  void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_sta=
te,
>  			     const struct intel_crtc_state *new_crtc_state,

--=20
Jani Nikula, Intel
