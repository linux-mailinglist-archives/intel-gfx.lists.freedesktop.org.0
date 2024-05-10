Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 603F18C2365
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 13:30:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8CBD10E74E;
	Fri, 10 May 2024 11:30:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JKc/pr5a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7865210E74E;
 Fri, 10 May 2024 11:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715340641; x=1746876641;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=RmXO9knQ6NyIJJI8QUHHwfikzpSbPoU3Z4YQZGimhk0=;
 b=JKc/pr5abytqkx5gWm3/qdd0IGggm+bocSEMfuOR0FNsEDnl6Uq1arQu
 vSVpWAh+bSgVdwrrCriBmhFgGlNLkym5tDYJBosy6ud6yLGlPj5GedAPy
 BXZUKkRIC/bzWp21o91oyUJ3iTO8KPbZFQ8Gld3hspStP5+jXi62nX9hG
 Km8QISiY/bBEsC23TKnR5qNwKGzvFK4+ZByb7Ih6pXpOi8gNWerFTa3kF
 dNtBtqhZxcJKzueI573i6hbhVwUKYbsUrMEZYAjzZolA+SzykKMycxKQ+
 4THcECFEL9DSryX48s5iVKFFAxIbFRMPXcWL0t7n0JImwSrimda+T/IyF g==;
X-CSE-ConnectionGUID: BeHGzIQxQzumUEvSHAa8gQ==
X-CSE-MsgGUID: JI3m9/ixS/aGla1Ji+4uHg==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11250483"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="11250483"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:30:41 -0700
X-CSE-ConnectionGUID: zwFst7gOQXWA3vs0suRQoA==
X-CSE-MsgGUID: thdaF0/ITsq9un4mKFeTSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="52797201"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:30:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 7/9] drm/i915: Change intel_fbdev_fb_alloc() return type
In-Reply-To: <20240510102233.25057-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240506125718.26001-8-ville.syrjala@linux.intel.com>
 <20240510102233.25057-1-ville.syrjala@linux.intel.com>
Date: Fri, 10 May 2024 14:30:36 +0300
Message-ID: <87cyptj44j.fsf@intel.com>
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

On Fri, 10 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Change intel_fbdev_fb_alloc() to return struct intel_fb instead
> of struct drm_framebuffer. Let's us eliminate some annoying
> aliasing variables in the fbdev setup code.
>
> v2: Assing the results to the correct variable (Jani)
>     Fix xe's copy
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c    | 9 ++++-----
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 6 +++---
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h | 4 ++--
>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 9 +++++----
>  4 files changed, 14 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm=
/i915/display/intel_fbdev.c
> index bda702c2cab8..4bbbf481bb3a 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -207,13 +207,12 @@ static int intelfb_create(struct drm_fb_helper *hel=
per,
>  		intel_fb =3D ifbdev->fb =3D NULL;
>  	}
>  	if (!intel_fb || drm_WARN_ON(dev, !intel_fb_obj(&intel_fb->base))) {
> -		struct drm_framebuffer *fb;
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "no BIOS fb, allocating a new one\n");
> -		fb =3D intel_fbdev_fb_alloc(helper, sizes);
> -		if (IS_ERR(fb))
> -			return PTR_ERR(fb);
> -		intel_fb =3D ifbdev->fb =3D to_intel_framebuffer(fb);
> +		intel_fb =3D intel_fbdev_fb_alloc(helper, sizes);
> +		if (IS_ERR(intel_fb))
> +			return PTR_ERR(intel_fb);
> +		ifbdev->fb =3D intel_fb;
>  	} else {
>  		drm_dbg_kms(&dev_priv->drm, "re-using BIOS fb\n");
>  		prealloc =3D true;
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/=
drm/i915/display/intel_fbdev_fb.c
> index 0665f943f65f..497525ef9668 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> @@ -11,8 +11,8 @@
>  #include "intel_display_types.h"
>  #include "intel_fbdev_fb.h"
>=20=20
> -struct drm_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helpe=
r,
> -					     struct drm_fb_helper_surface_size *sizes)
> +struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *hel=
per,
> +					       struct drm_fb_helper_surface_size *sizes)
>  {
>  	struct drm_framebuffer *fb;
>  	struct drm_device *dev =3D helper->dev;
> @@ -63,7 +63,7 @@ struct drm_framebuffer *intel_fbdev_fb_alloc(struct drm=
_fb_helper *helper,
>  	fb =3D intel_framebuffer_create(obj, &mode_cmd);
>  	i915_gem_object_put(obj);
>=20=20
> -	return fb;
> +	return to_intel_framebuffer(fb);
>  }
>=20=20
>  int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_in=
fo *info,
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/=
drm/i915/display/intel_fbdev_fb.h
> index a395b2c65d33..4832fe688fbf 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> @@ -13,8 +13,8 @@ struct drm_i915_private;
>  struct fb_info;
>  struct i915_vma;
>=20=20
> -struct drm_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helpe=
r,
> -					     struct drm_fb_helper_surface_size *sizes);
> +struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *hel=
per,
> +					       struct drm_fb_helper_surface_size *sizes);
>  int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_in=
fo *info,
>  			     struct drm_i915_gem_object *obj, struct i915_vma *vma);
>=20=20
> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/dr=
m/xe/display/intel_fbdev_fb.c
> index 9e4bcfdbc7e5..f6bf5896ff1b 100644
> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> @@ -13,8 +13,8 @@
>  #include "i915_drv.h"
>  #include "intel_display_types.h"
>=20=20
> -struct drm_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helpe=
r,
> -			 struct drm_fb_helper_surface_size *sizes)
> +struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *hel=
per,
> +					       struct drm_fb_helper_surface_size *sizes)
>  {
>  	struct drm_framebuffer *fb;
>  	struct drm_device *dev =3D helper->dev;
> @@ -70,10 +70,11 @@ struct drm_framebuffer *intel_fbdev_fb_alloc(struct d=
rm_fb_helper *helper,
>  	}
>=20=20
>  	drm_gem_object_put(intel_bo_to_drm_bo(obj));
> -	return fb;
> +
> +	return to_intel_framebuffer(fb);
>=20=20
>  err:
> -	return fb;
> +	return ERR_CAST(fb);
>  }
>=20=20
>  int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_in=
fo *info,

--=20
Jani Nikula, Intel
