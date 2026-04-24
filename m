Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Yu+wNm8062nQJwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 11:14:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B6145BFC6
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 11:14:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD31610F42F;
	Fri, 24 Apr 2026 09:14:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SIUnV3fo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76BA310E3D6;
 Fri, 24 Apr 2026 09:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777022056; x=1808558056;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=O2hersyxp9FXJEK82Cjl6rUJefa4C/4hBCR4/Ucp6xc=;
 b=SIUnV3foCkBjJowzMKKJ8DuC6Nz6lySSG42+mxImE0q1DFF2u2+qKg81
 nY6IG3Q2KqwMeuiaFAvreh1cUObm+BDgQfSWhvYqyM7tIYQN89Uf4u1KZ
 tLZza9kyQeYQFXOhPnlZJVAtXsrpTsUmbH1uCwUN536x4rfsHGp43xo6c
 +FF4aMTGbRKrKqx58zpM3KbhyXbDh/rBr7YkmI/hABZurGwMp9ASw8hKI
 Vrx9bPFiJJy6hZOkvclmCD6DOHLeICQnVPr4vxltdsWE5MwNt1UPdgrhT
 b/EBtZ1spHNaMFFQ5Yn8irA21IAIW1KUu4+jAg9oUh4cmq8KuUi0EGqfe g==;
X-CSE-ConnectionGUID: 4Cr1pc6bS22jZJxE/6mfpg==
X-CSE-MsgGUID: wpGegEwPTkaxi/Gh/3XURg==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="77986926"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="77986926"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 02:14:09 -0700
X-CSE-ConnectionGUID: Jy8fGAUYTwqj5FIzBCTrHQ==
X-CSE-MsgGUID: wp/dL+BlRMmhA+HQ2qmVGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="228340349"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.89])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 02:14:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 01/16] drm/i915: Introduce intel_parent_fb_pin_get_map()
In-Reply-To: <20260423165346.20884-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260423165346.20884-1-ville.syrjala@linux.intel.com>
 <20260423165346.20884-2-ville.syrjala@linux.intel.com>
Date: Fri, 24 Apr 2026 12:14:04 +0300
Message-ID: <cfbcaeb2a7a96b0a6f91e7f0e9b42313a8371f1d@intel.com>
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
X-Rspamd-Queue-Id: 26B6145BFC6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

On Thu, 23 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Introduce the "fb_pin" parent interface, as the first trivial step
> move the *_get_map() stuff there.
>
> The whole "fb_pin" as an interface might not really make sense,
> and perhaps this (and other stuff) should just be collected into
> some kind of "bo" interface. But let's go with "fb_pin" for now
> to match where things are implemented, and possibly restructure
> it later.

Yeah, I've also come to the conclusion that trying to always get things
like this right in advance is somewhat of a waste of time. You'll only
see things clearly once everything is in place.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb_pin.h  | 1 -
>  drivers/gpu/drm/i915/display/intel_fbdev.c   | 7 +++++--
>  drivers/gpu/drm/i915/display/intel_fbdev.h   | 4 ++--
>  drivers/gpu/drm/i915/display/intel_parent.c  | 7 +++++++
>  drivers/gpu/drm/i915/display/intel_parent.h  | 5 +++++
>  drivers/gpu/drm/i915/display/intel_plane.c   | 4 ++--
>  drivers/gpu/drm/i915/i915_driver.c           | 2 ++
>  drivers/gpu/drm/i915/i915_fb_pin.c           | 8 +++++++-
>  drivers/gpu/drm/i915/i915_fb_pin.h           | 9 +++++++++
>  drivers/gpu/drm/xe/display/xe_display.c      | 2 ++
>  drivers/gpu/drm/xe/display/xe_fb_pin.c       | 8 +++++++-
>  drivers/gpu/drm/xe/display/xe_fb_pin.h       | 9 +++++++++
>  include/drm/intel/display_parent_interface.h | 8 ++++++++
>  13 files changed, 65 insertions(+), 9 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/i915_fb_pin.h
>  create mode 100644 drivers/gpu/drm/xe/display/xe_fb_pin.h
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/dr=
m/i915/display/intel_fb_pin.h
> index 5825503c38ea..805e23067004 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
> @@ -35,6 +35,5 @@ void intel_fb_unpin_vma(struct i915_vma *vma, int fence=
_id);
>  int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
>  		       const struct intel_plane_state *old_plane_state);
>  void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state);
> -void intel_fb_get_map(struct i915_vma *vma, struct iosys_map *map);
>=20=20
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm=
/i915/display/intel_fbdev.c
> index 9ab0ac49abb7..ce4082da30e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -55,6 +55,7 @@
>  #include "intel_fb_pin.h"
>  #include "intel_fbdev.h"
>  #include "intel_frontbuffer.h"
> +#include "intel_parent.h"
>  #include "intel_plane.h"
>=20=20
>  struct intel_fbdev {
> @@ -563,7 +564,9 @@ struct i915_vma *intel_fbdev_vma_pointer(struct intel=
_fbdev *fbdev)
>  	return fbdev ? fbdev->vma : NULL;
>  }
>=20=20
> -void intel_fbdev_get_map(struct intel_fbdev *fbdev, struct iosys_map *ma=
p)
> +void intel_fbdev_get_map(struct intel_display *display, struct iosys_map=
 *map)
