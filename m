Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C829A27017
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 12:18:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 419D210E5F2;
	Tue,  4 Feb 2025 11:18:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X2cJX8lq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DAC910E31F;
 Tue,  4 Feb 2025 11:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738667751; x=1770203751;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=mRlwHMt5UbR25/V4srkbumZ4IkXOeZ4HHIJMplGkzLU=;
 b=X2cJX8lquL1dPXeBu1amoO/Y+KbHIm9CJn60os9xRVoZN+xM7mGUep0j
 exUa2CT9syrOHNhbP+Y5/ZkKgZSTMCiTiYEaHs7gI1jbEvtdCD/DknnoK
 4EdmeFTcnsDQjEahIBZA0lvut6cWEMnQkWtDrvEQ5bVAcZJAeJyCzXWnD
 rOAkLqAq5QJzWkMxymA/5mN9f3y/XqexAfPgZIsS+E/pt4Gyr7/BK2wwF
 yn88/ZK9rIpStrl+nJ2wdce+oOCWRfq3aMUc1CmDdOP7seehZhCRHhYLn
 7r24IhDbib7Jf3ir0jVRZ8QD1OGao0yKef8ChAT5VmbqcjjpseJI7ncS1 g==;
X-CSE-ConnectionGUID: w0KjWBEuTaywrgrs9GP86A==
X-CSE-MsgGUID: kphj/ndnQ4K1GaZjOIX6hQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="49445615"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="49445615"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 03:15:36 -0800
X-CSE-ConnectionGUID: 8qxkLaPTQkSbkqIpPaORDA==
X-CSE-MsgGUID: sybz3S3dT6y9b1luXRsM/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111423835"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.139])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 03:15:34 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 01/11] drm/i915: Decouple i915_gem_dumb_create() from
 the display a bit
In-Reply-To: <20250124163040.8886-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250124163040.8886-1-ville.syrjala@linux.intel.com>
 <20250124163040.8886-2-ville.syrjala@linux.intel.com>
Date: Tue, 04 Feb 2025 13:15:30 +0200
Message-ID: <87seou55bh.fsf@intel.com>
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

On Fri, 24 Jan 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Pass the device argument as drm_device to intel_plane_fb_max_stride()
> to decouple i915_gem_dumb_create() vs. the display code a bit.
>
> xe currently doesn't even call this, but it probably should...
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
>  drivers/gpu/drm/i915/display/intel_display.h | 2 +-
>  drivers/gpu/drm/i915/display/intel_fb.c      | 4 ++--
>  drivers/gpu/drm/i915/gem/i915_gem_create.c   | 2 +-
>  4 files changed, 8 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 7d68d652c1bc..157863428b52 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -713,13 +713,15 @@ void intel_add_fb_offsets(int *x, int *y,
>  	*y +=3D state->view.color_plane[color_plane].y;
>  }
>=20=20
> -u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
> +u32 intel_plane_fb_max_stride(struct drm_device *dev,

Purely subjective, but I've mostly been using struct drm_device *drm
where that's still needed.

BR,
Jani.


>  			      u32 pixel_format, u64 modifier)
>  {
> +	struct intel_display *display =3D to_intel_display(dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	struct intel_crtc *crtc;
>  	struct intel_plane *plane;
>=20=20
> -	if (!HAS_DISPLAY(dev_priv))
> +	if (!HAS_DISPLAY(display))
>  		return 0;
>=20=20
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 49a246feb1ae..b9ed0deb3f69 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -421,7 +421,7 @@ void intel_link_compute_m_n(u16 bpp, int nlanes,
>  			    int pixel_clock, int link_clock,
>  			    int bw_overhead,
>  			    struct intel_link_m_n *m_n);
> -u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
> +u32 intel_plane_fb_max_stride(struct drm_device *dev,
>  			      u32 pixel_format, u64 modifier);
>  enum drm_mode_status
>  intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index 9f7f1b9f3275..3121371635bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -1847,7 +1847,7 @@ u32 intel_fb_max_stride(struct drm_i915_private *de=
v_priv,
>  	 */
>  	if (DISPLAY_VER(dev_priv) < 4 || intel_fb_is_ccs_modifier(modifier) ||
>  	    intel_fb_modifier_uses_dpt(dev_priv, modifier))
> -		return intel_plane_fb_max_stride(dev_priv, pixel_format, modifier);
> +		return intel_plane_fb_max_stride(&dev_priv->drm, pixel_format, modifie=
r);
>  	else if (DISPLAY_VER(dev_priv) >=3D 7)
>  		return 256 * 1024;
>  	else
> @@ -1861,7 +1861,7 @@ intel_fb_stride_alignment(const struct drm_framebuf=
fer *fb, int color_plane)
>  	unsigned int tile_width;
>=20=20
>  	if (is_surface_linear(fb, color_plane)) {
> -		unsigned int max_stride =3D intel_plane_fb_max_stride(dev_priv,
> +		unsigned int max_stride =3D intel_plane_fb_max_stride(&dev_priv->drm,
>  								    fb->format->format,
>  								    fb->modifier);
>=20=20
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm=
/i915/gem/i915_gem_create.c
> index 19156ba4b9ef..c3e6a325872d 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> @@ -193,7 +193,7 @@ i915_gem_dumb_create(struct drm_file *file,
>  	args->pitch =3D ALIGN(args->width * cpp, 64);
>=20=20
>  	/* align stride to page size so that we can remap */
> -	if (args->pitch > intel_plane_fb_max_stride(to_i915(dev), format,
> +	if (args->pitch > intel_plane_fb_max_stride(dev, format,
>  						    DRM_FORMAT_MOD_LINEAR))
>  		args->pitch =3D ALIGN(args->pitch, 4096);

--=20
Jani Nikula, Intel
