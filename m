Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB461A170C0
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 17:50:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8067210E443;
	Mon, 20 Jan 2025 16:50:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="elx3akbX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A11BC10E443
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2025 16:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737391820; x=1768927820;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=T4giFhen4GT70KDzQ5lG7j9rSo426f+V4mYZBJpU+tw=;
 b=elx3akbXLDzbdjGtFFW/FRQeTotDdG28S8QKms2dPlQNGqtqqxBLrI7W
 8rp7ZtPy/PxdjnCShN9vm/9VPF/6sJlVme+UNbE38lZoYClWg2FoueKDs
 VtaHeq8PFenu+aDXhjLVqrPNQ/HDB8Dtvn/Vf8pVNxtlY1aR642WdIWxy
 o1nTIFTyg++W1xkxNuMYuDG8tBr5RjrPYil1UzAUrVqQAEeAGtMQZOmPq
 3kFUdnPvEbN4A6dWKNOB6lNvm9VkuQC1wirU17vlLnGdkkiWwHDrH4ysH
 sketpTUBb9XxBXWaL7pSvvyNiPFyPkHXZbgZ1AT6VvZBMjLy1V/sdqc4f A==;
X-CSE-ConnectionGUID: /nk7L/64R3uOL2d0FHSs3w==
X-CSE-MsgGUID: FUliTFuPT8ekMAV9CZ5MPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="48289680"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="48289680"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 08:50:19 -0800
X-CSE-ConnectionGUID: B5wWqxnoQHaN+XuESKAHaA==
X-CSE-MsgGUID: v/gsJ2VsTtSMZnYYFXYfMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110618269"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 08:50:15 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Paz Zcharya <pazz@chromium.org>
Subject: Re: [PATCH 4/8] drm/i915: Warn if someone tries to use
 intel_set_transcoder_timings*() on DSI outputs
In-Reply-To: <20250116201637.22486-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250116201637.22486-1-ville.syrjala@linux.intel.com>
 <20250116201637.22486-5-ville.syrjala@linux.intel.com>
Date: Mon, 20 Jan 2025 18:50:12 +0200
Message-ID: <87wmeppgzf.fsf@intel.com>
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

On Thu, 16 Jan 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> intel_set_transcoder_timings*() aren't currently suitable for DSI.
> Warn if someone accidentally calls them in such cases.
>
> Cc: Paz Zcharya <pazz@chromium.org>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index ac6fc177099f..fa398d7d1baa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2837,6 +2837,8 @@ static void intel_set_transcoder_timings(const stru=
ct intel_crtc_state *crtc_sta
>  	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
>  	int vsyncshift =3D 0;
>=20=20
> +	drm_WARN_ON(&dev_priv->drm, transcoder_is_dsi(cpu_transcoder));
> +
>  	/* We need to be careful not to changed the adjusted mode, for otherwise
>  	 * the hw state checker will get angry at the mismatch. */
>  	crtc_vdisplay =3D adjusted_mode->crtc_vdisplay;
> @@ -2918,6 +2920,8 @@ static void intel_set_transcoder_timings_lrr(const =
struct intel_crtc_state *crtc
>  	const struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjust=
ed_mode;
>  	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
>=20=20
> +	drm_WARN_ON(&dev_priv->drm, transcoder_is_dsi(cpu_transcoder));
> +
>  	crtc_vdisplay =3D adjusted_mode->crtc_vdisplay;
>  	crtc_vtotal =3D adjusted_mode->crtc_vtotal;
>  	crtc_vblank_start =3D adjusted_mode->crtc_vblank_start;

--=20
Jani Nikula, Intel