>  {
> -	intel_fb_get_map(fbdev->vma, map);
> +	struct intel_fbdev *fbdev =3D display->fbdev.fbdev;
> +
> +	intel_parent_fb_pin_get_map(display, fbdev->vma, map);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.h b/drivers/gpu/drm=
/i915/display/intel_fbdev.h
> index 150cc5f45bb3..edaf5d16a456 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.h
> @@ -23,7 +23,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper=
 *helper,
>  void intel_fbdev_setup(struct intel_display *display);
>  struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fb=
dev);
>  struct i915_vma *intel_fbdev_vma_pointer(struct intel_fbdev *fbdev);
> -void intel_fbdev_get_map(struct intel_fbdev *fbdev, struct iosys_map *ma=
p);
> +void intel_fbdev_get_map(struct intel_display *display, struct iosys_map=
 *map);
>  #else
>  #define INTEL_FBDEV_DRIVER_OPS \
>  	.fbdev_probe =3D NULL
> @@ -40,7 +40,7 @@ static inline struct i915_vma *intel_fbdev_vma_pointer(=
struct intel_fbdev *fbdev
>  	return NULL;
>  }
>=20=20
> -static inline void intel_fbdev_get_map(struct intel_fbdev *fbdev, struct=
 iosys_map *map)
