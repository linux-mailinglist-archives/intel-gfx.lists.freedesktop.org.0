Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F57B9B615F
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 12:23:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2810610E79C;
	Wed, 30 Oct 2024 11:23:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IuKw9WrQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E58610E794
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 11:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730287400; x=1761823400;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=rJ5wlBuCx+z4w5dwagb2oaiIO8NNWstKvth9Xh8j5Cc=;
 b=IuKw9WrQyuaILtr75uVSq/cqFG6NRr/PY9AoxTBP65vNuBsGewn04WWT
 whchdK8BZ0Ggl6AimONrK0p2MlG4KqFPHADpLd1WjoRmQTRdOBfJh1RDc
 XlKNfMFDDqsHF3583kPtiK7CXtvfhyFP1ytYDMP5Xq9fSoYDyxLRZl6Wz
 x2GMD907TyA4uUcY2ll8QVKNbbi2jPUhh5jqosjYdDq/em+JkNiWTlXvV
 +Hv9J4V+4AI0OUBMjrjZ226Ucxi7mdcZRxrjcbkrSCuDgq+hKLG+SwiPj
 dBobJbr5x4jQqdt6wMEQBVfhb3mNcc/xji/Wy5K8jUueyP9jSkvuoxcE2 g==;
X-CSE-ConnectionGUID: aYPDCRrRSBiLbbNO7oppag==
X-CSE-MsgGUID: 2vAulhZITfOfErtgX1U+Mw==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="47457940"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="47457940"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:23:20 -0700
X-CSE-ConnectionGUID: eRcpYkj9R2e65BG/l7OC+w==
X-CSE-MsgGUID: iO2eufM8RU2xaDVCgcxNvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="81840899"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:23:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 01/11] drm/i915: Introduce HAS_DOUBLE_WIDE()
In-Reply-To: <20241029215217.3697-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
 <20241029215217.3697-2-ville.syrjala@linux.intel.com>
Date: Wed, 30 Oct 2024 13:23:16 +0200
Message-ID: <87r07xn8bf.fsf@intel.com>
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
> Make the code a bit more self documenting by adding
> HAS_DOUBLE_WIDE().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c          | 2 +-
>  drivers/gpu/drm/i915/display/intel_display.c        | 4 ++--
>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>  3 files changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 96523526a2c3..6cef3ca3a069 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -3462,7 +3462,7 @@ static int intel_compute_max_dotclk(struct intel_di=
splay *display)
>  		return max_cdclk_freq;
>  	else if (IS_CHERRYVIEW(dev_priv))
>  		return max_cdclk_freq*95/100;
> -	else if (DISPLAY_VER(display) < 4)
> +	else if (HAS_DOUBLE_WIDE(display))
>  		return 2*max_cdclk_freq*90/100;
>  	else
>  		return max_cdclk_freq*90/100;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 0e6d6c8354ef..9a5102224c59 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2371,7 +2371,7 @@ static bool intel_crtc_supports_double_wide(const s=
truct intel_crtc *crtc)
>  	const struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>=20=20
>  	/* GDG double wide on either pipe, otherwise pipe A only */
> -	return DISPLAY_VER(dev_priv) < 4 &&
> +	return HAS_DOUBLE_WIDE(dev_priv) &&
>  		(crtc->pipe =3D=3D PIPE_A || IS_I915G(dev_priv));
>  }
>=20=20
> @@ -3207,7 +3207,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc =
*crtc,
>=20=20
>  	intel_color_get_config(pipe_config);
>=20=20
> -	if (DISPLAY_VER(dev_priv) < 4)
> +	if (HAS_DOUBLE_WIDE(dev_priv))
>  		pipe_config->double_wide =3D tmp & TRANSCONF_DOUBLE_WIDE;
>=20=20
>  	intel_get_transcoder_timings(crtc, pipe_config);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/driver=
s/gpu/drm/i915/display/intel_display_device.h
> index 410f8b33a8a1..ae7a35cf44ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -129,6 +129,7 @@ enum intel_display_subplatform {
>  #define HAS_DISPLAY(i915)		(DISPLAY_RUNTIME_INFO(i915)->pipe_mask !=3D 0)
>  #define HAS_DMC(i915)			(DISPLAY_RUNTIME_INFO(i915)->has_dmc)
>  #define HAS_DOUBLE_BUFFERED_M_N(i915)	(DISPLAY_VER(i915) >=3D 9 || IS_BR=
OADWELL(i915))
> +#define HAS_DOUBLE_WIDE(i915)		(DISPLAY_VER(i915) < 4)
>  #define HAS_DP_MST(i915)		(DISPLAY_INFO(i915)->has_dp_mst)
>  #define HAS_DP20(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >=3D 14)
>  #define HAS_DPT(i915)			(DISPLAY_VER(i915) >=3D 13)

--=20
Jani Nikula, Intel
