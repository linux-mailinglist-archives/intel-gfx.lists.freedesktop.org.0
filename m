Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F54BB41D3
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Oct 2025 16:00:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E227E10E1A2;
	Thu,  2 Oct 2025 13:59:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KdYMcS6I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A76110E14F;
 Thu,  2 Oct 2025 13:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759413597; x=1790949597;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=URFBIhsVoA7x+YrwOIk2th/Mr+B9K4JY0bqjxrJjli4=;
 b=KdYMcS6IiNiqbowxiJ7rnlh2Fr2ThIjg3L2VC4h596yPvoiKunbGFZC/
 D/xZLvKuinsy65DBa6KLdn7H0iOyC4Z4Dcr5zswZstuekYtk7KR19shOv
 X9B9pcIKFWFgDPXtBtDbBbLOZswOCSTorF2moTLOnfWR5HXbJiloydfVs
 3jW+UPGT6b0AqD3n1IshogfjEcYCb9nF0xya5wVc7L5PE3MNB+EVLBiAv
 p7bWwo+CujH03NWCRgy7rIBYjlmZzJyEYgy3IVIb4go6oADO8JCKDnqiS
 6OnwAVfYMl+xYOK3+aylA3lyjhzryjrUYsSG7dBhER1FZZVl5wKx7ydGI w==;
X-CSE-ConnectionGUID: 0QCYNQcRTQaCsslKW6ummQ==
X-CSE-MsgGUID: M3TknFpVS7abhnQPLR/FRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11570"; a="49251361"
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="49251361"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 06:59:56 -0700
X-CSE-ConnectionGUID: DptLcADMTf+TWKgzL/5mIQ==
X-CSE-MsgGUID: g6l34Au7QzKPCp3RUjlXHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="179827797"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.12])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 06:59:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>
Subject: Re: [PATCH 1/4] drm/i915/fb: Fix the set_tiling vs. addfb race, again
In-Reply-To: <20251002115434.6486-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251002115434.6486-1-ville.syrjala@linux.intel.com>
 <20251002115434.6486-2-ville.syrjala@linux.intel.com>
Date: Thu, 02 Oct 2025 16:59:51 +0300
Message-ID: <053828a8f31f70e964d3f620a56e75d395f98172@intel.com>
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