> +static inline void intel_fbdev_get_map(struct intel_display *display, st=
ruct iosys_map *map)
>  {
>  }
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/dr=
m/i915/display/intel_parent.c
> index 67b21a42d354..070cc60f49b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.c
> +++ b/drivers/gpu/drm/i915/display/intel_parent.c
> @@ -52,6 +52,13 @@ void intel_parent_dpt_resume(struct intel_display *dis=
play, struct intel_dpt *dp
>  		display->parent->dpt->resume(dpt);
>  }
>=20=20
> +/* fb_pin */
> +void intel_parent_fb_pin_get_map(struct intel_display *display,
> +				 struct i915_vma *vma, struct iosys_map *map)
> +{
> +	return display->parent->fb_pin->get_map(vma, map);
> +}
> +
>  /* frontbuffer */
>  struct intel_frontbuffer *intel_parent_frontbuffer_get(struct intel_disp=
lay *display, struct drm_gem_object *obj)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/dr=
m/i915/display/intel_parent.h
> index 5f0c835b9416..2b9e829e7f47 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.h
> +++ b/drivers/gpu/drm/i915/display/intel_parent.h
> @@ -18,6 +18,7 @@ struct intel_frontbuffer;
>  struct intel_hdcp_gsc_context;
>  struct intel_panic;
>  struct intel_stolen_node;
> +struct iosys_map;
>=20=20
>  /* dpt */
>  struct intel_dpt *intel_parent_dpt_create(struct intel_display *display,
> @@ -26,6 +27,10 @@ void intel_parent_dpt_destroy(struct intel_display *di=
splay, struct intel_dpt *d
>  void intel_parent_dpt_suspend(struct intel_display *display, struct inte=
l_dpt *dpt);
>  void intel_parent_dpt_resume(struct intel_display *display, struct intel=
_dpt *dpt);
>=20=20
> +/* fb_pin */
> +void intel_parent_fb_pin_get_map(struct intel_display *display,
> +				 struct i915_vma *vma, struct iosys_map *map);
> +
>  /* frontbuffer */
>  struct intel_frontbuffer *intel_parent_frontbuffer_get(struct intel_disp=
lay *display, struct drm_gem_object *obj);
>  void intel_parent_frontbuffer_ref(struct intel_display *display, struct =
intel_frontbuffer *front);
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm=
/i915/display/intel_plane.c
> index c2b58d3b9c23..e50e1a15410a 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
> @@ -1404,7 +1404,7 @@ static void intel_panic_flush(struct drm_plane *_pl=
ane)
>  	if (fb =3D=3D intel_fbdev_framebuffer(display->fbdev.fbdev)) {
>  		struct iosys_map map;
>=20=20
> -		intel_fbdev_get_map(display->fbdev.fbdev, &map);
> +		intel_fbdev_get_map(display, &map);
>  		drm_clflush_virt_range(map.vaddr, fb->base.pitches[0] * fb->base.heigh=
t);
>  		return;
>  	}
> @@ -1462,7 +1462,7 @@ static int intel_get_scanout_buffer(struct drm_plan=
e *plane,
>  		return -ENODEV;
>=20=20
>  	if (fb =3D=3D intel_fbdev_framebuffer(display->fbdev.fbdev)) {
> -		intel_fbdev_get_map(display->fbdev.fbdev, &sb->map[0]);
> +		intel_fbdev_get_map(display, &sb->map[0]);
>  	} else {
>  		int ret;
>  		/* Can't disable tiling if DPT is in use */
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index d31819758f3d..c23436be5973 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -99,6 +99,7 @@
>  #include "i915_drv.h"
>  #include "i915_dsb_buffer.h"
>  #include "i915_edram.h"
> +#include "i915_fb_pin.h"
>  #include "i915_file_private.h"
>  #include "i915_getparam.h"
>  #include "i915_gmch.h"
> @@ -769,6 +770,7 @@ static const struct intel_display_parent_interface pa=
rent =3D {
>  	.bo =3D &i915_display_bo_interface,
>  	.dpt =3D &i915_display_dpt_interface,
>  	.dsb =3D &i915_display_dsb_interface,
> +	.fb_pin =3D &i915_display_fb_pin_interface,
>  	.frontbuffer =3D &i915_display_frontbuffer_interface,
>  	.hdcp =3D &i915_display_hdcp_interface,
>  	.initial_plane =3D &i915_display_initial_plane_interface,
> diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i9=
15_fb_pin.c
> index b0e121462ca3..b800b55530a5 100644
> --- a/drivers/gpu/drm/i915/i915_fb_pin.c
> +++ b/drivers/gpu/drm/i915/i915_fb_pin.c
> @@ -8,6 +8,7 @@
>   */
>=20=20
>  #include <drm/drm_print.h>
> +#include <drm/intel/display_parent_interface.h>
>=20=20
>  #include "display/intel_display_core.h"
>  #include "display/intel_display_types.h"
> @@ -18,6 +19,7 @@
>  #include "gem/i915_gem_domain.h"
>  #include "gem/i915_gem_object.h"
>=20=20
> +#include "i915_fb_pin.h"
>  #include "i915_dpt.h"
>  #include "i915_drv.h"
>  #include "i915_vma.h"
> @@ -352,7 +354,11 @@ void intel_plane_unpin_fb(struct intel_plane_state *=
old_plane_state)
>  	}
>  }
>=20=20
> -void intel_fb_get_map(struct i915_vma *vma, struct iosys_map *map)
> +static void i915_fb_pin_get_map(struct i915_vma *vma, struct iosys_map *=
map)
>  {
>  	iosys_map_set_vaddr_iomem(map, i915_vma_get_iomap(vma));
>  }
> +
> +const struct intel_display_fb_pin_interface i915_display_fb_pin_interfac=
e =3D {
> +	.get_map =3D i915_fb_pin_get_map,
> +};
> diff --git a/drivers/gpu/drm/i915/i915_fb_pin.h b/drivers/gpu/drm/i915/i9=
15_fb_pin.h
> new file mode 100644
> index 000000000000..18c6c0b61ab8
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_fb_pin.h
> @@ -0,0 +1,9 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright =C2=A9 2026 Intel Corporation */
> +
> +#ifndef __I915_FB_PIN_H__
> +#define __I915_FB_PIN_H__
> +
> +extern const struct intel_display_fb_pin_interface i915_display_fb_pin_i=
nterface;
> +
> +#endif /* __I915_FB_PIN_H__ */
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index 0747044f7c2a..aa73023b7398 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -40,6 +40,7 @@
>  #include "xe_display_pcode.h"
>  #include "xe_display_rpm.h"
>  #include "xe_dsb_buffer.h"
> +#include "xe_fb_pin.h"
>  #include "xe_frontbuffer.h"
>  #include "xe_hdcp_gsc.h"
>  #include "xe_initial_plane.h"
> @@ -553,6 +554,7 @@ static bool has_auxccs(struct drm_device *drm)
>  static const struct intel_display_parent_interface parent =3D {
>  	.bo =3D &xe_display_bo_interface,
>  	.dsb =3D &xe_display_dsb_interface,
> +	.fb_pin =3D &xe_display_fb_pin_interface,
>  	.frontbuffer =3D &xe_display_frontbuffer_interface,
>  	.hdcp =3D &xe_display_hdcp_interface,
>  	.initial_plane =3D &xe_display_initial_plane_interface,
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/=
display/xe_fb_pin.c
> index 948446346c53..afb6cdda537e 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -3,6 +3,7 @@
>   * Copyright =C2=A9 2021 Intel Corporation
>   */
>=20=20
> +#include <drm/intel/display_parent_interface.h>
>  #include <drm/ttm/ttm_bo.h>
>=20=20
>  #include "intel_display_core.h"
> @@ -13,6 +14,7 @@
>  #include "xe_bo.h"
>  #include "xe_device.h"
>  #include "xe_display_vma.h"
> +#include "xe_fb_pin.h"
>  #include "xe_ggtt.h"
>  #include "xe_pat.h"
>  #include "xe_pm.h"
> @@ -498,7 +500,11 @@ void intel_plane_unpin_fb(struct intel_plane_state *=
old_plane_state)
>  	old_plane_state->ggtt_vma =3D NULL;
>  }
>=20=20
> -void intel_fb_get_map(struct i915_vma *vma, struct iosys_map *map)
> +static void xe_fb_pin_get_map(struct i915_vma *vma, struct iosys_map *ma=
p)
>  {
>  	*map =3D vma->bo->vmap;
>  }
> +
> +const struct intel_display_fb_pin_interface xe_display_fb_pin_interface =
=3D {
> +	.get_map =3D xe_fb_pin_get_map,
> +};
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.h b/drivers/gpu/drm/xe/=
display/xe_fb_pin.h
> new file mode 100644
> index 000000000000..8a42d4009f5d
> --- /dev/null
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.h
> @@ -0,0 +1,9 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright =C2=A9 2026 Intel Corporation */
> +
> +#ifndef __XE_FB_PIN_H__
> +#define __XE_FB_PIN_H__
> +
> +extern const struct intel_display_fb_pin_interface xe_display_fb_pin_int=
erface;
> +
> +#endif /* __XE_FB_PIN_H__ */
> diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/i=
ntel/display_parent_interface.h
> index 270dc028bec2..ee2e9572bfca 100644
> --- a/include/drm/intel/display_parent_interface.h
> +++ b/include/drm/intel/display_parent_interface.h
> @@ -24,6 +24,7 @@ struct intel_hdcp_gsc_context;
>  struct intel_initial_plane_config;
>  struct intel_panic;
>  struct intel_stolen_node;
> +struct iosys_map;
>  struct ref_tracker;
>  struct seq_file;
>  struct vm_area_struct;
> @@ -69,6 +70,10 @@ struct intel_display_dsb_interface {
>  	void (*flush_map)(struct intel_dsb_buffer *dsb_buf);
>  };
>=20=20
> +struct intel_display_fb_pin_interface {
> +	void (*get_map)(struct i915_vma *vma, struct iosys_map *map);
> +};
> +
>  struct intel_display_frontbuffer_interface {
>  	struct intel_frontbuffer *(*get)(struct drm_gem_object *obj);
>  	void (*ref)(struct intel_frontbuffer *front);
> @@ -211,6 +216,9 @@ struct intel_display_parent_interface {
>  	/** @dsb: DSB buffer interface */
>  	const struct intel_display_dsb_interface *dsb;
>=20=20
> +	/** @fb_pin: Framebuffer pin interface */
> +	const struct intel_display_fb_pin_interface *fb_pin;
> +
>  	/** @frontbuffer: Frontbuffer interface */
>  	const struct intel_display_frontbuffer_interface *frontbuffer;

--=20
Jani Nikula, Intel
