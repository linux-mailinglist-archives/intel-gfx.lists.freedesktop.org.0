Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7420E8BCFA9
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 16:06:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0BAC10F642;
	Mon,  6 May 2024 14:06:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R/RW7JSD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A163010E18C;
 Mon,  6 May 2024 14:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715004360; x=1746540360;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=XwE+9f0RaTaZKgq5y1VU6uB57N2mffsChIBABv3WIZM=;
 b=R/RW7JSD7qJ5cLwzU+uP72Xig5H3b4BkysITSHvwtj7m5vKjT7rgtbbI
 gu22FSeGLRmNSdjE5WIeMVoS4oH8zLKH//98aNPDLLqN6h00P2ugHGSkX
 QxPr2wlW5exbzrIkXWuME5+tOoI92nCWSr99z+LBSy22PXp1rvdbtzpPc
 hgtnYXhnmdXXAfNQanNVL9y+V9E4Nha8QlxDsJ4705bsf7tCw+2SdjuTB
 w/w/iZnRxLV28MpCO0FoLvm4rASQg0LFRj0XP32rf3KZp0uGq1lfbXiVJ
 s85Ed6ozGGWiNx5RTao1MW0lGE3nAd37eZZbTg18iVSkCXY8y1LnCN8ie g==;
X-CSE-ConnectionGUID: jhLh/uWnSpaY1huFoUTTvQ==
X-CSE-MsgGUID: uIS/6r92QAa5imxrES9Xww==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="21426985"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="21426985"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 07:05:59 -0700
X-CSE-ConnectionGUID: Lhmr6IcER4uBNmz2NHy1hg==
X-CSE-MsgGUID: /igLs6m4SsKm/SsGcG753Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28264443"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 07:05:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/9] drm/i915: Extract intel_plane_needs_physical()
In-Reply-To: <20240506125718.26001-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
 <20240506125718.26001-5-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 17:05:54 +0300
Message-ID: <87y18nkpbx.fsf@intel.com>
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

On Mon, 06 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Pull the "does this plane need a physical address?" check into
> a small helper.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 ++++++++
>  drivers/gpu/drm/i915/display/intel_atomic_plane.h | 1 +
>  drivers/gpu/drm/i915/display/intel_fb_pin.c       | 9 +++------
>  3 files changed, 12 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.c
> index b083b985d170..27224ecdc94c 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -144,6 +144,14 @@ intel_plane_destroy_state(struct drm_plane *plane,
>  	kfree(plane_state);
>  }
>=20=20
> +bool intel_plane_needs_physical(struct intel_plane *plane)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +
> +	return plane->id =3D=3D PLANE_CURSOR &&
> +		DISPLAY_INFO(i915)->cursor_needs_physical;
> +}
> +
>  unsigned int intel_adjusted_rate(const struct drm_rect *src,
>  				 const struct drm_rect *dst,
>  				 unsigned int rate)
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.h
> index 191dad0efc8e..e7a0699f17c8 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> @@ -66,5 +66,6 @@ int intel_plane_check_src_coordinates(struct intel_plan=
e_state *plane_state);
>  void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
>  			       struct intel_plane_state *plane_state);
>  void intel_plane_helper_add(struct intel_plane *plane);
> +bool intel_plane_needs_physical(struct intel_plane *plane);
>=20=20
>  #endif /* __INTEL_ATOMIC_PLANE_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/dr=
m/i915/display/intel_fb_pin.c
> index 2b50c1946c63..5b71d9488184 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -11,6 +11,7 @@
>  #include "gem/i915_gem_object.h"
>=20=20
>  #include "i915_drv.h"
> +#include "intel_atomic_plane.h"
>  #include "intel_display_types.h"
>  #include "intel_dpt.h"
>  #include "intel_fb.h"
> @@ -236,15 +237,11 @@ void intel_unpin_fb_vma(struct i915_vma *vma, unsig=
ned long flags)
>  int intel_plane_pin_fb(struct intel_plane_state *plane_state)
>  {
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
>  	struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	struct i915_vma *vma;
> -	bool phys_cursor =3D
> -		plane->id =3D=3D PLANE_CURSOR &&
> -		DISPLAY_INFO(dev_priv)->cursor_needs_physical;
>=20=20
>  	if (!intel_fb_uses_dpt(fb)) {
> -		vma =3D intel_pin_and_fence_fb_obj(fb, phys_cursor,
> +		vma =3D intel_pin_and_fence_fb_obj(fb, intel_plane_needs_physical(plan=
e),
>  						 &plane_state->view.gtt,
>  						 intel_plane_uses_fence(plane_state),
>  						 &plane_state->flags);
> @@ -259,7 +256,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plan=
e_state)
>  		 * will trigger might_sleep() even if it won't actually sleep,
>  		 * which is the case when the fb has already been pinned.
>  		 */
> -		if (phys_cursor)
> +		if (intel_plane_needs_physical(plane))
>  			plane_state->phys_dma_addr =3D
>  				i915_gem_object_get_dma_address(intel_fb_obj(fb), 0);
>  	} else {

--=20
Jani Nikula, Intel
