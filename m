Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A513AA1D3DA
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 10:50:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8FCD10E2F2;
	Mon, 27 Jan 2025 09:50:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bseJ0ni7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B20E810E214;
 Mon, 27 Jan 2025 09:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737971440; x=1769507440;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=FDQ7wEt0x8rLj33Kue6TVx0howMmZmKYZ4LtpSvRuIA=;
 b=bseJ0ni7FehjorE0YSLqpIX8tdCbjnwlctyrA4HQb4uPwpy2o1ONP4VN
 B/IaMbUPL5plxMWWYoazm/K7N4W5JndFuu0D0Ngsa7rUPkg2k9F8yYUP7
 dON0J3VSvjmm7lWaB6JaH0896TVw6xAoej3cXhKxjjIyTUGzuq1m8dQLU
 3HsdGN0qnnIgYUDs5uCQzuvEMrsiN/31MDtyql/f0mfGs+uMsOxT9skvL
 jLIYOeMxOB/e9QYtZeXRh+IZz+Ih0sU/ndcNpJSXn/ns8o27RwqlX7vcc
 x9k1SZgRSWQiu//W9X1uQ9EJt26VBicTfmu9q1Y+X2R+0HT1/iDsZSlt2 g==;
X-CSE-ConnectionGUID: BpVO4VT9ToO+2YizURMD2Q==
X-CSE-MsgGUID: 8YD+7sl/RR6Km37G1NQWGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11327"; a="38314929"
X-IronPort-AV: E=Sophos;i="6.13,238,1732608000"; d="scan'208";a="38314929"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 01:50:40 -0800
X-CSE-ConnectionGUID: bYr59QYGQm2N/uTBoGqumg==
X-CSE-MsgGUID: RTyp0hnNS/GAoFJnAo9Bcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="145611042"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.14])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 01:50:38 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/5] drm/i915: Move VT-d alignment into
 plane->min_alignment()
In-Reply-To: <20250122151755.6928-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250122151755.6928-1-ville.syrjala@linux.intel.com>
 <20250122151755.6928-2-ville.syrjala@linux.intel.com>
Date: Mon, 27 Jan 2025 11:50:34 +0200
Message-ID: <878qqwbn6d.fsf@intel.com>
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

On Wed, 22 Jan 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Currently we don't account for the VT-d alignment w/a in
> plane->min_alignment() which means that panning inside a larger
> framebuffer can still cause the plane SURF to be misaligned.
> Fix the issue by moving the VT-d alignment w/a into
> plane->min_alignment() itself (for the affected platforms).
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c          | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_cursor.c        |  5 +++++
>  drivers/gpu/drm/i915/display/intel_fb_pin.c        |  8 --------
>  drivers/gpu/drm/i915/display/intel_sprite.c        |  5 +++++
>  drivers/gpu/drm/i915/display/skl_universal_plane.c |  4 ++++
>  5 files changed, 24 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/=
i915/display/i9xx_plane.c
> index ed171fbf8720..19cc34babef3 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -780,9 +780,14 @@ unsigned int vlv_plane_min_alignment(struct intel_pl=
ane *plane,
>  				     const struct drm_framebuffer *fb,
>  				     int color_plane)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +
>  	if (intel_plane_can_async_flip(plane, fb->modifier))
>  		return 256 * 1024;
>=20=20
> +	if (intel_scanout_needs_vtd_wa(i915))
> +		return 256 * 1024;

Nitpick, would be great to convert intel_scanout_needs_vtd_wa() to
struct intel_display first, so we wouldn't have to introduce so many new
struct drm_i915_private uses.

BR,
Jani.

> +
>  	switch (fb->modifier) {
>  	case I915_FORMAT_MOD_X_TILED:
>  		return 4 * 1024;
> @@ -798,9 +803,14 @@ static unsigned int g4x_primary_min_alignment(struct=
 intel_plane *plane,
>  					      const struct drm_framebuffer *fb,
>  					      int color_plane)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +
>  	if (intel_plane_can_async_flip(plane, fb->modifier))
>  		return 256 * 1024;
>=20=20
> +	if (intel_scanout_needs_vtd_wa(i915))
> +		return 256 * 1024;
> +
>  	switch (fb->modifier) {
>  	case I915_FORMAT_MOD_X_TILED:
>  	case DRM_FORMAT_MOD_LINEAR:
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/dr=
m/i915/display/intel_cursor.c
> index ae7243ad6e0c..9157825e370b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -372,6 +372,11 @@ static unsigned int i9xx_cursor_min_alignment(struct=
 intel_plane *plane,
>  					      const struct drm_framebuffer *fb,
>  					      int color_plane)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +
> +	if (intel_scanout_needs_vtd_wa(i915))
> +		return 256 * 1024;
> +
>  	return 4 * 1024; /* physical for i915/i945 */
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/dr=
m/i915/display/intel_fb_pin.c
> index dd3ac7f98dfc..2b9ad46eaef7 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -126,14 +126,6 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *f=
b,
>  	if (drm_WARN_ON(dev, alignment && !is_power_of_2(alignment)))
>  		return ERR_PTR(-EINVAL);
>=20=20
> -	/* Note that the w/a also requires 64 PTE of padding following the
> -	 * bo. We currently fill all unused PTE with the shadow page and so
> -	 * we should always have valid PTE following the scanout preventing
> -	 * the VT-d warning.
> -	 */
> -	if (intel_scanout_needs_vtd_wa(dev_priv) && alignment < 256 * 1024)
> -		alignment =3D 256 * 1024;
> -
>  	/*
>  	 * Global gtt pte registers are special registers which actually forward
>  	 * writes to a chunk of system memory. Which means that there is no risk
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 13996d7059ad..d63e71fe469e 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -980,6 +980,11 @@ static unsigned int g4x_sprite_min_alignment(struct =
intel_plane *plane,
>  					     const struct drm_framebuffer *fb,
>  					     int color_plane)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +
> +	if (intel_scanout_needs_vtd_wa(i915))
> +		return 256 * 1024;
> +
>  	return 4 * 1024;
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 450dd8c64e0c..5cec2df0baca 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -649,6 +649,10 @@ static u32 skl_plane_min_alignment(struct intel_plan=
e *plane,
>  	if (color_plane !=3D 0)
>  		return 4 * 1024;
>=20=20
> +	/*
> +	 * VT-d needs at least 256k alignment,
> +	 * but that's already covered below.
> +	 */
>  	switch (fb->modifier) {
>  	case DRM_FORMAT_MOD_LINEAR:
>  	case I915_FORMAT_MOD_X_TILED:

--=20
Jani Nikula, Intel
