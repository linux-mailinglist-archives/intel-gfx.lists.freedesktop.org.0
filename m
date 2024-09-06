Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C124896F815
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 17:19:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 049CC10E1A8;
	Fri,  6 Sep 2024 15:19:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L+SxWEbv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 435C610E1A1;
 Fri,  6 Sep 2024 15:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725635947; x=1757171947;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=E6xEEzHFjtzKL329sGj8LswesAuOFm6ma0oD5nN9k4c=;
 b=L+SxWEbvVza8mC/geVud/EYqswKeVh8MjDnLxigelM1TForZMRgddxm5
 BrZZFacsG7MuBWRn8kp8eIi8AVCBIKXJFbOFmbzb/BKAhcjBSWwGQgjfy
 COjE0n29nxRvoQJzfwYF3Fy4I1qiMcd0hNgPYNjyXqhQLhXD8sQMzxgOK
 3sbBT+FHTbaz1nxHW2kHAxZHPhlSfDKeAfctHi3P2z3i3COb0w3Q0xnbJ
 YOvfPyy6RtxiW2ikKPU0CfYumhIa4sYLNHi3j3XIhHYaOVPBk7RtrcEH9
 jqO+v8el1WBWX3dKI+kjvVQ9Azt9OClwUNoaadJyx3CRT2uKynSMrdcN3 g==;
X-CSE-ConnectionGUID: isPqyDciRRSdnkk5FQ6oSQ==
X-CSE-MsgGUID: 6U5dKnqJSNSrlewfaALmrA==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="34973640"
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="34973640"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 08:19:06 -0700
X-CSE-ConnectionGUID: Zb5FEQNQSImPsbxIxh0q/w==
X-CSE-MsgGUID: uL4kIbfITySg935H3F/zPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="65625194"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.62])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 08:19:04 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/6] drm/i915/cdclk: Convert CDCLK code to intel_display
In-Reply-To: <20240906143306.15937-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240906143306.15937-1-ville.syrjala@linux.intel.com>
 <20240906143306.15937-3-ville.syrjala@linux.intel.com>
Date: Fri, 06 Sep 2024 18:18:58 +0300
Message-ID: <87mskkn731.fsf@intel.com>
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

On Fri, 06 Sep 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> struct intel_display will replace struct drm_i915_private as
> the main thing for display code. Convert the CDCLK code to
> use it (as much as possible at this stage).
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Some nitpicks inline, but overall

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

[snip]

> @@ -2685,20 +2712,21 @@ intel_set_cdclk_post_plane_update(struct intel_at=
omic_state *state)
>  	else
>  		pipe =3D INVALID_PIPE;
>=20=20
> -	drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
> +	drm_WARN_ON(display->drm, !new_cdclk_state->base.changed);
>=20=20
> -	intel_set_cdclk(i915, &new_cdclk_state->actual, pipe,
> +	intel_set_cdclk(display, &new_cdclk_state->actual, pipe,
>  			"Post changing CDCLK to");
>  }
>=20=20
>  static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc=
_state)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> +	struct intel_display *display =3D to_intel_display(crtc_state->uapi.crt=
c->dev);

This works, but to_intel_display(crtc_state) is enough.

> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);

I usually don't bother with changing the dev_priv initialization if it
keeps working. I just put the display stuff first. But this works.

>  	int pixel_rate =3D crtc_state->pixel_rate;
>=20=20
> -	if (DISPLAY_VER(dev_priv) >=3D 10)
> +	if (DISPLAY_VER(display) >=3D 10)
>  		return DIV_ROUND_UP(pixel_rate, 2);
> -	else if (DISPLAY_VER(dev_priv) =3D=3D 9 ||
> +	else if (DISPLAY_VER(display) =3D=3D 9 ||
>  		 IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
>  		return pixel_rate;
>  	else if (IS_CHERRYVIEW(dev_priv))
> @@ -2712,11 +2740,11 @@ static int intel_pixel_rate_to_cdclk(const struct=
 intel_crtc_state *crtc_state)

[snip]

> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/driver=
s/gpu/drm/i915/display/intel_display_device.c
> index 408c76852495..9ff08dbefc76 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1678,7 +1678,7 @@ static void __intel_display_device_info_runtime_ini=
t(struct drm_i915_private *i9
>  		}
>  	}
>=20=20
> -	display_runtime->rawclk_freq =3D intel_read_rawclk(i915);
> +	display_runtime->rawclk_freq =3D intel_read_rawclk(&i915->display);

I generally prefer adding that struct intel_display local variable when
I need it the first time, so the subsequent changes are less churn.


--=20
Jani Nikula, Intel
