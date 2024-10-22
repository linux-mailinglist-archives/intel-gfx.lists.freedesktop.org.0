Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 385E49A9C58
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 10:25:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDA5410E616;
	Tue, 22 Oct 2024 08:25:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nwsmBV4N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C1AB10E617
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2024 08:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729585504; x=1761121504;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=xH2I4j98reTvHTw7rugpQhSm3GVnmK9R/tV9s2szVCY=;
 b=nwsmBV4Nmv+51+nK7KD/DPCk5V6/TE0w+Dla422gTpwFAZYOxqcu7DG6
 CUbZamvTN+OztKlhDrrxy08jmY0WgfAPp5mhAzPxfPGQiZEki1HT71y6T
 UOEvB0SY75DVVzlJZUTPE6l2+Xu6m2k5bJdDB9ypnCjG/uvRxJdZzpQcV
 P1wEYB1sYX6WjF+ZMGlS16HQP2MYXZbmHfmZSm3ASGpjFuTpzvn/GTd2Y
 P4bTva/UNUCo9sIsm6c5HGSXbU5aXSGL9XvlF3tas7FOXe2QMywALz+px
 KXUvyMujO5z6gJNU1oyIS4ko9/MY2lXFVv1O/8J+y+rvnZ1lJDJMTU+r5 w==;
X-CSE-ConnectionGUID: tAbh/5VzQg+w0nZ0z0uUuA==
X-CSE-MsgGUID: /0TAEVJpSc+G0puqEpgIhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39650295"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39650295"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:25:03 -0700
X-CSE-ConnectionGUID: LbJS7j8PS26kKtgK1ozkEA==
X-CSE-MsgGUID: ttkagodKTbiT0iuf/zCXHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="110559549"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:25:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/9] drm/i915/pfit: Check pfit scaling factors on ILK-BDW
In-Reply-To: <20241016143134.26903-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
 <20241016143134.26903-3-ville.syrjala@linux.intel.com>
Date: Tue, 22 Oct 2024 11:24:59 +0300
Message-ID: <87msiwwnms.fsf@intel.com>
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
> Make sure we're not exceeding the max scaling factors for the panel
> fitter on ILK-BDW. SKL+ is skipped here since this is all supposed to
> be handled by the unified scaler code.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 39 ++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index b77017144818..fb7def772376 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -421,6 +421,41 @@ static int intel_pch_pfit_check_src_size(const struc=
t intel_crtc_state *crtc_sta
>  	return 0;
>  }
>=20=20
> +static int intel_pch_pfit_check_scaling(const struct intel_crtc_state *c=
rtc_state)
> +{
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	const struct drm_rect *dst =3D &crtc_state->pch_pfit.dst;
> +	int pipe_src_w =3D drm_rect_width(&crtc_state->pipe_src);
> +	int pipe_src_h =3D drm_rect_height(&crtc_state->pipe_src);
> +	int hscale, vscale, max_scale =3D 0x12000; /* 1.125 */
> +	struct drm_rect src;
> +
> +	drm_rect_init(&src, 0, 0, pipe_src_w << 16, pipe_src_h << 16);
> +
> +	hscale =3D drm_rect_calc_hscale(&src, dst, 0, max_scale);
> +	if (hscale < 0) {
> +		drm_dbg_kms(display->drm,
> +			    "[CRTC:%d:%s] pfit horizontal downscaling (%d->%d) exceeds max (0=
x%x)\n",
> +			    crtc->base.base.id, crtc->base.name,
> +			    pipe_src_w, drm_rect_width(dst),
> +			    max_scale);
> +		return hscale;
> +	}
> +
> +	vscale =3D drm_rect_calc_vscale(&src, dst, 0, max_scale);
> +	if (vscale < 0) {
> +		drm_dbg_kms(display->drm,
> +			    "[CRTC:%d:%s] pfit vertical downscaling (%d->%d) exceeds max (0x%=
x)\n",
> +			    crtc->base.base.id, crtc->base.name,
> +			    pipe_src_h, drm_rect_height(dst),
> +			    max_scale);
> +		return vscale;
> +	}
> +
> +	return 0;
> +}
> +
>  /* adjusted_mode has been preset to be the panel's fixed mode */
>  static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>  			     const struct drm_connector_state *conn_state)
> @@ -503,6 +538,10 @@ static int pch_panel_fitting(struct intel_crtc_state=
 *crtc_state,
>  	if (ret)
>  		return ret;
>=20=20
> +	ret =3D intel_pch_pfit_check_scaling(crtc_state);
> +	if (ret)
> +		return ret;
> +
>  	return 0;
>  }

--=20
Jani Nikula, Intel
