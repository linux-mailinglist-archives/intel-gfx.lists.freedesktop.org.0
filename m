Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id W0jRI+n6imlyPAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 10:31:21 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F37BA118E59
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 10:31:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF20C10E51F;
	Tue, 10 Feb 2026 09:31:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aJ+Nfty0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7216710E51F;
 Tue, 10 Feb 2026 09:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770715878; x=1802251878;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=lBXH5ZhM0l/TPIwGbCcSN07NyDX5XNdxA+eK1T7Moms=;
 b=aJ+Nfty0PQcEsdA+jqfFTUkJpOnn+miZq4Cs/vm5CkoWQmwIu3GfC7Mx
 3qdjIwJ//ufPHO+2wnU/Sf2mxyBXniCYcrW0g+3kjIEdqQ3cT0HiNKYOu
 6KYufAC2dtnUkkQe720NxoNqiMvIkPP5J+3Ilhz6yuaSSiyimuwtkjLn3
 eSqiVqPSc3QrDK8Iq9g0iqH7dyNiV+BNAGIXLxE0gv/1TfrkraeqOkADh
 0eJwuKDgda3B6ci0lZQaQQFXsUHLLH8c2lZXb1VsfzEqPU0Z4RZ5/mLbW
 XjvTwxftWtPpYBttk0if42Og41tb5LY+kJgoYZzPn5sRLGhpNOlehTgT0 w==;
X-CSE-ConnectionGUID: yDY1hWHlTzWu6meFVO5pBQ==
X-CSE-MsgGUID: 9Fd/18LBS6K/5kOkKdJ0Hw==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="70853765"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="70853765"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2026 01:30:53 -0800
X-CSE-ConnectionGUID: SS2l+9yYS2qcp4PRZaf7mA==
X-CSE-MsgGUID: kNrve0qwQ32vzJgpPhsB7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="211695702"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.246])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2026 01:30:50 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 uma.shankar@intel.com
Subject: Re: [PATCH 3/6] drm/i915/fbdev: Extract intel_fbdev_fb_prefer_stolen()
In-Reply-To: <20260205140235.338410-4-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260205140235.338410-1-vinod.govindapillai@intel.com>
 <20260205140235.338410-4-vinod.govindapillai@intel.com>
Date: Tue, 10 Feb 2026 11:30:48 +0200
Message-ID: <2e0d12e298bec2b29397a63b6ec0c7546913c21f@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: F37BA118E59
X-Rspamd-Action: no action

On Thu, 05 Feb 2026, Vinod Govindapillai <vinod.govindapillai@intel.com> wr=
ote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Consolidate the "should we allocate fbdev fb in stolen?"
> check into a helper function. Makes it easier to change the
> heuristics without having to change so many places.
>
> v2: rebase related changes and consolidate all the prefer
>     stolen conditions into a single function (Vinod)
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 27 +++++++++++++------
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  2 ++
>  drivers/gpu/drm/i915/i915_initial_plane.c     |  3 ++-

All of these files are built on i915 only...

>  3 files changed, 23 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/=
drm/i915/display/intel_fbdev_fb.c
> index e5251ed15948..4f057dbd1279 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> @@ -10,6 +10,7 @@
>  #include "gem/i915_gem_lmem.h"
>=20=20
>  #include "i915_drv.h"
> +#include "intel_display_core.h"

...and should not include intel_display_core.h.

This is non-obvious, and an easy mistake to make. Eventually
intel_fbdev_fb.c needs to move to i915 core, with some refactoring.

>  #include "intel_fbdev_fb.h"
>=20=20
>  u32 intel_fbdev_fb_pitch_align(u32 stride)
> @@ -17,6 +18,23 @@ u32 intel_fbdev_fb_pitch_align(u32 stride)
>  	return ALIGN(stride, 64);
>  }
>=20=20
> +bool intel_fbdev_fb_prefer_stolen(struct intel_display *display,

Just pass struct drm_i915_private around here.

> +				  unsigned int size)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> +
> +	/* Skip stolen on MTL as Wa_22018444074 mitigation. */
> +	if (IS_METEORLAKE(i915))
> +		return false;
> +
> +	/*
> +	 * If the FB is too big, just don't use it since fbdev is not very
> +	 * important and we should probably use that space with FBC or other
> +	 * features.
> +	 */
> +	return i915->dsm.usable_size >=3D size * 2;
> +}
> +
>  struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, =
int size)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(drm);
> @@ -28,14 +46,7 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struct=
 drm_device *drm, int size
>  						  I915_BO_ALLOC_CONTIGUOUS |
>  						  I915_BO_ALLOC_USER);
>  	} else {
> -		/*
> -		 * If the FB is too big, just don't use it since fbdev is not very
> -		 * important and we should probably use that space with FBC or other
> -		 * features.
> -		 *
> -		 * Also skip stolen on MTL as Wa_22018444074 mitigation.
> -		 */
> -		if (!IS_METEORLAKE(i915) && size * 2 < i915->dsm.usable_size)
> +		if (intel_fbdev_fb_prefer_stolen(i915->display, size))
>  			obj =3D i915_gem_object_create_stolen(i915, size);
>  		if (IS_ERR(obj))
>  			obj =3D i915_gem_object_create_shmem(i915, size);
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/=
drm/i915/display/intel_fbdev_fb.h
> index fd0b3775dc1f..82da57601dc7 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> @@ -13,11 +13,13 @@ struct drm_gem_object;
>  struct drm_mode_fb_cmd2;
>  struct fb_info;
>  struct i915_vma;
> +struct intel_display;
>=20=20
>  u32 intel_fbdev_fb_pitch_align(u32 stride);
>  struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, =
int size);
>  void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj);
>  int intel_fbdev_fb_fill_info(struct drm_device *drm, struct fb_info *inf=
o,
>  			     struct drm_gem_object *obj, struct i915_vma *vma);
> +bool intel_fbdev_fb_prefer_stolen(struct intel_display *display, unsigne=
d int size);
>=20=20
>  #endif
> diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/=
i915/i915_initial_plane.c
> index 7fb52d81f7b6..1263d7db2c44 100644
> --- a/drivers/gpu/drm/i915/i915_initial_plane.c
> +++ b/drivers/gpu/drm/i915/i915_initial_plane.c
> @@ -9,6 +9,7 @@
>  #include "display/intel_crtc.h"
>  #include "display/intel_display_types.h"
>  #include "display/intel_fb.h"
> +#include "display/intel_fbdev_fb.h"
>  #include "gem/i915_gem_lmem.h"
>  #include "gem/i915_gem_region.h"
>=20=20
> @@ -116,7 +117,7 @@ initial_plane_vma(struct drm_i915_private *i915,
>  	 */
>  	if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
>  	    mem =3D=3D i915->mm.stolen_region &&
> -	    size * 2 > i915->dsm.usable_size) {
> +	    !intel_fbdev_fb_prefer_stolen(i915->display, size)) {
>  		drm_dbg_kms(&i915->drm, "Initial FB size exceeds half of stolen, disca=
rding\n");
>  		return NULL;
>  	}

--=20
Jani Nikula, Intel
