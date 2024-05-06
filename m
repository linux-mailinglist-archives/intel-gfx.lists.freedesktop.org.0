Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E348BCFD6
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 16:16:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D334710F8DA;
	Mon,  6 May 2024 14:16:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U6tbglG+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D7A410F8DA;
 Mon,  6 May 2024 14:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715005016; x=1746541016;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=jFFtw8EWdmvPdf82ndw6IZh0L3x6bT3MiWx5RIfwaJ4=;
 b=U6tbglG+k+xy2wqmfZO2LqdARvAgvTRs1h9POeMA+Pmw6zOpnEVElHj6
 o4vnV1Q+9WrXPKDDPm1QRR7Zt6fzkjnp5z1jcVlsdOaPZyxqx1ZLl4V3Q
 7p413Q5djLlkbYNAh18fg03ajCyHgnEG0stHxbKNxpKf9hG4ckVK1wkgV
 snUBmPEfJ+5GOBD0seh8FdRH1aVfBOFhsVOdnTA+0by/Ez/g/tJPRtAMq
 cvq/lgImS9PPvfB4G8jlEh9/OSFz4akONArrlD99CAqfbRqtt+8QMbqBn
 bLVEBkK2iSgmcnJCIwWDmoZQJ5TQz8+C5RHQpW8Kb9BsF/w1WLxfl+OMB A==;
X-CSE-ConnectionGUID: YccrZsnQT4+vVbspimaPaw==
X-CSE-MsgGUID: M0k0TzkfRiev1o2kEsKvzA==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10967692"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10967692"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 07:16:55 -0700
X-CSE-ConnectionGUID: WgbTvF6QS7WlfJrwZFXyNA==
X-CSE-MsgGUID: ylF8+y7hQ3umLvX8JpZmzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28268755"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 07:16:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 7/9] drm/i915: Change intel_fbdev_fb_alloc() reuturn type
In-Reply-To: <20240506125718.26001-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
 <20240506125718.26001-8-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 17:16:50 +0300
Message-ID: <87pltzkotp.fsf@intel.com>
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


*return in subject

On Mon, 06 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Change intel_fbdev_fb_alloc() to return struct intel_fb instead
> of struct drm_framebuffer. Let's us eliminate some annoying
> aliasing variables in the fbdev setup code.

You'll need to enable DRM_XE=3Dm and DRM_XE_DISPLAY=3Dy configs, this will
fail the build there. ;)

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c    | 10 +++++-----
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c |  6 +++---
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  5 +++--
>  3 files changed, 11 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm=
/i915/display/intel_fbdev.c
> index bda702c2cab8..0d79ec1a6427 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -207,13 +207,13 @@ static int intelfb_create(struct drm_fb_helper *hel=
per,
>  		intel_fb =3D ifbdev->fb =3D NULL;
>  	}
>  	if (!intel_fb || drm_WARN_ON(dev, !intel_fb_obj(&intel_fb->base))) {
> -		struct drm_framebuffer *fb;
> +		struct intel_framebuffer *fb;
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "no BIOS fb, allocating a new one\n");
> -		fb =3D intel_fbdev_fb_alloc(helper, sizes);
> -		if (IS_ERR(fb))
> -			return PTR_ERR(fb);
> -		intel_fb =3D ifbdev->fb =3D to_intel_framebuffer(fb);
> +		intel_fb =3D intel_fbdev_fb_alloc(helper, sizes);

Now you have both fb in block context and intel_fb in the function
context, and I think there's some confusion here.

BR,
Jani.

> +		if (IS_ERR(intel_fb))
> +			return PTR_ERR(intel_fb);
> +		ifbdev->fb =3D fb;
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
> index a395b2c65d33..82e8e7cc007b 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> @@ -12,9 +12,10 @@ struct drm_i915_gem_object;
>  struct drm_i915_private;
>  struct fb_info;
>  struct i915_vma;
> +struct intel_framebuffer;
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

--=20
Jani Nikula, Intel
