Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB4E8BCFC0
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 16:11:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD95E10F6BE;
	Mon,  6 May 2024 14:11:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DmeLc2wQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3D8D10F422;
 Mon,  6 May 2024 14:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715004673; x=1746540673;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=jsO+CMaQbuN1ZXjmnniqMjhHgvWgQfoFbZtfVv+y7jw=;
 b=DmeLc2wQRC1Mslq7QytzMM5Nlof07QxuCqMB0+r36a0ioXnlprmOZqde
 rO15lF9s5RFiVBOKJymsCpQbnImJP0Bj+Kls6Eu/XISGY8gBLpAZc8CNK
 Wl+N3txhNlBBoD7P16VeDN04alUTWvPw4DkAi6FEmhKrBziypBnVLp2j5
 I3/FkEpUp4eCj4CLEmgoCGn7C37Sw99H/Ef7VFBsV5Ruz2+5gQ8WaJg4S
 uN8r1WegM1ar3nA0skZMpLcdHO//BwOL0WfKrVwrCZONbGWDkiDPhERrN
 MmX4ZN2tToefWJNFIg2EO0qPC3yEnsrz4RzvwFlj9AZg6kccoG5sqba2z Q==;
X-CSE-ConnectionGUID: ilOPn0/6Q3GWQfZYvCRAgA==
X-CSE-MsgGUID: ZuVpfHU0TfCNgm3XslFNUw==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10583245"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10583245"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 07:11:13 -0700
X-CSE-ConnectionGUID: kTBVujPbSD2uzsLhM3znww==
X-CSE-MsgGUID: tCiyiykiQoS6ze6k3eJJkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28268251"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 07:11:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 6/9] drm/i915: Constify 'fb' in during pinning
In-Reply-To: <20240506125718.26001-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
 <20240506125718.26001-7-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 17:11:08 +0300
Message-ID: <87seyvkp37.fsf@intel.com>
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
> Make the 'fb' pointers const in the pinning code. We never
> want to mutate these. Also nuke a few aliasing fb vs. intel_fb
> cases by just using the more specific type everywhere in the
> same function.

