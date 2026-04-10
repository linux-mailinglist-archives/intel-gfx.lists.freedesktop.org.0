Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMkVJrwb2Wk1mQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:48:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0826A3D9AF5
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:48:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DDA110E24B;
	Fri, 10 Apr 2026 15:48:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M7glreG3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EA7A10E140;
 Fri, 10 Apr 2026 15:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775836087; x=1807372087;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=JE4T21YJhlKu7TT8c816pLBQimQvn4APXe2etouIGbo=;
 b=M7glreG3VCPw8Dw2czldr9KOpwkOvrzvReV0VI9a7I5Tr4w1Eq2JWgOG
 ds/VYypogViSSOHTAWeOOASB6Qkv/QPYIZ9+32hQy2U8KFapKWg002v4V
 Dpf+EFXWI+hRwtGjs2p/IL/SLjrS0p4PIaSgp63p+OQ6NwVfJp5P4vQ9c
 xSlf0aYxpAcedhko6BqCpuHPCjn6qU0neqz1eIGDeiHBKNfJrPB6d9hZG
 6C5Sj/GBXKbuKyL3DP5wP62xSUrJVbBraXRIMCC96eJgpYo1TWvFY+XyA
 FTCXNMD1QOgTc00XxPj2/ueJZHkHKeZiV0AljXjriKvn+8WMNsJ78zZv/ g==;
X-CSE-ConnectionGUID: hBlwCjLBR3+grl5A7w2oEg==
X-CSE-MsgGUID: j9DnvxQPQwOHmT7ZDtGEyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="76766016"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="76766016"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:48:07 -0700
X-CSE-ConnectionGUID: 8wF1m95kTCCuJOQGwx6uxg==
X-CSE-MsgGUID: 1xnOAF8TTmmjlFFV7NF6tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="229388520"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.149])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:48:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 04/10] drm/i915: Make plane_config->fb a struct
 drm_framebuffer*
In-Reply-To: <20260410150449.9699-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260410150449.9699-1-ville.syrjala@linux.intel.com>
 <20260410150449.9699-5-ville.syrjala@linux.intel.com>
Date: Fri, 10 Apr 2026 18:48:02 +0300
Message-ID: <fa77ccf73f2da60f4fcfc7275c03ce63907da8ba@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 0826A3D9AF5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 10 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> There's no need to use the intel specific struct intel_framebuffer*
> type in the initial plane_config structure. Just make it a
> struct drm_framebuffer*.

