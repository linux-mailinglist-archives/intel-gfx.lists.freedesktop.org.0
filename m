Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C1C86CCC0
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 16:21:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0C0F10E4B2;
	Thu, 29 Feb 2024 15:21:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FKoqlzEx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CABEE10E4B1
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 15:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709220111; x=1740756111;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=1BEKpD69YbMB9yNwoeJRrzk0xbMKkTErR30Ql7xycbw=;
 b=FKoqlzExzBwRa3axngKE2QdK2f+IzcRFE+RaIYoYoU91v0BtBno16oi4
 E1QPlsTAuOslBdmEtuDq1Akwufh3P/8Y0jediwnX7qqwVcw2obTG7b6QV
 JL9aVh3NMUv9QO/p8LMESxxguHkDMtV0j634h2T7BjxaJ33lrp0wGRcaa
 PQjQT9quTDhKdVLD4uDt+qWVNn9lTTFvaWpidVx2RniPSSgOrikLH2zPb
 rreXhL8QpFy5e9rL8XDfYhNVuBqGN76ql1JWt9XWh0NaG7kdMi4RGEPXV
 VxVvbker1zG//G4Rk1zcN1fOORRrzP2BpXtGJPZyhuXQtxRTPGZ5b6YJi A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="29127447"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="29127447"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 07:21:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="12512239"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 07:21:48 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 10/12] drm/i915: Relocate pipe_config_mismatch()
In-Reply-To: <20240215164055.30585-11-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
 <20240215164055.30585-11-ville.syrjala@linux.intel.com>
Date: Thu, 29 Feb 2024 17:21:45 +0200
Message-ID: <87msrj70ty.fsf@intel.com>
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

On Thu, 15 Feb 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Hoist pipe_config_mismatch() upwards a bit so that it can get
> reused by the other mismatch() functions.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 46 ++++++++++----------
>  1 file changed, 23 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index d7f39ad84138..a9dd3632898c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4787,6 +4787,29 @@ intel_compare_buffer(const u8 *a, const u8 *b, siz=
e_t len)
>  	return memcmp(a, b, len) =3D=3D 0;
>  }
>=20=20
> +static void __printf(4, 5)
> +pipe_config_mismatch(bool fastset, const struct intel_crtc *crtc,
> +		     const char *name, const char *format, ...)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct va_format vaf;
> +	va_list args;
> +
> +	va_start(args, format);
> +	vaf.fmt =3D format;
> +	vaf.va =3D &args;
> +
> +	if (fastset)
> +		drm_dbg_kms(&i915->drm,
> +			    "[CRTC:%d:%s] fastset requirement not met in %s %pV\n",
> +			    crtc->base.base.id, crtc->base.name, name, &vaf);
> +	else
> +		drm_err(&i915->drm, "[CRTC:%d:%s] mismatch in %s %pV\n",
> +			crtc->base.base.id, crtc->base.name, name, &vaf);
> +
> +	va_end(args);
> +}
> +
>  static void
>  pipe_config_infoframe_mismatch(bool fastset, const struct intel_crtc *cr=
tc,
>  			       const char *name,
> @@ -4896,29 +4919,6 @@ pipe_config_buffer_mismatch(bool fastset, const st=
ruct intel_crtc *crtc,
>  		       16, 0, b, len, false);
>  }
>=20=20
> -static void __printf(4, 5)
> -pipe_config_mismatch(bool fastset, const struct intel_crtc *crtc,
> -		     const char *name, const char *format, ...)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> -	struct va_format vaf;
> -	va_list args;
> -
> -	va_start(args, format);
> -	vaf.fmt =3D format;
> -	vaf.va =3D &args;
> -
> -	if (fastset)
> -		drm_dbg_kms(&i915->drm,
> -			    "[CRTC:%d:%s] fastset requirement not met in %s %pV\n",
> -			    crtc->base.base.id, crtc->base.name, name, &vaf);
> -	else
> -		drm_err(&i915->drm, "[CRTC:%d:%s] mismatch in %s %pV\n",
> -			crtc->base.base.id, crtc->base.name, name, &vaf);
> -
> -	va_end(args);
> -}
> -
>  static void
>  pipe_config_pll_mismatch(bool fastset,
>  			 const struct intel_crtc *crtc,

--=20
Jani Nikula, Intel