I was half expecting to see further changes switching interfaces to
intel_framebuffer instead of passing &fb->base around. But this is good
regardless.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb_pin.c | 33 ++++++++++-----------
>  drivers/gpu/drm/i915/display/intel_fb_pin.h |  2 +-
>  drivers/gpu/drm/xe/display/xe_fb_pin.c      |  8 ++---
>  3 files changed, 21 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/dr=
m/i915/display/intel_fb_pin.c
> index 041f09f76628..7971656982a6 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -18,7 +18,7 @@
>  #include "intel_fb_pin.h"
>=20=20
>  static struct i915_vma *
> -intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
> +intel_pin_fb_obj_dpt(const struct drm_framebuffer *fb,
>  		     const struct i915_gtt_view *view,
>  		     unsigned int alignment,
>  		     unsigned long *out_flags,
> @@ -102,7 +102,7 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
>  }
>=20=20
>  struct i915_vma *
> -intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
> +intel_pin_and_fence_fb_obj(const struct drm_framebuffer *fb,
>  			   bool phys_cursor,
>  			   const struct i915_gtt_view *view,
>  			   bool uses_fence,
> @@ -237,11 +237,12 @@ void intel_unpin_fb_vma(struct i915_vma *vma, unsig=
ned long flags)
>  int intel_plane_pin_fb(struct intel_plane_state *plane_state)
>  {
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -	struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	const struct intel_framebuffer *fb =3D
> +		to_intel_framebuffer(plane_state->hw.fb);
>  	struct i915_vma *vma;
>=20=20
> -	if (!intel_fb_uses_dpt(fb)) {
> -		vma =3D intel_pin_and_fence_fb_obj(fb, intel_plane_needs_physical(plan=
e),
> +	if (!intel_fb_uses_dpt(&fb->base)) {
> +		vma =3D intel_pin_and_fence_fb_obj(&fb->base, intel_plane_needs_physic=
al(plane),
>  						 &plane_state->view.gtt,
>  						 intel_plane_uses_fence(plane_state),
>  						 &plane_state->flags);
> @@ -258,22 +259,21 @@ int intel_plane_pin_fb(struct intel_plane_state *pl=
ane_state)
>  		 */
>  		if (intel_plane_needs_physical(plane))
>  			plane_state->phys_dma_addr =3D
> -				i915_gem_object_get_dma_address(intel_fb_obj(fb), 0);
> +				i915_gem_object_get_dma_address(intel_fb_obj(&fb->base), 0);
>  	} else {
> -		struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> -		unsigned int alignment =3D intel_surf_alignment(fb, 0);
> +		unsigned int alignment =3D intel_surf_alignment(&fb->base, 0);
>=20=20
> -		vma =3D intel_dpt_pin(intel_fb->dpt_vm, alignment / 512);
> +		vma =3D intel_dpt_pin(fb->dpt_vm, alignment / 512);
>  		if (IS_ERR(vma))
>  			return PTR_ERR(vma);
>=20=20
>  		plane_state->ggtt_vma =3D vma;
>=20=20
> -		vma =3D intel_pin_fb_obj_dpt(fb, &plane_state->view.gtt,
> +		vma =3D intel_pin_fb_obj_dpt(&fb->base, &plane_state->view.gtt,
>  					   alignment, &plane_state->flags,
> -					   intel_fb->dpt_vm);
> +					   fb->dpt_vm);
>  		if (IS_ERR(vma)) {
> -			intel_dpt_unpin(intel_fb->dpt_vm);
> +			intel_dpt_unpin(fb->dpt_vm);
>  			plane_state->ggtt_vma =3D NULL;
>  			return PTR_ERR(vma);
>  		}
> @@ -288,22 +288,21 @@ int intel_plane_pin_fb(struct intel_plane_state *pl=
ane_state)
>=20=20
>  void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
>  {
> -	struct drm_framebuffer *fb =3D old_plane_state->hw.fb;
> +	const struct intel_framebuffer *fb =3D
> +		to_intel_framebuffer(old_plane_state->hw.fb);
>  	struct i915_vma *vma;
>=20=20
> -	if (!intel_fb_uses_dpt(fb)) {
> +	if (!intel_fb_uses_dpt(&fb->base)) {
>  		vma =3D fetch_and_zero(&old_plane_state->ggtt_vma);
>  		if (vma)
>  			intel_unpin_fb_vma(vma, old_plane_state->flags);
>  	} else {
> -		struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> -
>  		vma =3D fetch_and_zero(&old_plane_state->dpt_vma);
>  		if (vma)
>  			intel_unpin_fb_vma(vma, old_plane_state->flags);
>=20=20
>  		vma =3D fetch_and_zero(&old_plane_state->ggtt_vma);
>  		if (vma)
> -			intel_dpt_unpin(intel_fb->dpt_vm);
> +			intel_dpt_unpin(fb->dpt_vm);
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/dr=
m/i915/display/intel_fb_pin.h
> index de0efaa25905..edcebe75afd7 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
> @@ -14,7 +14,7 @@ struct intel_plane_state;
>  struct i915_gtt_view;
>=20=20
>  struct i915_vma *
> -intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
> +intel_pin_and_fence_fb_obj(const struct drm_framebuffer *fb,
>  			   bool phys_cursor,
>  			   const struct i915_gtt_view *view,
>  			   bool uses_fence,
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/=
display/xe_fb_pin.c
> index 3e1ae37c4c8b..8b7ca3268834 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -77,7 +77,7 @@ write_dpt_remapped(struct xe_bo *bo, struct iosys_map *=
map, u32 *dpt_ofs,
>  	*dpt_ofs =3D ALIGN(*dpt_ofs, 4096);
>  }
>=20=20
> -static int __xe_pin_fb_vma_dpt(struct intel_framebuffer *fb,
> +static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
>  			       const struct i915_gtt_view *view,
>  			       struct i915_vma *vma)
>  {
> @@ -181,7 +181,7 @@ write_ggtt_rotated(struct xe_bo *bo, struct xe_ggtt *=
ggtt, u32 *ggtt_ofs, u32 bo
>  	}
>  }
>=20=20
> -static int __xe_pin_fb_vma_ggtt(struct intel_framebuffer *fb,
> +static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
>  				const struct i915_gtt_view *view,
>  				struct i915_vma *vma)
>  {
> @@ -249,7 +249,7 @@ static int __xe_pin_fb_vma_ggtt(struct intel_framebuf=
fer *fb,
>  	return ret;
>  }
>=20=20
> -static struct i915_vma *__xe_pin_fb_vma(struct intel_framebuffer *fb,
> +static struct i915_vma *__xe_pin_fb_vma(const struct intel_framebuffer *=
fb,
>  					const struct i915_gtt_view *view)
>  {
>  	struct drm_device *dev =3D fb->base.dev;
> @@ -333,7 +333,7 @@ static void __xe_unpin_fb_vma(struct i915_vma *vma)
>  }
>=20=20
>  struct i915_vma *
> -intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
> +intel_pin_and_fence_fb_obj(const struct drm_framebuffer *fb,
>  			   bool phys_cursor,
>  			   const struct i915_gtt_view *view,
>  			   bool uses_fence,

--=20
Jani Nikula, Intel
