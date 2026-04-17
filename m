Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFnmJI0K4mmE0wAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 12:25:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F7A41A160
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 12:25:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FF0810E9D9;
	Fri, 17 Apr 2026 10:25:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lx5KY4gT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17D0710E9D9;
 Fri, 17 Apr 2026 10:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776421510; x=1807957510;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Jk5gqhvOV7DsiBeKduClDTOmoEQVYqXC8fTcQJr3kKA=;
 b=lx5KY4gToq00KpXlMYZ0VoZPr3z33TQjderRq/fHiISEmpPnwr9n4Rko
 mo7DBdKOhK/RAsFnH8tBBDx0tSsUJ7m1jifWe6eH8inpnEineb/xIAxsS
 d7lBwmrfGHofF1tCWRlmUHsY+9ruQUjY94gYw8gdl7rHOvUZDpaRzjcPN
 q2Ql+bvxAk4Svy/DlwMcrLDv2tT8wleoAtuQVWhgJxtRSON+Kg8SStk7s
 qLgLau9hUsUJDGBqCT+nMeyKDS0M95lSMPTsLxc5Z3LDFS+hdDkbk5T1q
 cyZp8pzm6zBMV54G/aNxsG9v+FeAHF7WGDPVqhxryERWHc4XbmvJxsigD g==;
X-CSE-ConnectionGUID: Yru5zrvZQVWE7LibMKFIWg==
X-CSE-MsgGUID: MntA71y4RQCcf/LhmozXgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="88508523"
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="88508523"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 03:25:09 -0700
X-CSE-ConnectionGUID: UGXbUAnnQqWrs6iqYZq7bA==
X-CSE-MsgGUID: R0o9HFNOROCyKhpLxzskOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="269024278"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.127])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 03:25:09 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 11/11] drm/i915: Don't pass the framebuffer to low level
 pinning functions
In-Reply-To: <20260416174448.28264-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260416174448.28264-1-ville.syrjala@linux.intel.com>
 <20260416174448.28264-12-ville.syrjala@linux.intel.com>
