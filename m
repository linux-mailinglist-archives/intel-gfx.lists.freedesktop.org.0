Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DCF9B615D
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 12:23:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C20A10E05C;
	Wed, 30 Oct 2024 11:23:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZXNUqpZd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 017EA10E05C
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 11:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730287387; x=1761823387;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=wQjkUr5iQTSmxUUqPVwf5ANO04FR8IQC6EkiYi1yZwM=;
 b=ZXNUqpZdc+RQkwvCsLeV8LEvyqtWgv+z/BAxqqkIG/ljwzrbeTAyiH0R
 FzM0qkFAPLwLyTzPUzV+NDjQwVssVX8sV8ddNQKmQIecuuAO44XpyJ2sT
 09r+SYH7DLM7Rf1d61Blz+o0v3LATMxMUpPuNlIFC5uw7W97aIGgaVuhy
 Kd2JvTtrQmHk5XgaaCU9XglpcvyUGTTcitYjZD6nhtBkkIhKW8ZLato7y
 Z9zOQlGq8ohsDlIxpnSIl7bMhxZuIG+SK5+/AUuW2KN6kYCy377dnB7JW
 eXaXK8+uL0+b//T4eeA5YbgpKtsqmBgdVL2nIEXzHWvRT+yudu+kLE597 g==;
X-CSE-ConnectionGUID: HPeBX5z4Ri6pMJkXCwjvKA==
X-CSE-MsgGUID: X07hDh3XRW61stDbWIosOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="47457931"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="47457931"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:23:07 -0700
X-CSE-ConnectionGUID: zF75mAOsTxiTI20yq/UHYw==
X-CSE-MsgGUID: hgH5WrWoRA2Nrnind1N/Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="81840871"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:23:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 02/11] drm/i915/cdclk: Extract intel_cdclk_guardband()
 and intel_cdclk_ppc()
In-Reply-To: <20241029215217.3697-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
 <20241029215217.3697-3-ville.syrjala@linux.intel.com>
Date: Wed, 30 Oct 2024 13:23:02 +0200
Message-ID: <87ttctn8bt.fsf@intel.com>
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

On Tue, 29 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We are duplicating the CDCLK guardband and "pixels per clock"
> figures in two places. Pull those out into small helpers that
> can be used by both places.

Oh, it's not just that, it's great to untangle the conflated two things!

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 50 +++++++++++-----------
>  1 file changed, 26 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 6cef3ca3a069..977fcdaa7372 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2761,23 +2761,34 @@ intel_set_cdclk_post_plane_update(struct intel_at=
omic_state *state)
>  			"Post changing CDCLK to");
>  }
>=20=20
> +/* pixels per CDCLK */
> +static int intel_cdclk_ppc(struct intel_display *display, bool double_wi=
de)
> +{
> +	return DISPLAY_VER(display) >=3D 10 || double_wide ? 2 : 1;
> +}
> +
> +/* max pixel rate as % of CDCLK (not accounting for PPC) */
> +static int intel_cdclk_guardband(struct intel_display *display)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> +
> +	if (DISPLAY_VER(display) >=3D 9 ||
> +	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> +		return 100;
> +	else if (IS_CHERRYVIEW(dev_priv))
> +		return 95;
> +	else
> +		return 90;
> +}
> +
>  static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc=
_state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> +	int ppc =3D intel_cdclk_ppc(display, crtc_state->double_wide);
> +	int guardband =3D intel_cdclk_guardband(display);
>  	int pixel_rate =3D crtc_state->pixel_rate;
>=20=20
> -	if (DISPLAY_VER(display) >=3D 10)
> -		return DIV_ROUND_UP(pixel_rate, 2);
> -	else if (DISPLAY_VER(display) =3D=3D 9 ||
> -		 IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> -		return pixel_rate;
> -	else if (IS_CHERRYVIEW(dev_priv))
> -		return DIV_ROUND_UP(pixel_rate * 100, 95);
> -	else if (crtc_state->double_wide)
> -		return DIV_ROUND_UP(pixel_rate * 100, 90 * 2);
> -	else
> -		return DIV_ROUND_UP(pixel_rate * 100, 90);
> +	return DIV_ROUND_UP(pixel_rate * 100, guardband * ppc);
>  }
>=20=20
>  static int intel_planes_min_cdclk(const struct intel_crtc_state *crtc_st=
ate)
> @@ -3452,20 +3463,11 @@ int intel_modeset_calc_cdclk(struct intel_atomic_=
state *state)
>=20=20
>  static int intel_compute_max_dotclk(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> +	int ppc =3D intel_cdclk_ppc(display, HAS_DOUBLE_WIDE(display));
> +	int guardband =3D intel_cdclk_guardband(display);
>  	int max_cdclk_freq =3D display->cdclk.max_cdclk_freq;
>=20=20
> -	if (DISPLAY_VER(display) >=3D 10)
> -		return 2 * max_cdclk_freq;
> -	else if (DISPLAY_VER(display) =3D=3D 9 ||
> -		 IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> -		return max_cdclk_freq;
> -	else if (IS_CHERRYVIEW(dev_priv))
> -		return max_cdclk_freq*95/100;
> -	else if (HAS_DOUBLE_WIDE(display))
> -		return 2*max_cdclk_freq*90/100;
> -	else
> -		return max_cdclk_freq*90/100;
> +	return ppc * max_cdclk_freq * guardband / 100;
>  }
>=20=20
>  /**

--=20
Jani Nikula, Intel
