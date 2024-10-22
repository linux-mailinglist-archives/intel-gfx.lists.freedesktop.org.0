Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 464209A9C76
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 10:26:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D49B410E618;
	Tue, 22 Oct 2024 08:26:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RcL7airI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 372D010E618
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2024 08:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729585597; x=1761121597;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=kdsikZnR/GG64IbnFHPueNbwp8ZX5DXK2SOogeMF28I=;
 b=RcL7airIWp6yJLeRZMzaj5L25CAKxqJRMUWbX2bYK0D8wlFzZJAZIgph
 VQoPogChtuR81tNEomjgtxBKhZsdaOKAqdLbWmVDNb5jhow+q+iIVwNaC
 CXsI+TuPiMCAgM5I1uwDQbq5QXOhUq5rB9dzyUpQizjJt15vAbWfYyVuR
 fRpPn5ZKQsPuOdboW2NMBYlR4sSrIBr/wBaP0CGZXb5INs5GqR22vMzLw
 rrr1560x0BFwrgWn7vvPaRwYbIaZ4oRuoURONoAuY0at1vLYGOOfj2NQs
 Kt2H4/tHLPgbo9gwzA6b/tlZZFL3osDeHFqlWfZJrQyy4rgu/pykUjW0B g==;
X-CSE-ConnectionGUID: 38McBUbNQzCPugcQadhwxA==
X-CSE-MsgGUID: HebNlZvhT/miUu5YXYkmpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="32795198"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="32795198"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:26:37 -0700
X-CSE-ConnectionGUID: w96wgGdaQKarptxr4ARM2Q==
X-CSE-MsgGUID: k+4AQPoXRQ60IUHuzca/fA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="80203486"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:26:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 6/9] drm/i915/pfit: Check pfit destination window on
 ILK-BDW
In-Reply-To: <20241016143134.26903-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
 <20241016143134.26903-7-ville.syrjala@linux.intel.com>
Date: Tue, 22 Oct 2024 11:26:33 +0300
Message-ID: <87bjzcwnk6.fsf@intel.com>
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
> The ILK-BDW panel fitter has several restrictions on the
> destination window size. Check for those and reject the
> configuration if things aren't entirely proper.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 55 ++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 593e41907d53..d66ce8537f7d 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -383,6 +383,57 @@ void intel_panel_add_encoder_fixed_mode(struct intel=
_connector *connector,
>  				   "current (BIOS)");
>  }
>=20=20
> +static int intel_pch_pfit_check_dst_window(const struct intel_crtc_state=
 *crtc_state)
> +{
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	const struct drm_display_mode *adjusted_mode =3D
> +		&crtc_state->hw.adjusted_mode;
> +	const struct drm_rect *dst =3D &crtc_state->pch_pfit.dst;
> +	int width =3D drm_rect_width(dst);
> +	int height =3D drm_rect_height(dst);
> +	int x =3D dst->x1;
> +	int y =3D dst->y1;
> +
> +	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE &&
> +	    (y & 1 || height & 1)) {
> +		drm_dbg_kms(display->drm,
> +			    "[CRTC:%d:%s] pfit window (" DRM_RECT_FMT ") misaligned for inter=
laced output\n",
> +			    crtc->base.base.id, crtc->base.name, DRM_RECT_ARG(dst));
> +		return -EINVAL;
> +	}
> +
> +	/*
> +	 * "Restriction : When pipe scaling is enabled, the scaled
> +	 *  output must equal the pipe active area, so Pipe active
> +	 *  size =3D (2 * PF window position) + PF window size."
> +	 *
> +	 * The vertical direction seems more forgiving than the
> +	 * horizontal direction, but still has some issues so
> +	 * let's follow the same hard rule for both.
> +	 */
> +	if (adjusted_mode->crtc_hdisplay !=3D 2 * x + width ||
> +	    adjusted_mode->crtc_vdisplay !=3D 2 * y + height) {
> +		drm_dbg_kms(display->drm,
> +			    "[CRTC:%d:%s] pfit window (" DRM_RECT_FMT ") not centered\n",
> +			    crtc->base.base.id, crtc->base.name, DRM_RECT_ARG(dst));
> +		return -EINVAL;
> +	}
> +
> +	/*
> +	 * "Restriction : The X position must not be programmed
> +	 *  to be 1 (28:16=3D0 0000 0000 0001b)."
> +	 */
> +	if (x =3D=3D 1) {
> +		drm_dbg_kms(display->drm,
> +			    "[CRTC:%d:%s] pfit window (" DRM_RECT_FMT ") badly positioned\n",
> +			    crtc->base.base.id, crtc->base.name, DRM_RECT_ARG(dst));
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  static int intel_pch_pfit_check_src_size(const struct intel_crtc_state *=
crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
> @@ -575,6 +626,10 @@ static int pch_panel_fitting(struct intel_crtc_state=
 *crtc_state,
>  	if (DISPLAY_VER(display) >=3D 9)
>  		return 0;
>=20=20
> +	ret =3D intel_pch_pfit_check_dst_window(crtc_state);
> +	if (ret)
> +		return ret;
> +
>  	ret =3D intel_pch_pfit_check_src_size(crtc_state);
>  	if (ret)
>  		return ret;

--=20
Jani Nikula, Intel
