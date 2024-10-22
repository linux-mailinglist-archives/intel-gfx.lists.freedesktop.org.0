Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E689A9C5D
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 10:25:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA79D10E60D;
	Tue, 22 Oct 2024 08:25:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c+fVX3jO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BB6410E617
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2024 08:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729585532; x=1761121532;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=EVhP9bv1yRPTa7JpO5woUAyOj5Z3dmjrmeg1kiAGGW8=;
 b=c+fVX3jORRFAVBJOvK2Xhzrgz6lJoljDmWuZV9viJ0y06gvPHJt1wO9M
 O7qTpBoYeAfgC6dFM/J3yuUORt4kft9cq46Eo+qi+gdCVHRNwkaHqumch
 guUnfu3yGoSidiz36yp57Ah+amTHk5NuRAjNVP6+Rz7elnXcT/N/2dRvy
 hGq/omg6ddaYL4CJeEQ0lWtsCx61ElypoRn2S5s0PIb6dRFwgmg9grVkt
 kYJnLg5klEo1RahkXBv+/Kf9KDP7hQyl37W/9lRrNO3yZzP41XSiuOImZ
 u4qPL7kcAm/MCVSm1xk6RfXTtAFC8+zAd5nJog8alA7mekAtL0TVbL/OX Q==;
X-CSE-ConnectionGUID: FY+QeUIsRU+6wx4BwZmxJQ==
X-CSE-MsgGUID: ZJrz+6IgQ/q3Yp77Q43SaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39650334"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39650334"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:25:32 -0700
X-CSE-ConnectionGUID: nUWS+Ng3QW2iMdng32p6OA==
X-CSE-MsgGUID: DACPCzNCRLm2YxLPeBxuTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="110559634"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:25:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/9] drm/i915/pfit: Check pfit minimum timings in pre-SKL
In-Reply-To: <20241016143134.26903-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
 <20241016143134.26903-5-ville.syrjala@linux.intel.com>
Date: Tue, 22 Oct 2024 11:25:27 +0300
Message-ID: <87h694wnm0.fsf@intel.com>
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

On Wed, 16 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Transcoder hdisplay/vdisplay have documented minimum limits
> when using the panel fitter. Enforce those limits for all
> pre-SKL platforms. SKL+ handles everything in the unified
> scaler code instead.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 59 +++++++++++++++++++++-
>  1 file changed, 58 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 89cac3b3fd02..dc843892b01b 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -456,6 +456,24 @@ static int intel_pch_pfit_check_scaling(const struct=
 intel_crtc_state *crtc_stat
>  	return 0;
>  }
>=20=20
> +static int intel_pch_pfit_check_timings(const struct intel_crtc_state *c=
rtc_state)
> +{
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	const struct drm_display_mode *adjusted_mode =3D
> +		&crtc_state->hw.adjusted_mode;
> +
> +	if (adjusted_mode->crtc_vdisplay < 7) {
> +		drm_dbg_kms(display->drm,
> +			    "[CRTC:%d:%s] vertical active (%d) below minimum (%d) for pfit\n",
> +			    crtc->base.base.id, crtc->base.name,
> +			    adjusted_mode->crtc_vdisplay, 7);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  /* adjusted_mode has been preset to be the panel's fixed mode */
>  static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>  			     const struct drm_connector_state *conn_state)
> @@ -542,6 +560,10 @@ static int pch_panel_fitting(struct intel_crtc_state=
 *crtc_state,
>  	if (ret)
>  		return ret;
>=20=20
> +	ret =3D intel_pch_pfit_check_timings(crtc_state);
> +	if (ret)
> +		return ret;
> +
>  	return 0;
>  }
>=20=20
> @@ -678,6 +700,38 @@ static void i9xx_scale_aspect(struct intel_crtc_stat=
e *crtc_state,
>  	}
>  }
>=20=20
> +static int intel_gmch_pfit_check_timings(const struct intel_crtc_state *=
crtc_state)
> +{
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	const struct drm_display_mode *adjusted_mode =3D
> +		&crtc_state->hw.adjusted_mode;
> +	int min;
> +
> +	if (DISPLAY_VER(display) >=3D 4)
> +		min =3D 3;
> +	else
> +		min =3D 2;
> +
> +	if (adjusted_mode->crtc_hdisplay < min) {
> +		drm_dbg_kms(display->drm,
> +			    "[CRTC:%d:%s] horizontal active (%d) below minimum (%d) for pfit\=
n",
> +			    crtc->base.base.id, crtc->base.name,
> +			    adjusted_mode->crtc_hdisplay, min);
> +		return -EINVAL;
> +	}
> +
> +	if (adjusted_mode->crtc_vdisplay < min) {
> +		drm_dbg_kms(display->drm,
> +			    "[CRTC:%d:%s] vertical active (%d) below minimum (%d) for pfit\n",
> +			    crtc->base.base.id, crtc->base.name,
> +			    adjusted_mode->crtc_vdisplay, min);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
>  			      const struct drm_connector_state *conn_state)
>  {
> @@ -772,7 +826,10 @@ static int gmch_panel_fitting(struct intel_crtc_stat=
e *crtc_state,
>  	crtc_state->gmch_pfit.pgm_ratios =3D pfit_pgm_ratios;
>  	crtc_state->gmch_pfit.lvds_border_bits =3D border;
>=20=20
> -	return 0;
> +	if ((pfit_control & PFIT_ENABLE) =3D=3D 0)
> +		return 0;
> +
> +	return intel_gmch_pfit_check_timings(crtc_state);
>  }
>=20=20
>  int intel_panel_fitting(struct intel_crtc_state *crtc_state,

--=20
Jani Nikula, Intel
