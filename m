Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 432498D3284
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 11:05:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38F8F10F1BD;
	Wed, 29 May 2024 09:05:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sv4wmRTv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D0AF10EAAD
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 09:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716973508; x=1748509508;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=eteDWhPgz/Tr2TQabVEIym32B/v+I/qHLCasDn08UlY=;
 b=Sv4wmRTvzMkxy0yqX9mLsHMfkrIBDkqRGL4AoQngSxaIIiyQY6cLdhQj
 JkiCKOwHqj/l1lbg+UAMXoO7wuMKsc8MJ9JnXpu1H9X++/6uZH8R6iwK1
 +IvpWWhAe0sIRqOHm4onJSS+PQG07a3z9ppTlOxrs4EBX2DNKvhQWOKEd
 cd92+X2wHJqTIOXsfLxM3USB4mcocpRUIAVZWN5An/XfLz8WTCyHoaf7z
 P7+q3UC+FLa24g1DJYuiERDv7FcZxRkvEfk3gPkz3dFTqWPIqu5whCWfX
 TBi/08goAaqtd+pYcJ88eErnhmFpW+nVg9Ob34xwDcr1UHsEyMgZD5D1I A==;
X-CSE-ConnectionGUID: J86Wcg+ISuCKUAyVdDjouQ==
X-CSE-MsgGUID: f4LBGwrFSPWR/xCoAgFHog==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="38751540"
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="38751540"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:05:07 -0700
X-CSE-ConnectionGUID: OSdp6I1oTNSWaAqdIYDwSg==
X-CSE-MsgGUID: eIx1zwMITCm9f72c25AnHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="35983561"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:05:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/7] drm/i915: Extract intel_mode_vblank_end()
In-Reply-To: <20240528185647.7765-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240528185647.7765-1-ville.syrjala@linux.intel.com>
 <20240528185647.7765-3-ville.syrjala@linux.intel.com>
Date: Wed, 29 May 2024 12:05:06 +0300
Message-ID: <87v82xj8e5.fsf@intel.com>
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
> Extract intel_mode_vblank_end() in the same vein as
> intel_mode_vblank_start(). While we have only one use
> of this it seems nicer to unify the approach.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vblank.c | 16 ++++++++++++----
>  drivers/gpu/drm/i915/display/intel_vblank.h |  1 +
>  2 files changed, 13 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/dr=
m/i915/display/intel_vblank.c
> index 1f57596f8208..ba56015f2c40 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -312,12 +312,10 @@ static bool i915_get_crtc_scanoutpos(struct drm_crt=
c *_crtc,
>  	hsync_start =3D mode->crtc_hsync_start;
>  	vtotal =3D mode->crtc_vtotal;
>  	vbl_start =3D intel_mode_vblank_start(mode);
> -	vbl_end =3D mode->crtc_vblank_end;
> +	vbl_end =3D intel_mode_vblank_end(mode);
>=20=20
> -	if (mode->flags & DRM_MODE_FLAG_INTERLACE) {
> -		vbl_end /=3D 2;
> +	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
>  		vtotal /=3D 2;
> -	}
>=20=20
>  	/*
>  	 * Enter vblank critical section, as we will do multiple
> @@ -584,6 +582,16 @@ int intel_mode_vblank_start(const struct drm_display=
_mode *mode)
>  	return vblank_start;
>  }
>=20=20
> +int intel_mode_vblank_end(const struct drm_display_mode *mode)
> +{
> +	int vblank_end =3D mode->crtc_vblank_end;
> +
> +	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
> +		vblank_end /=3D 2;
> +
> +	return vblank_end;
> +}
> +
>  void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_sta=
te,
>  			     const struct intel_crtc_state *new_crtc_state,
>  			     struct intel_vblank_evade_ctx *evade)
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/dr=
m/i915/display/intel_vblank.h
> index 08825a4d8fb7..6f11fd070f19 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.h
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.h
> @@ -21,6 +21,7 @@ struct intel_vblank_evade_ctx {
>  };
>=20=20
>  int intel_mode_vblank_start(const struct drm_display_mode *mode);
> +int intel_mode_vblank_end(const struct drm_display_mode *mode);
>=20=20
>  void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_sta=
te,
>  			     const struct intel_crtc_state *new_crtc_state,

--=20
Jani Nikula, Intel