Date: Fri, 17 Apr 2026 13:25:05 +0300
Message-ID: <930d88df274c94811050a7c9f2bd132685bf2442@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 23F7A41A160
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 16 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Now that we have the pin_params the low level pinning code no
> longer needs the entire framebuffer structure. The gem object
> alone (along with the pin_params) is enough.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb_pin.h   |  4 +--
>  drivers/gpu/drm/i915/display/intel_fbdev.c    |  6 ++--
>  drivers/gpu/drm/i915/i915_fb_pin.c            | 15 ++++------
>  drivers/gpu/drm/xe/display/xe_fb_pin.c        | 28 ++++++++-----------
>  drivers/gpu/drm/xe/display/xe_initial_plane.c |  2 +-
>  5 files changed, 23 insertions(+), 32 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/dr=
m/i915/display/intel_fb_pin.h
> index 95f83bf7411f..5825503c38ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
> @@ -8,7 +8,7 @@
>=20=20
>  #include <linux/types.h>
>=20=20
> -struct drm_framebuffer;
> +struct drm_gem_object;
>  struct i915_vma;
>  struct intel_plane_state;
>  struct i915_gtt_view;
> @@ -26,7 +26,7 @@ struct intel_fb_pin_params {
>  };
>=20=20
>  struct i915_vma *
> -intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
> +intel_fb_pin_to_ggtt(struct drm_gem_object *obj,
>  		     const struct intel_fb_pin_params *pin_params,
>  		     int *out_fence_id);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm=
/i915/display/intel_fbdev.c
> index 4c3e54acde81..9ab0ac49abb7 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -306,6 +306,8 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_help=
er *helper,
>  		sizes->fb_height =3D fb->base.height;
>  	}
>=20=20
> +	obj =3D intel_fb_bo(&fb->base);
> +
>  	/* Pin the GGTT vma for our access via info->screen_base.
>  	 * This also validates that any existing fb inherited from the
>  	 * BIOS is suitable for own access.
> @@ -317,7 +319,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_help=
er *helper,
>  						       DRM_MODE_ROTATE_0);
>  	pin_params.needs_low_address =3D intel_plane_needs_low_address(display);
>=20=20
> -	vma =3D intel_fb_pin_to_ggtt(&fb->base, &pin_params, NULL);
> +	vma =3D intel_fb_pin_to_ggtt(obj, &pin_params, NULL);
>  	if (IS_ERR(vma)) {
>  		ret =3D PTR_ERR(vma);
>  		goto out_unlock;
> @@ -328,8 +330,6 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_help=
er *helper,
>=20=20
>  	info->fbops =3D &intelfb_ops;
>=20=20
> -	obj =3D intel_fb_bo(&fb->base);
> -
>  	ret =3D intel_bo_fbdev_fill_info(obj, info, vma);
>  	if (ret)
>  		goto out_unpin;
> diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i9=
15_fb_pin.c
> index 5060ec8c76ca..b0e121462ca3 100644
> --- a/drivers/gpu/drm/i915/i915_fb_pin.c
> +++ b/drivers/gpu/drm/i915/i915_fb_pin.c
> @@ -23,12 +23,10 @@
>  #include "i915_vma.h"
>=20=20
>  static struct i915_vma *
> -intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
> -		    struct intel_dpt *dpt,
> +intel_fb_pin_to_dpt(struct drm_gem_object *_obj, struct intel_dpt *dpt,
>  		    const struct intel_fb_pin_params *pin_params)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(fb->dev);
> -	struct drm_gem_object *_obj =3D intel_fb_bo(fb);
> +	struct drm_i915_private *i915 =3D to_i915(_obj->dev);
>  	struct drm_i915_gem_object *obj =3D to_intel_bo(_obj);
>  	struct i915_address_space *vm =3D i915_dpt_to_vm(dpt);
>  	struct i915_gem_ww_ctx ww;
> @@ -108,12 +106,11 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *f=
b,
>  }
>=20=20
>  struct i915_vma *
> -intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
> +intel_fb_pin_to_ggtt(struct drm_gem_object *_obj,
>  		     const struct intel_fb_pin_params *pin_params,
>  		     int *out_fence_id)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(fb->dev);
> -	struct drm_gem_object *_obj =3D intel_fb_bo(fb);
> +	struct drm_i915_private *i915 =3D to_i915(_obj->dev);
>  	struct drm_i915_gem_object *obj =3D to_intel_bo(_obj);
>  	intel_wakeref_t wakeref;
>  	struct i915_gem_ww_ctx ww;
> @@ -275,7 +272,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plan=
e_state,
>  		};
>  		int fence_id =3D -1;
>=20=20
> -		vma =3D intel_fb_pin_to_ggtt(&fb->base, &pin_params,
> +		vma =3D intel_fb_pin_to_ggtt(intel_fb_bo(&fb->base), &pin_params,
>  					   intel_plane_uses_fence(plane_state) ? &fence_id : NULL);
>  		if (IS_ERR(vma))
>  			return PTR_ERR(vma);
> @@ -295,7 +292,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plan=
e_state,
>=20=20
>  		plane_state->ggtt_vma =3D vma;
>=20=20
> -		vma =3D intel_fb_pin_to_dpt(&fb->base, fb->dpt, &pin_params);
> +		vma =3D intel_fb_pin_to_dpt(intel_fb_bo(&fb->base), fb->dpt, &pin_para=
ms);
>  		if (IS_ERR(vma)) {
>  			i915_dpt_unpin_from_ggtt(fb->dpt);
>  			plane_state->ggtt_vma =3D NULL;
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/=
display/xe_fb_pin.c
> index 44562769fbc9..5d7b30f62930 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -139,14 +139,13 @@ write_dpt_remapped(struct xe_bo *bo,
>  	}
>  }
>=20=20
> -static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
> +static int __xe_pin_fb_vma_dpt(struct drm_gem_object *obj,
>  			       const struct intel_fb_pin_params *pin_params,
>  			       struct i915_vma *vma)
>  {
> -	struct xe_device *xe =3D to_xe_device(fb->base.dev);
> +	struct xe_device *xe =3D to_xe_device(obj->dev);
>  	struct xe_tile *tile0 =3D xe_device_get_root_tile(xe);
>  	struct xe_ggtt *ggtt =3D tile0->mem.ggtt;
> -	struct drm_gem_object *obj =3D intel_fb_bo(&fb->base);
>  	const struct i915_gtt_view *view =3D pin_params->view;
>  	struct xe_bo *bo =3D gem_to_xe_bo(obj), *dpt;
>  	u32 dpt_size, size =3D bo->ttm.base.size;
> @@ -268,14 +267,13 @@ static void write_ggtt_rotated_node(struct xe_ggtt =
*ggtt, struct xe_ggtt_node *n
>  				   rot_info->plane[i].dst_stride);
>  }
>=20=20
> -static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
> +static int __xe_pin_fb_vma_ggtt(struct drm_gem_object *obj,
>  				const struct intel_fb_pin_params *pin_params,
>  				struct i915_vma *vma)
>  {
> -	struct drm_gem_object *obj =3D intel_fb_bo(&fb->base);
>  	const struct i915_gtt_view *view =3D pin_params->view;
>  	struct xe_bo *bo =3D gem_to_xe_bo(obj);
> -	struct xe_device *xe =3D to_xe_device(fb->base.dev);
> +	struct xe_device *xe =3D to_xe_device(obj->dev);
>  	struct xe_tile *tile0 =3D xe_device_get_root_tile(xe);
>  	struct xe_ggtt *ggtt =3D tile0->mem.ggtt;
>  	u64 pte, size;
> @@ -318,13 +316,11 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_=
framebuffer *fb,
>  	return ret;
>  }
>=20=20
> -static struct i915_vma *__xe_pin_fb_vma(const struct intel_framebuffer *=
fb, bool is_dpt,
> +static struct i915_vma *__xe_pin_fb_vma(struct drm_gem_object *obj, bool=
 is_dpt,
>  					const struct intel_fb_pin_params *pin_params)
>  {
> -	struct drm_device *dev =3D fb->base.dev;
> -	struct xe_device *xe =3D to_xe_device(dev);
> +	struct xe_device *xe =3D to_xe_device(obj->dev);
>  	struct i915_vma *vma =3D kzalloc(sizeof(*vma), GFP_KERNEL);
> -	struct drm_gem_object *obj =3D intel_fb_bo(&fb->base);
>  	struct xe_bo *bo =3D gem_to_xe_bo(obj);
>  	struct xe_validation_ctx ctx;
>  	struct drm_exec exec;
> @@ -376,9 +372,9 @@ static struct i915_vma *__xe_pin_fb_vma(const struct =
intel_framebuffer *fb, bool
>=20=20
>  	vma->bo =3D bo;
>  	if (is_dpt)
> -		ret =3D __xe_pin_fb_vma_dpt(fb, pin_params, vma);
> +		ret =3D __xe_pin_fb_vma_dpt(obj, pin_params, vma);
>  	else
> -		ret =3D __xe_pin_fb_vma_ggtt(fb, pin_params, vma);
> +		ret =3D __xe_pin_fb_vma_ggtt(obj, pin_params, vma);
>  	if (ret)
>  		goto err_unpin;
>=20=20
> @@ -412,14 +408,14 @@ static void __xe_unpin_fb_vma(struct i915_vma *vma)
>  }
>=20=20
>  struct i915_vma *
> -intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
> +intel_fb_pin_to_ggtt(struct drm_gem_object *obj,
>  		     const struct intel_fb_pin_params *pin_params,
>  		     int *out_fence_id)
>  {
>  	if (out_fence_id)
>  		*out_fence_id =3D -1;
>=20=20
> -	return __xe_pin_fb_vma(to_intel_framebuffer(fb), false, pin_params);
> +	return __xe_pin_fb_vma(obj, false, pin_params);
>  }
>=20=20
>  void intel_fb_unpin_vma(struct i915_vma *vma, int fence_id)
> @@ -469,7 +465,6 @@ int intel_plane_pin_fb(struct intel_plane_state *new_=
plane_state,
>  	struct drm_gem_object *obj =3D intel_fb_bo(fb);
>  	struct xe_bo *bo =3D gem_to_xe_bo(obj);
>  	struct i915_vma *vma;
> -	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
>  	struct intel_plane *plane =3D to_intel_plane(new_plane_state->uapi.plan=
e);
>  	struct intel_fb_pin_params pin_params =3D {
>  		.view =3D &new_plane_state->view.gtt,
> @@ -483,8 +478,7 @@ int intel_plane_pin_fb(struct intel_plane_state *new_=
plane_state,
>  	/* We reject creating !SCANOUT fb's, so this is weird.. */
>  	drm_WARN_ON(bo->ttm.base.dev, !(bo->flags & XE_BO_FLAG_FORCE_WC));
>=20=20
> -	vma =3D __xe_pin_fb_vma(intel_fb, intel_fb_uses_dpt(&intel_fb->base),
> -			      &pin_params);
> +	vma =3D __xe_pin_fb_vma(obj, intel_fb_uses_dpt(fb), &pin_params);
>=20=20
>  	if (IS_ERR(vma))
>  		return PTR_ERR(vma);
> diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/=
drm/xe/display/xe_initial_plane.c
> index 4f0ad4692ed6..8e3c0c4b81fe 100644
> --- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
> +++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
> @@ -138,7 +138,7 @@ xe_initial_plane_setup(struct drm_plane_state *_plane=
_state,
>  		.view =3D &plane_state->view.gtt,
>  	};
>=20=20
> -	vma =3D intel_fb_pin_to_ggtt(fb, &pin_params, NULL);
> +	vma =3D intel_fb_pin_to_ggtt(intel_fb_bo(fb), &pin_params, NULL);
>  	if (IS_ERR(vma))
>  		return PTR_ERR(vma);

--=20
Jani Nikula, Intel