I guess a few words on the "why?" would be nice. I mean they're still
pointers to struct intel_framebuffer objects, and could be
container_of'd back.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c          |  2 +-
>  drivers/gpu/drm/i915/display/intel_display_types.h |  2 +-
>  drivers/gpu/drm/i915/display/intel_initial_plane.c | 10 +++++-----
>  drivers/gpu/drm/i915/display/skl_universal_plane.c |  2 +-
>  drivers/gpu/drm/i915/i915_initial_plane.c          |  6 +++---
>  drivers/gpu/drm/xe/display/xe_initial_plane.c      |  2 +-
>  6 files changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/=
i915/display/i9xx_plane.c
> index 9c16753a1f3b..70734d32a409 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -1240,7 +1240,7 @@ i9xx_get_initial_plane_config(struct intel_crtc *cr=
tc,
>  		    fb->width, fb->height, fb->format->cpp[0] * 8,
>  		    base, fb->pitches[0], plane_config->size);
>=20=20
> -	plane_config->fb =3D intel_fb;
> +	plane_config->fb =3D &intel_fb->base;
>  }
>=20=20
>  bool i9xx_fixup_initial_plane_config(struct intel_crtc *crtc,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index eaa37b8d9584..82c7e03427ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -755,7 +755,7 @@ struct intel_plane_state {
>  };
>=20=20
>  struct intel_initial_plane_config {
> -	struct intel_framebuffer *fb;
> +	struct drm_framebuffer *fb;
>  	struct i915_vma *vma;
>  	int size;
>  	u32 base;
> diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers=
/gpu/drm/i915/display/intel_initial_plane.c
> index 4f51083dbd11..911d67dceba9 100644
> --- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
> @@ -55,9 +55,9 @@ static struct drm_gem_object *
>  intel_alloc_initial_plane_obj(struct intel_display *display,
>  			      struct intel_initial_plane_config *plane_config)
>  {
> -	struct intel_framebuffer *fb =3D plane_config->fb;
> +	struct drm_framebuffer *fb =3D plane_config->fb;
>=20=20
> -	switch (fb->base.modifier) {
> +	switch (fb->modifier) {
>  	case DRM_FORMAT_MOD_LINEAR:
>  	case I915_FORMAT_MOD_X_TILED:
>  	case I915_FORMAT_MOD_Y_TILED:
> @@ -65,7 +65,7 @@ intel_alloc_initial_plane_obj(struct intel_display *dis=
play,
>  		break;
>  	default:
>  		drm_dbg_kms(display->drm, "Unsupported modifier for initial FB: 0x%llx=
\n",
> -			    fb->base.modifier);
> +			    fb->modifier);
>  		return NULL;
>  	}
>=20=20
> @@ -93,7 +93,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
>  		return;
>=20=20
>  	if (intel_alloc_initial_plane_obj(display, plane_config)) {
> -		fb =3D &plane_config->fb->base;
> +		fb =3D plane_config->fb;
>  		vma =3D plane_config->vma;
>  	} else {
>  		const struct intel_plane_state *other_plane_state;
> @@ -149,7 +149,7 @@ static void plane_config_fini(struct intel_display *d=
isplay,
>  			      struct intel_initial_plane_config *plane_config)
>  {
>  	if (plane_config->fb) {
> -		struct drm_framebuffer *fb =3D &plane_config->fb->base;
> +		struct drm_framebuffer *fb =3D plane_config->fb;
>=20=20
>  		/* We may only have the stub and not a full framebuffer */
>  		if (drm_framebuffer_read_refcount(fb))
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 7a9d494334b5..00c863e378a1 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -3206,7 +3206,7 @@ skl_get_initial_plane_config(struct intel_crtc *crt=
c,
>  		    fb->width, fb->height, fb->format->cpp[0] * 8,
>  		    base, fb->pitches[0], plane_config->size);
>=20=20
> -	plane_config->fb =3D intel_fb;
> +	plane_config->fb =3D &intel_fb->base;
>  	return;
>=20=20
>  error:
> diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/=
i915/i915_initial_plane.c
> index 6df57db9b62a..5cb1adde67b6 100644
> --- a/drivers/gpu/drm/i915/i915_initial_plane.c
> +++ b/drivers/gpu/drm/i915/i915_initial_plane.c
> @@ -137,7 +137,7 @@ initial_plane_vma(struct drm_i915_private *i915,
>  	i915_gem_object_set_cache_coherency(obj, HAS_WT(i915) ?
>  					    I915_CACHE_WT : I915_CACHE_NONE);
>=20=20
> -	tiling =3D intel_fb_modifier_to_tiling(plane_config->fb->base.modifier);
> +	tiling =3D intel_fb_modifier_to_tiling(plane_config->fb->modifier);
>=20=20
>  	switch (tiling) {
>  	case I915_TILING_NONE:
> @@ -145,7 +145,7 @@ initial_plane_vma(struct drm_i915_private *i915,
>  	case I915_TILING_X:
>  	case I915_TILING_Y:
>  		obj->tiling_and_stride =3D
> -			plane_config->fb->base.pitches[0] |
> +			plane_config->fb->pitches[0] |
>  			tiling;
>  		break;
>  	default:
> @@ -223,7 +223,7 @@ i915_alloc_initial_plane_obj(struct drm_device *drm,
>  {
>  	struct drm_i915_private *i915 =3D to_i915(drm);
>  	struct drm_mode_fb_cmd2 mode_cmd =3D {};
> -	struct drm_framebuffer *fb =3D &plane_config->fb->base;
> +	struct drm_framebuffer *fb =3D plane_config->fb;
>  	struct i915_vma *vma;
>=20=20
>  	vma =3D initial_plane_vma(i915, plane_config);
> diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/=
drm/xe/display/xe_initial_plane.c
> index 1c7a4e8c390c..8f2d0244c03f 100644
> --- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
> +++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
> @@ -115,7 +115,7 @@ xe_alloc_initial_plane_obj(struct drm_device *drm,
>  {
>  	struct xe_device *xe =3D to_xe_device(drm);
>  	struct drm_mode_fb_cmd2 mode_cmd =3D { 0 };
> -	struct drm_framebuffer *fb =3D &plane_config->fb->base;
> +	struct drm_framebuffer *fb =3D plane_config->fb;
>  	struct xe_bo *bo;
>=20=20
>  	mode_cmd.pixel_format =3D fb->format->format;

--=20
Jani Nikula, Intel
