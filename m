Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C30AC46221
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 12:09:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0A9810E36E;
	Mon, 10 Nov 2025 11:09:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hP40To4e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C3F610E354;
 Mon, 10 Nov 2025 11:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762772953; x=1794308953;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=/3H2UVCp8tUbkXcfKdZClbP1ukHYWg8za17leDHMZAs=;
 b=hP40To4e+cTidR0cSyGn19iqMtNwirtea4hMQbnpt/MQKp34aigLoJVQ
 ZYJdGRj1lL9cqHfjBASRUVhAL6xK/LScXVH87W38wXgRwm8Ocd4OSfEVG
 pt2TnLXJaXH53Z9w/CYF21/Eujd6hmI8NC55x6ggMaTq3rYOI3uObFpjP
 DRghcgJ8QLXa1CKl10wco/fGZEIVUXKwcNJOIgHTUG82Z7pCkzywbHKi+
 DF2nuBls3q4hijHTAhcOQDZ0PZl36YBIq+DLlowSfSqrrem3YhReF/tgr
 C90fLKbF2YUJPeSMfpTWtoBC5QUzbJfeF1gUhc5I458rE1QDeWtVE0lPI g==;
X-CSE-ConnectionGUID: nxnUhP7AS0+MezU4Lz+vCQ==
X-CSE-MsgGUID: ssq9DPXIRMaszsV/NFpmmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11608"; a="68463972"
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; d="scan'208";a="68463972"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 03:09:13 -0800
X-CSE-ConnectionGUID: Z0VRifNUTSiG303gpozpEg==
X-CSE-MsgGUID: dhkzAdHuRNe+sU9tpx0Vcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; d="scan'208";a="189366650"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 03:09:11 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 7/9] drm/i915: Use mode_config->cursor_width for cursor
 DDB allocation
In-Reply-To: <20251107181126.5743-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251107181126.5743-1-ville.syrjala@linux.intel.com>
 <20251107181126.5743-8-ville.syrjala@linux.intel.com>
Date: Mon, 10 Nov 2025 13:09:09 +0200
Message-ID: <0b1f296b5265a208260ac699dbba32c7e0a23242@intel.com>
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
> Replace the hardcoded 256 with mode_config->cursor_width
> when doing the cursor DDB allocation. Currently 256 is correct
> for all SKL+, but this migth change in the future. One less place

*might

Side note, this is also self-documenting the code.

> to change should that happen.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 16d74ab3a2b5..54e9e0be019d 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -635,6 +635,7 @@ skl_cursor_allocation(const struct intel_crtc_state *=
crtc_state,
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_plane *plane =3D to_intel_plane(crtc_state->uapi.crtc->cur=
sor);
> +	const struct drm_mode_config *mode_config =3D &display->drm->mode_confi=
g;
>  	const struct drm_format_info *info;
>  	struct skl_wm_level wm =3D {};
>  	int ret, min_ddb_alloc =3D 0;
> @@ -648,7 +649,7 @@ skl_cursor_allocation(const struct intel_crtc_state *=
crtc_state,
>=20=20
>  	info  =3D drm_get_format_info(display->drm, format, modifier);
>=20=20
> -	ret =3D skl_compute_wm_params(crtc_state, 256,
> +	ret =3D skl_compute_wm_params(crtc_state, mode_config->cursor_width,
>  				    info, modifier, DRM_MODE_ROTATE_0,
>  				    crtc_state->pixel_rate, &wp, 0, 0);
>  	drm_WARN_ON(display->drm, ret);

--=20
Jani Nikula, Intel
