Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF82C461E8
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 12:07:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40DE410E196;
	Mon, 10 Nov 2025 11:07:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TjGFbpkg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12A1210E196;
 Mon, 10 Nov 2025 11:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762772876; x=1794308876;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=WUa+ymYSXlIo7Nu8Tt1hbG9nCOHyKrnFIw2GaundiqA=;
 b=TjGFbpkg2JC6aokYovdAP/T3Ik4bzXDO4BHizQsAN6LfdmvIl37VeK7v
 iHAdGj7qWob5rO20XLks88WA68uZR6JQCbDz+gLqeqzl94QjTPoAeGF7w
 3kXnl/IsO/2tyic1CCuKaoKz3mYfMDQwRxLke+RhuwM2F2LqvkUEXYX5s
 3+JAoJ/A/ah5GxDR7KtCHy0GLP848y3urezvhj2xLIcurlDWQWQmogrMZ
 F0zVUbqi5+cViUXc5EiW5sc50w+2D/5bOj1iieNKS4gPSgNzJeB7G4Pvq
 qXUY5xLPC1LTBsGRh6Xjs3ZQOZTmgrPIlpcuzPqKdMi2yjJANm95flKm9 g==;
X-CSE-ConnectionGUID: xS3YfQsSQomrppS4QRxC1g==
X-CSE-MsgGUID: clSo8H4aQOWRjJ+VLiASvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11608"; a="68463852"
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; d="scan'208";a="68463852"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 03:07:55 -0800
X-CSE-ConnectionGUID: ObZNL5nFTxO/F8/N7wzbtQ==
X-CSE-MsgGUID: 3foiEEykRH+eoYTD5Oi31w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; d="scan'208";a="192756294"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 03:07:54 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 5/9] drm/i915/fb: Init 'ret' in each error branch in
 intel_framebuffer_init()
In-Reply-To: <20251107181126.5743-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251107181126.5743-1-ville.syrjala@linux.intel.com>
 <20251107181126.5743-6-ville.syrjala@linux.intel.com>
Date: Mon, 10 Nov 2025 13:07:51 +0200
Message-ID: <af1c5d6c1b8fa5b7a7dd36714b187383a4435b03@intel.com>
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
> Make the order of things a bit less fragile in
> intel_framebuffer_init() by assinging 'ret' in each

*assigning

> error branch instead of depending on some earlier
> assignment.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index 2eddccb1bc9e..b34b4961fe1c 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -2234,13 +2234,13 @@ int intel_framebuffer_init(struct intel_framebuff=
er *intel_fb,
>  	if (ret)
>  		goto err_frontbuffer_put;
>=20=20
> -	ret =3D -EINVAL;
>  	if (!drm_any_plane_has_format(display->drm,
>  				      mode_cmd->pixel_format,
>  				      mode_cmd->modifier[0])) {
>  		drm_dbg_kms(display->drm,
>  			    "unsupported pixel format %p4cc / modifier 0x%llx\n",
>  			    &mode_cmd->pixel_format, mode_cmd->modifier[0]);
> +		ret =3D -EINVAL;
>  		goto err_bo_framebuffer_fini;
>  	}
>=20=20
> @@ -2251,6 +2251,7 @@ int intel_framebuffer_init(struct intel_framebuffer=
 *intel_fb,
>  			    mode_cmd->modifier[0] !=3D DRM_FORMAT_MOD_LINEAR ?
>  			    "tiled" : "linear",
>  			    mode_cmd->pitches[0], max_stride);
> +		ret =3D -EINVAL;
>  		goto err_bo_framebuffer_fini;
>  	}
>=20=20
> @@ -2259,6 +2260,7 @@ int intel_framebuffer_init(struct intel_framebuffer=
 *intel_fb,
>  		drm_dbg_kms(display->drm,
>  			    "plane 0 offset (0x%08x) must be 0\n",
>  			    mode_cmd->offsets[0]);
> +		ret =3D -EINVAL;
>  		goto err_bo_framebuffer_fini;
>  	}
>=20=20
> @@ -2269,6 +2271,7 @@ int intel_framebuffer_init(struct intel_framebuffer=
 *intel_fb,
>=20=20
>  		if (mode_cmd->handles[i] !=3D mode_cmd->handles[0]) {
>  			drm_dbg_kms(display->drm, "bad plane %d handle\n", i);
> +			ret =3D -EINVAL;
>  			goto err_bo_framebuffer_fini;
>  		}
>=20=20
> @@ -2277,6 +2280,7 @@ int intel_framebuffer_init(struct intel_framebuffer=
 *intel_fb,
>  			drm_dbg_kms(display->drm,
>  				    "plane %d pitch (%d) must be at least %u byte aligned\n",
>  				    i, fb->pitches[i], stride_alignment);
> +			ret =3D -EINVAL;
>  			goto err_bo_framebuffer_fini;
>  		}
>=20=20
> @@ -2287,6 +2291,7 @@ int intel_framebuffer_init(struct intel_framebuffer=
 *intel_fb,
>  				drm_dbg_kms(display->drm,
>  					    "ccs aux plane %d pitch (%d) must be %d\n",
>  					    i, fb->pitches[i], ccs_aux_stride);
> +				ret =3D -EINVAL;
>  				goto err_bo_framebuffer_fini;
>  			}
>  		}

--=20
Jani Nikula, Intel
