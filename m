Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3F6C46203
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 12:08:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 875C710E2DF;
	Mon, 10 Nov 2025 11:08:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b/UcMnk7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E2E110E2BD;
 Mon, 10 Nov 2025 11:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762772914; x=1794308914;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=qY6vBI1Ei9c8SKLS8nvIAsLB0OyAsR0AV2Pltpk+MDU=;
 b=b/UcMnk7il5RdStYDGdyMejz5y1hvGKwgTM5TzkS+ircBi48nKHr+XbU
 9bdH8EIzJ26vEOSBG5maXv1BZtreiiz7MXO4KSOxwrQACLqaN/99If73L
 9zCVgEcY+vPXVIPQaznUiFpO2P8khFGKPGWG16v55/P3DJ4Lh9c6uovFx
 IfRfxQYUnn9z0LVP6fb2PwHp2YQjEpWPx6k8NHPcrnho2LctMBjqJabK2
 bVDoliNCJnVCRdpPKWo7LtwcnkK369l9bKVINsJSMjVvT5CQmaLxsLWEc
 /scfCaSIiHxedR+ng7hT9HFper/s9mRaXGtjrerKizWl+UKH2QGlQz6i0 w==;
X-CSE-ConnectionGUID: B9VCTPUmTzuEBzf7bdYLjg==
X-CSE-MsgGUID: 77O3z4ZCTmaNkmfidrU8bw==
X-IronPort-AV: E=McAfee;i="6800,10657,11608"; a="87452311"
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; d="scan'208";a="87452311"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 03:08:34 -0800
X-CSE-ConnectionGUID: BUhaV8pyQZKeW3YuyUFkfQ==
X-CSE-MsgGUID: Y8isKT+AQdaK1Tf2qwxICg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; d="scan'208";a="225906746"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 03:08:32 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 6/9] drm/i915/wm: Use drm_get_format_info() in SKL+
 cursor DDB allocation
In-Reply-To: <20251107181126.5743-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251107181126.5743-1-ville.syrjala@linux.intel.com>
 <20251107181126.5743-7-ville.syrjala@linux.intel.com>
Date: Mon, 10 Nov 2025 13:08:29 +0200
Message-ID: <f81644abfc076fae9f78fb77aec5d57785a1534d@intel.com>
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

On Fri, 07 Nov 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Replace the technically inaccurate drm_format_info() with the
> accurate drm_get_format_info() in the SKL+ cursor DDB
> allocation code.
>
> Since we're only interested in the linear modifier here, the two
> functions do actually return the same information. But let's not
> use drm_format_info() to avoid setting a bad examples.

a bad example OR bad examples

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 36a266f882d1..16d74ab3a2b5 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -635,15 +635,21 @@ skl_cursor_allocation(const struct intel_crtc_state=
 *crtc_state,
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_plane *plane =3D to_intel_plane(crtc_state->uapi.crtc->cur=
sor);
> +	const struct drm_format_info *info;
>  	struct skl_wm_level wm =3D {};
>  	int ret, min_ddb_alloc =3D 0;
>  	struct skl_wm_params wp;
> +	u64 modifier;
> +	u32 format;
>  	int level;
>=20=20
> +	format =3D DRM_FORMAT_ARGB8888;
> +	modifier =3D DRM_FORMAT_MOD_LINEAR;
> +
> +	info  =3D drm_get_format_info(display->drm, format, modifier);
> +
>  	ret =3D skl_compute_wm_params(crtc_state, 256,
> -				    drm_format_info(DRM_FORMAT_ARGB8888),
> -				    DRM_FORMAT_MOD_LINEAR,
> -				    DRM_MODE_ROTATE_0,
> +				    info, modifier, DRM_MODE_ROTATE_0,
>  				    crtc_state->pixel_rate, &wp, 0, 0);
>  	drm_WARN_ON(display->drm, ret);

--=20
Jani Nikula, Intel
