Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF31F8C237D
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 13:32:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32BF110E5A0;
	Fri, 10 May 2024 11:32:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RjPzTNZ8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F0E110E0BB;
 Fri, 10 May 2024 11:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715340771; x=1746876771;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=UbiV8yejs3NqS3RdSgquLBSkeSWg7vVKgI767rsk4+w=;
 b=RjPzTNZ8KTAzvjRPKWzcTKO2HtfkmuIJm4Xu4VdsbE34LJkrW8h6VWSz
 jB42uNxITlhM3qosaVp3/6MtRi/ysyIYoUV26WLD9gSLm7RANsEM1pkHG
 fmKuMZvJZrSpT2TkH8JNKgKGemlWTOemi/h7IDwhG2x0L5/gr1YDxUbhq
 DkUYqYTDTDPWxRVrKz9EbxLOn0kh/2ZF+mb5sbG7xd0TRxDct2L+UEfqZ
 QmE2qfa0W/ZjwDPv88dJM3Y6peFRmgHOxY+W0u8M4K8mcro7mqRFlDYoT
 coHnxXujqgPxow9AgCcwwYSiljcENCWfTKN6HSuavFHvYuo6svDguZzd1 Q==;
X-CSE-ConnectionGUID: nwAIosueTnWz0N4zWO6lvA==
X-CSE-MsgGUID: Ij2aI9UAQNKvZWfIctvU0Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11443732"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="11443732"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:32:50 -0700
X-CSE-ConnectionGUID: ez9gLijXThCS5QMbbPs0wQ==
X-CSE-MsgGUID: VckxcKOjQ6CbjJR82eb06A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="34238503"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:32:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 8/9] drm/i915: Cleanup fbdev fb setup
In-Reply-To: <20240510102257.25096-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240506125718.26001-9-ville.syrjala@linux.intel.com>
 <20240510102257.25096-1-ville.syrjala@linux.intel.com>
Date: Fri, 10 May 2024 14:32:45 +0300
Message-ID: <87a5kxj40y.fsf@intel.com>
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
> We use a mix of 'intel_fb' vs. 'ifbdev->fb' in the same function.
> Both should be pointing at the same thing. Make things less
> confusing by just getting existing fb from 'ifbdev->fb' at the
> start and then sticking with the local 'fb' (renamed from the
> 'intel_fb') until the very end.
>
> v2: rebase
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c | 38 ++++++++++++----------
>  1 file changed, 20 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm=
/i915/display/intel_fbdev.c
> index 4bbbf481bb3a..e898018ab76a 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -175,7 +175,7 @@ static int intelfb_create(struct drm_fb_helper *helpe=
r,
>  			  struct drm_fb_helper_surface_size *sizes)
>  {
>  	struct intel_fbdev *ifbdev =3D to_intel_fbdev(helper);
> -	struct intel_framebuffer *intel_fb =3D ifbdev->fb;
> +	struct intel_framebuffer *fb =3D ifbdev->fb;
>  	struct drm_device *dev =3D helper->dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	const struct i915_gtt_view view =3D {
> @@ -195,29 +195,30 @@ static int intelfb_create(struct drm_fb_helper *hel=
per,
>  	if (ret)
>  		return ret;
>=20=20
> -	if (intel_fb &&
> -	    (sizes->fb_width > intel_fb->base.width ||
> -	     sizes->fb_height > intel_fb->base.height)) {
> +	ifbdev->fb =3D NULL;
> +
> +	if (fb &&
> +	    (sizes->fb_width > fb->base.width ||
> +	     sizes->fb_height > fb->base.height)) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "BIOS fb too small (%dx%d), we require (%dx%d),"
>  			    " releasing it\n",
> -			    intel_fb->base.width, intel_fb->base.height,
> +			    fb->base.width, fb->base.height,
>  			    sizes->fb_width, sizes->fb_height);
> -		drm_framebuffer_put(&intel_fb->base);
> -		intel_fb =3D ifbdev->fb =3D NULL;
> +		drm_framebuffer_put(&fb->base);
> +		fb =3D NULL;
>  	}
> -	if (!intel_fb || drm_WARN_ON(dev, !intel_fb_obj(&intel_fb->base))) {
> +	if (!fb || drm_WARN_ON(dev, !intel_fb_obj(&fb->base))) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "no BIOS fb, allocating a new one\n");
> -		intel_fb =3D intel_fbdev_fb_alloc(helper, sizes);
> -		if (IS_ERR(intel_fb))
> -			return PTR_ERR(intel_fb);
> -		ifbdev->fb =3D intel_fb;
> +		fb =3D intel_fbdev_fb_alloc(helper, sizes);
> +		if (IS_ERR(fb))
> +			return PTR_ERR(fb);
>  	} else {
>  		drm_dbg_kms(&dev_priv->drm, "re-using BIOS fb\n");
>  		prealloc =3D true;
> -		sizes->fb_width =3D intel_fb->base.width;
> -		sizes->fb_height =3D intel_fb->base.height;
> +		sizes->fb_width =3D fb->base.width;
> +		sizes->fb_height =3D fb->base.height;
>  	}
>=20=20
>  	wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
> @@ -226,7 +227,7 @@ static int intelfb_create(struct drm_fb_helper *helpe=
r,
>  	 * This also validates that any existing fb inherited from the
>  	 * BIOS is suitable for own access.
>  	 */
> -	vma =3D intel_pin_and_fence_fb_obj(&ifbdev->fb->base, false,
> +	vma =3D intel_pin_and_fence_fb_obj(&fb->base, false,
>  					 &view, false, &flags);
>  	if (IS_ERR(vma)) {
>  		ret =3D PTR_ERR(vma);
> @@ -240,11 +241,11 @@ static int intelfb_create(struct drm_fb_helper *hel=
per,
>  		goto out_unpin;
>  	}
>=20=20
> -	ifbdev->helper.fb =3D &ifbdev->fb->base;
> +	ifbdev->helper.fb =3D &fb->base;
>=20=20
>  	info->fbops =3D &intelfb_ops;
>=20=20
> -	obj =3D intel_fb_obj(&intel_fb->base);
> +	obj =3D intel_fb_obj(&fb->base);
>=20=20
>  	ret =3D intel_fbdev_fb_fill_info(dev_priv, info, obj, vma);
>  	if (ret)
> @@ -262,8 +263,9 @@ static int intelfb_create(struct drm_fb_helper *helpe=
r,
>  	/* Use default scratch pixmap (info->pixmap.flags =3D FB_PIXMAP_SYSTEM)=
 */
>=20=20
>  	drm_dbg_kms(&dev_priv->drm, "allocated %dx%d fb: 0x%08x\n",
> -		    ifbdev->fb->base.width, ifbdev->fb->base.height,
> +		    fb->base.width, fb->base.height,
>  		    i915_ggtt_offset(vma));
> +	ifbdev->fb =3D fb;
>  	ifbdev->vma =3D vma;
>  	ifbdev->vma_flags =3D flags;

--=20
Jani Nikula, Intel