On Thu, 02 Oct 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> intel_frontbuffer_get() is what locks out subsequent set_tiling
> changes to the bo. Thus the fence vs. modifier check must be done
> after intel_frontbuffer_get(), or else a concurrent set_tiling ioctl
> might sneak in and change the fence after the check has been done.
>
> Close the race again. See commit dd689287b977 ("drm/i915: Prevent
> concurrent tiling/framebuffer modifications") for the previous
> instance.
>
> Cc: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Fixes: 10690b8a49bc ("drm/i915/display: Add intel_fb_bo_framebuffer_fini")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 38 +++++++++++++------------
>  1 file changed, 20 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index 69237dabdae8..c5bbca7f2e8b 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -2218,15 +2218,17 @@ int intel_framebuffer_init(struct intel_framebuff=
er *intel_fb,
>  	int ret =3D -EINVAL;
>  	int i;
>=20=20
> -	ret =3D intel_fb_bo_framebuffer_init(fb, obj, mode_cmd);
> -	if (ret)
> -		return ret;
> -
> +	/*
> +	 * intel_frontbuffer_get() must be done before
> +	 * intel_fb_bo_framebuffer_init() to avoid set_tiling vs. addfb race.
> +	 */
>  	intel_fb->frontbuffer =3D intel_frontbuffer_get(obj);
> -	if (!intel_fb->frontbuffer) {
> -		ret =3D -ENOMEM;
> -		goto err;
> -	}
> +	if (!intel_fb->frontbuffer)
> +		return -ENOMEM;
> +
> +	ret =3D intel_fb_bo_framebuffer_init(fb, obj, mode_cmd);
> +	if (ret)
> +		goto err_frontbuffer_put;

Do you think we should modify intel_user_framebuffer_destroy() to also
have the same put & fini order here, just for consistency?

I think this should be merged before my leak fix, and that should be
rebased [1], to make the backports easier.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


[1] https://lore.kernel.org/r/20251002101756.2700320-1-jani.nikula@intel.com

>=20=20
>  	ret =3D -EINVAL;
>  	if (!drm_any_plane_has_format(display->drm,
> @@ -2235,7 +2237,7 @@ int intel_framebuffer_init(struct intel_framebuffer=
 *intel_fb,
>  		drm_dbg_kms(display->drm,
>  			    "unsupported pixel format %p4cc / modifier 0x%llx\n",
>  			    &mode_cmd->pixel_format, mode_cmd->modifier[0]);
> -		goto err_frontbuffer_put;
> +		goto err_bo_framebuffer_fini;
>  	}
>=20=20
>  	max_stride =3D intel_fb_max_stride(display, mode_cmd->pixel_format,
> @@ -2246,7 +2248,7 @@ int intel_framebuffer_init(struct intel_framebuffer=
 *intel_fb,
>  			    mode_cmd->modifier[0] !=3D DRM_FORMAT_MOD_LINEAR ?
>  			    "tiled" : "linear",
>  			    mode_cmd->pitches[0], max_stride);
> -		goto err_frontbuffer_put;
> +		goto err_bo_framebuffer_fini;
>  	}
>=20=20
>  	/* FIXME need to adjust LINOFF/TILEOFF accordingly. */
> @@ -2254,7 +2256,7 @@ int intel_framebuffer_init(struct intel_framebuffer=
 *intel_fb,
>  		drm_dbg_kms(display->drm,
>  			    "plane 0 offset (0x%08x) must be 0\n",
>  			    mode_cmd->offsets[0]);
> -		goto err_frontbuffer_put;
> +		goto err_bo_framebuffer_fini;
>  	}
>=20=20
>  	drm_helper_mode_fill_fb_struct(display->drm, fb, info, mode_cmd);
> @@ -2264,7 +2266,7 @@ int intel_framebuffer_init(struct intel_framebuffer=
 *intel_fb,
>=20=20
>  		if (mode_cmd->handles[i] !=3D mode_cmd->handles[0]) {
>  			drm_dbg_kms(display->drm, "bad plane %d handle\n", i);
> -			goto err_frontbuffer_put;
> +			goto err_bo_framebuffer_fini;
>  		}
>=20=20
>  		stride_alignment =3D intel_fb_stride_alignment(fb, i);
> @@ -2272,7 +2274,7 @@ int intel_framebuffer_init(struct intel_framebuffer=
 *intel_fb,
>  			drm_dbg_kms(display->drm,
>  				    "plane %d pitch (%d) must be at least %u byte aligned\n",
>  				    i, fb->pitches[i], stride_alignment);
> -			goto err_frontbuffer_put;
> +			goto err_bo_framebuffer_fini;
>  		}
>=20=20
>  		if (intel_fb_is_gen12_ccs_aux_plane(fb, i)) {
> @@ -2282,7 +2284,7 @@ int intel_framebuffer_init(struct intel_framebuffer=
 *intel_fb,
>  				drm_dbg_kms(display->drm,
>  					    "ccs aux plane %d pitch (%d) must be %d\n",
>  					    i, fb->pitches[i], ccs_aux_stride);
> -				goto err_frontbuffer_put;
> +				goto err_bo_framebuffer_fini;
>  			}
>  		}
>=20=20
> @@ -2291,7 +2293,7 @@ int intel_framebuffer_init(struct intel_framebuffer=
 *intel_fb,
>=20=20
>  	ret =3D intel_fill_fb_info(display, intel_fb);
>  	if (ret)
> -		goto err_frontbuffer_put;
> +		goto err_bo_framebuffer_fini;
>=20=20
>  	if (intel_fb_uses_dpt(fb)) {
>  		struct i915_address_space *vm;
> @@ -2317,10 +2319,10 @@ int intel_framebuffer_init(struct intel_framebuff=
er *intel_fb,
>  err_free_dpt:
>  	if (intel_fb_uses_dpt(fb))
>  		intel_dpt_destroy(intel_fb->dpt_vm);
> -err_frontbuffer_put:
> -	intel_frontbuffer_put(intel_fb->frontbuffer);
> -err:
> +err_bo_framebuffer_fini:
>  	intel_fb_bo_framebuffer_fini(obj);
> +err_frontbuffer_put:
> +	intel_frontbuffer_put(intel_fb->frontbuffer);
>  	return ret;
>  }

--=20
Jani Nikula, Intel
