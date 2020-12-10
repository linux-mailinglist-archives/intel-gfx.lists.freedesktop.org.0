Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6678B2D5F31
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 16:13:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08BA56EA9E;
	Thu, 10 Dec 2020 15:13:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA84A6EAA6
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 15:13:33 +0000 (UTC)
IronPort-SDR: 0SXT3bxuOux9ZwljHOZCQdjoFGeLB+8ORE2ShA53AJcG6HRFNeyrswOP8cre40hyjMdfufN6+t
 UUQaUznrvZWQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="192591041"
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="192591041"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 07:13:31 -0800
IronPort-SDR: GGrc49V0MdLFF50w8IyQP4qV700OiwJHnvEZR7xEAXx543Wxlhns001980sQ8aUldh1G5vsJCy
 zh7/fK432zqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="408567618"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 10 Dec 2020 07:13:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Dec 2020 17:13:27 +0200
Date: Thu, 10 Dec 2020 17:13:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>
Message-ID: <X9I7F0vTshHtYg4z@intel.com>
References: <20201210041755.29088-1-airlied@gmail.com>
 <20201210041755.29088-6-airlied@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210041755.29088-6-airlied@gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915: refactor some crtc code out
 of intel display.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 10, 2020 at 02:17:51PM +1000, Dave Airlie wrote:
> From: Dave Airlie <airlied@redhat.com>
> =

> There may be more crtc code that can be pulled out, but this
> is a good start.
a> =

> RFC: maybe call the new file something different

Most of that seems to be the primary plane code.

What I would so is:
* i9xx_plane.c for all pre-skl plane code
* skl_universal_plane.c for the skl+ plane code
* non-platform specific plane code probably should go
  to intel_atomic_plane.c which could perhaps use
  a rename to just intel_plane.c

> =

> Signed-off-by: Dave Airlie <airlied@redhat.com>
> ---
>  drivers/gpu/drm/i915/Makefile                |   1 +
>  drivers/gpu/drm/i915/display/intel_crtc.c    | 951 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.c | 932 ------------------
>  drivers/gpu/drm/i915/display/intel_display.h |   7 +
>  4 files changed, 959 insertions(+), 932 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_crtc.c
> =

> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 98a35b939052..ffec257702af 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -196,6 +196,7 @@ i915-y +=3D \
>  	display/intel_color.o \
>  	display/intel_combo_phy.o \
>  	display/intel_connector.o \
> +	display/intel_crtc.o \
>  	display/intel_csr.o \
>  	display/intel_cursor.o \
>  	display/intel_display.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/=
i915/display/intel_crtc.c
> new file mode 100644
> index 000000000000..75a79f18cee2
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -0,0 +1,951 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =A9 2020 Intel Corporation
> + */
> +#include <linux/kernel.h>
> +#include <linux/slab.h>
> +
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_fourcc.h>
> +#include <drm/drm_plane.h>
> +#include <drm/drm_plane_helper.h>
> +
> +#include "intel_atomic.h"
> +#include "intel_atomic_plane.h"
> +#include "intel_color.h"
> +#include "intel_display_debugfs.h"
> +#include "intel_display_types.h"
> +#include "intel_pipe_crc.h"
> +#include "intel_sprite.h"
> +
> +/* Primary plane formats for gen <=3D 3 */
> +static const u32 i8xx_primary_formats[] =3D {
> +	DRM_FORMAT_C8,
> +	DRM_FORMAT_XRGB1555,
> +	DRM_FORMAT_RGB565,
> +	DRM_FORMAT_XRGB8888,
> +};
> +
> +/* Primary plane formats for ivb (no fp16 due to hw issue) */
> +static const u32 ivb_primary_formats[] =3D {
> +	DRM_FORMAT_C8,
> +	DRM_FORMAT_RGB565,
> +	DRM_FORMAT_XRGB8888,
> +	DRM_FORMAT_XBGR8888,
> +	DRM_FORMAT_XRGB2101010,
> +	DRM_FORMAT_XBGR2101010,
> +};
> +
> +/* Primary plane formats for gen >=3D 4, except ivb */
> +static const u32 i965_primary_formats[] =3D {
> +	DRM_FORMAT_C8,
> +	DRM_FORMAT_RGB565,
> +	DRM_FORMAT_XRGB8888,
> +	DRM_FORMAT_XBGR8888,
> +	DRM_FORMAT_XRGB2101010,
> +	DRM_FORMAT_XBGR2101010,
> +	DRM_FORMAT_XBGR16161616F,
> +};
> +
> +/* Primary plane formats for vlv/chv */
> +static const u32 vlv_primary_formats[] =3D {
> +	DRM_FORMAT_C8,
> +	DRM_FORMAT_RGB565,
> +	DRM_FORMAT_XRGB8888,
> +	DRM_FORMAT_XBGR8888,
> +	DRM_FORMAT_ARGB8888,
> +	DRM_FORMAT_ABGR8888,
> +	DRM_FORMAT_XRGB2101010,
> +	DRM_FORMAT_XBGR2101010,
> +	DRM_FORMAT_ARGB2101010,
> +	DRM_FORMAT_ABGR2101010,
> +	DRM_FORMAT_XBGR16161616F,
> +};
> +
> +static const u64 i9xx_format_modifiers[] =3D {
> +	I915_FORMAT_MOD_X_TILED,
> +	DRM_FORMAT_MOD_LINEAR,
> +	DRM_FORMAT_MOD_INVALID
> +};
> +
> +static bool i8xx_plane_format_mod_supported(struct drm_plane *_plane,
> +					    u32 format, u64 modifier)
> +{
> +	switch (modifier) {
> +	case DRM_FORMAT_MOD_LINEAR:
> +	case I915_FORMAT_MOD_X_TILED:
> +		break;
> +	default:
> +		return false;
> +	}
> +
> +	switch (format) {
> +	case DRM_FORMAT_C8:
> +	case DRM_FORMAT_RGB565:
> +	case DRM_FORMAT_XRGB1555:
> +	case DRM_FORMAT_XRGB8888:
> +		return modifier =3D=3D DRM_FORMAT_MOD_LINEAR ||
> +			modifier =3D=3D I915_FORMAT_MOD_X_TILED;
> +	default:
> +		return false;
> +	}
> +}
> +
> +static bool i965_plane_format_mod_supported(struct drm_plane *_plane,
> +					    u32 format, u64 modifier)
> +{
> +	switch (modifier) {
> +	case DRM_FORMAT_MOD_LINEAR:
> +	case I915_FORMAT_MOD_X_TILED:
> +		break;
> +	default:
> +		return false;
> +	}
> +
> +	switch (format) {
> +	case DRM_FORMAT_C8:
> +	case DRM_FORMAT_RGB565:
> +	case DRM_FORMAT_XRGB8888:
> +	case DRM_FORMAT_XBGR8888:
> +	case DRM_FORMAT_ARGB8888:
> +	case DRM_FORMAT_ABGR8888:
> +	case DRM_FORMAT_XRGB2101010:
> +	case DRM_FORMAT_XBGR2101010:
> +	case DRM_FORMAT_ARGB2101010:
> +	case DRM_FORMAT_ABGR2101010:
> +	case DRM_FORMAT_XBGR16161616F:
> +		return modifier =3D=3D DRM_FORMAT_MOD_LINEAR ||
> +			modifier =3D=3D I915_FORMAT_MOD_X_TILED;
> +	default:
> +		return false;
> +	}
> +}
> +
> +static bool i9xx_plane_has_fbc(struct drm_i915_private *dev_priv,
> +			       enum i9xx_plane_id i9xx_plane)
> +{
> +	if (!HAS_FBC(dev_priv))
> +		return false;
> +
> +	if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> +		return i9xx_plane =3D=3D PLANE_A; /* tied to pipe A */
> +	else if (IS_IVYBRIDGE(dev_priv))
> +		return i9xx_plane =3D=3D PLANE_A || i9xx_plane =3D=3D PLANE_B ||
> +			i9xx_plane =3D=3D PLANE_C;
> +	else if (INTEL_GEN(dev_priv) >=3D 4)
> +		return i9xx_plane =3D=3D PLANE_A || i9xx_plane =3D=3D PLANE_B;
> +	else
> +		return i9xx_plane =3D=3D PLANE_A;
> +}
> +
> +static void assert_vblank_disabled(struct drm_crtc *crtc)
> +{
> +	if (I915_STATE_WARN_ON(drm_crtc_vblank_get(crtc) =3D=3D 0))
> +		drm_crtc_vblank_put(crtc);
> +}
> +
> +u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc)
> +{
> +	struct drm_device *dev =3D crtc->base.dev;
> +	struct drm_vblank_crtc *vblank =3D &dev->vblank[drm_crtc_index(&crtc->b=
ase)];
> +
> +	if (!vblank->max_vblank_count)
> +		return (u32)drm_crtc_accurate_vblank_count(&crtc->base);
> +
> +	return crtc->base.funcs->get_vblank_counter(&crtc->base);
> +}
> +
> +u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_stat=
e)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	u32 mode_flags =3D crtc->mode_flags;
> +
> +	/*
> +	 * From Gen 11, In case of dsi cmd mode, frame counter wouldnt
> +	 * have updated at the beginning of TE, if we want to use
> +	 * the hw counter, then we would find it updated in only
> +	 * the next TE, hence switching to sw counter.
> +	 */
> +	if (mode_flags & (I915_MODE_FLAG_DSI_USE_TE0 | I915_MODE_FLAG_DSI_USE_T=
E1))
> +		return 0;
> +
> +	/*
> +	 * On i965gm the hardware frame counter reads
> +	 * zero when the TV encoder is enabled :(
> +	 */
> +	if (IS_I965GM(dev_priv) &&
> +	    (crtc_state->output_types & BIT(INTEL_OUTPUT_TVOUT)))
> +		return 0;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 5 || IS_G4X(dev_priv))
> +		return 0xffffffff; /* full 32 bit counter */
> +	else if (INTEL_GEN(dev_priv) >=3D 3)
> +		return 0xffffff; /* only 24 bits of frame count */
> +	else
> +		return 0; /* Gen2 doesn't have a hardware frame counter */
> +}
> +
> +void intel_crtc_vblank_on(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	assert_vblank_disabled(&crtc->base);
> +	drm_crtc_set_max_vblank_count(&crtc->base,
> +				      intel_crtc_max_vblank_count(crtc_state));
> +	drm_crtc_vblank_on(&crtc->base);
> +}
> +
> +void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	drm_crtc_vblank_off(&crtc->base);
> +	assert_vblank_disabled(&crtc->base);
> +}
> +
> +struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc *crtc)
> +{
> +	struct intel_crtc_state *crtc_state;
> +
> +	crtc_state =3D kmalloc(sizeof(*crtc_state), GFP_KERNEL);
> +
> +	if (crtc_state)
> +		intel_crtc_state_reset(crtc_state, crtc);
> +
> +	return crtc_state;
> +}
> +
> +void intel_crtc_state_reset(struct intel_crtc_state *crtc_state,
> +			    struct intel_crtc *crtc)
> +{
> +	memset(crtc_state, 0, sizeof(*crtc_state));
> +
> +	__drm_atomic_helper_crtc_state_reset(&crtc_state->uapi, &crtc->base);
> +
> +	crtc_state->cpu_transcoder =3D INVALID_TRANSCODER;
> +	crtc_state->master_transcoder =3D INVALID_TRANSCODER;
> +	crtc_state->hsw_workaround_pipe =3D INVALID_PIPE;
> +	crtc_state->output_format =3D INTEL_OUTPUT_FORMAT_INVALID;
> +	crtc_state->scaler_state.scaler_id =3D -1;
> +	crtc_state->mst_master_transcoder =3D INVALID_TRANSCODER;
> +}
> +
> +static bool i9xx_plane_has_windowing(struct intel_plane *plane)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	enum i9xx_plane_id i9xx_plane =3D plane->i9xx_plane;
> +
> +	if (IS_CHERRYVIEW(dev_priv))
> +		return i9xx_plane =3D=3D PLANE_B;
> +	else if (INTEL_GEN(dev_priv) >=3D 5 || IS_G4X(dev_priv))
> +		return false;
> +	else if (IS_GEN(dev_priv, 4))
> +		return i9xx_plane =3D=3D PLANE_C;
> +	else
> +		return i9xx_plane =3D=3D PLANE_B ||
> +			i9xx_plane =3D=3D PLANE_C;
> +}
> +
> +static u32 i9xx_plane_ctl(const struct intel_crtc_state *crtc_state,
> +			  const struct intel_plane_state *plane_state)
> +{
> +	struct drm_i915_private *dev_priv =3D
> +		to_i915(plane_state->uapi.plane->dev);
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	unsigned int rotation =3D plane_state->hw.rotation;
> +	u32 dspcntr;
> +
> +	dspcntr =3D DISPLAY_PLANE_ENABLE;
> +
> +	if (IS_G4X(dev_priv) || IS_GEN(dev_priv, 5) ||
> +	    IS_GEN(dev_priv, 6) || IS_IVYBRIDGE(dev_priv))
> +		dspcntr |=3D DISPPLANE_TRICKLE_FEED_DISABLE;
> +
> +	switch (fb->format->format) {
> +	case DRM_FORMAT_C8:
> +		dspcntr |=3D DISPPLANE_8BPP;
> +		break;
> +	case DRM_FORMAT_XRGB1555:
> +		dspcntr |=3D DISPPLANE_BGRX555;
> +		break;
> +	case DRM_FORMAT_ARGB1555:
> +		dspcntr |=3D DISPPLANE_BGRA555;
> +		break;
> +	case DRM_FORMAT_RGB565:
> +		dspcntr |=3D DISPPLANE_BGRX565;
> +		break;
> +	case DRM_FORMAT_XRGB8888:
> +		dspcntr |=3D DISPPLANE_BGRX888;
> +		break;
> +	case DRM_FORMAT_XBGR8888:
> +		dspcntr |=3D DISPPLANE_RGBX888;
> +		break;
> +	case DRM_FORMAT_ARGB8888:
> +		dspcntr |=3D DISPPLANE_BGRA888;
> +		break;
> +	case DRM_FORMAT_ABGR8888:
> +		dspcntr |=3D DISPPLANE_RGBA888;
> +		break;
> +	case DRM_FORMAT_XRGB2101010:
> +		dspcntr |=3D DISPPLANE_BGRX101010;
> +		break;
> +	case DRM_FORMAT_XBGR2101010:
> +		dspcntr |=3D DISPPLANE_RGBX101010;
> +		break;
> +	case DRM_FORMAT_ARGB2101010:
> +		dspcntr |=3D DISPPLANE_BGRA101010;
> +		break;
> +	case DRM_FORMAT_ABGR2101010:
> +		dspcntr |=3D DISPPLANE_RGBA101010;
> +		break;
> +	case DRM_FORMAT_XBGR16161616F:
> +		dspcntr |=3D DISPPLANE_RGBX161616;
> +		break;
> +	default:
> +		MISSING_CASE(fb->format->format);
> +		return 0;
> +	}
> +
> +	if (INTEL_GEN(dev_priv) >=3D 4 &&
> +	    fb->modifier =3D=3D I915_FORMAT_MOD_X_TILED)
> +		dspcntr |=3D DISPPLANE_TILED;
> +
> +	if (rotation & DRM_MODE_ROTATE_180)
> +		dspcntr |=3D DISPPLANE_ROTATE_180;
> +
> +	if (rotation & DRM_MODE_REFLECT_X)
> +		dspcntr |=3D DISPPLANE_MIRROR;
> +
> +	return dspcntr;
> +}
> +
> +static int
> +i9xx_plane_check(struct intel_crtc_state *crtc_state,
> +		 struct intel_plane_state *plane_state)
> +{
> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +	int ret;
> +
> +	ret =3D chv_plane_check_rotation(plane_state);
> +	if (ret)
> +		return ret;
> +
> +	ret =3D intel_atomic_plane_check_clipping(plane_state, crtc_state,
> +						DRM_PLANE_HELPER_NO_SCALING,
> +						DRM_PLANE_HELPER_NO_SCALING,
> +						i9xx_plane_has_windowing(plane));
> +	if (ret)
> +		return ret;
> +
> +	ret =3D i9xx_check_plane_surface(plane_state);
> +	if (ret)
> +		return ret;
> +
> +	if (!plane_state->uapi.visible)
> +		return 0;
> +
> +	ret =3D intel_plane_check_src_coordinates(plane_state);
> +	if (ret)
> +		return ret;
> +
> +	plane_state->ctl =3D i9xx_plane_ctl(crtc_state, plane_state);
> +
> +	return 0;
> +}
> +
> +static u32 i9xx_plane_ctl_crtc(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	u32 dspcntr =3D 0;
> +
> +	if (crtc_state->gamma_enable)
> +		dspcntr |=3D DISPPLANE_GAMMA_ENABLE;
> +
> +	if (crtc_state->csc_enable)
> +		dspcntr |=3D DISPPLANE_PIPE_CSC_ENABLE;
> +
> +	if (INTEL_GEN(dev_priv) < 5)
> +		dspcntr |=3D DISPPLANE_SEL_PIPE(crtc->pipe);
> +
> +	return dspcntr;
> +}
> +
> +static void i9xx_plane_ratio(const struct intel_crtc_state *crtc_state,
> +			     const struct intel_plane_state *plane_state,
> +			     unsigned int *num, unsigned int *den)
> +{
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	unsigned int cpp =3D fb->format->cpp[0];
> +
> +	/*
> +	 * g4x bspec says 64bpp pixel rate can't exceed 80%
> +	 * of cdclk when the sprite plane is enabled on the
> +	 * same pipe. ilk/snb bspec says 64bpp pixel rate is
> +	 * never allowed to exceed 80% of cdclk. Let's just go
> +	 * with the ilk/snb limit always.
> +	 */
> +	if (cpp =3D=3D 8) {
> +		*num =3D 10;
> +		*den =3D 8;
> +	} else {
> +		*num =3D 1;
> +		*den =3D 1;
> +	}
> +}
> +
> +static int i9xx_plane_min_cdclk(const struct intel_crtc_state *crtc_stat=
e,
> +				const struct intel_plane_state *plane_state)
> +{
> +	unsigned int pixel_rate;
> +	unsigned int num, den;
> +
> +	/*
> +	 * Note that crtc_state->pixel_rate accounts for both
> +	 * horizontal and vertical panel fitter downscaling factors.
> +	 * Pre-HSW bspec tells us to only consider the horizontal
> +	 * downscaling factor here. We ignore that and just consider
> +	 * both for simplicity.
> +	 */
> +	pixel_rate =3D crtc_state->pixel_rate;
> +
> +	i9xx_plane_ratio(crtc_state, plane_state, &num, &den);
> +
> +	/* two pixels per clock with double wide pipe */
> +	if (crtc_state->double_wide)
> +		den *=3D 2;
> +
> +	return DIV_ROUND_UP(pixel_rate * num, den);
> +}
> +
> +static void i9xx_update_plane(struct intel_plane *plane,
> +			      const struct intel_crtc_state *crtc_state,
> +			      const struct intel_plane_state *plane_state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	enum i9xx_plane_id i9xx_plane =3D plane->i9xx_plane;
> +	u32 linear_offset;
> +	int x =3D plane_state->color_plane[0].x;
> +	int y =3D plane_state->color_plane[0].y;
> +	int crtc_x =3D plane_state->uapi.dst.x1;
> +	int crtc_y =3D plane_state->uapi.dst.y1;
> +	int crtc_w =3D drm_rect_width(&plane_state->uapi.dst);
> +	int crtc_h =3D drm_rect_height(&plane_state->uapi.dst);
> +	unsigned long irqflags;
> +	u32 dspaddr_offset;
> +	u32 dspcntr;
> +
> +	dspcntr =3D plane_state->ctl | i9xx_plane_ctl_crtc(crtc_state);
> +
> +	linear_offset =3D intel_fb_xy_to_linear(x, y, plane_state, 0);
> +
> +	if (INTEL_GEN(dev_priv) >=3D 4)
> +		dspaddr_offset =3D plane_state->color_plane[0].offset;
> +	else
> +		dspaddr_offset =3D linear_offset;
> +
> +	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +
> +	intel_de_write_fw(dev_priv, DSPSTRIDE(i9xx_plane),
> +			  plane_state->color_plane[0].stride);
> +
> +	if (INTEL_GEN(dev_priv) < 4) {
> +		/*
> +		 * PLANE_A doesn't actually have a full window
> +		 * generator but let's assume we still need to
> +		 * program whatever is there.
> +		 */
> +		intel_de_write_fw(dev_priv, DSPPOS(i9xx_plane),
> +				  (crtc_y << 16) | crtc_x);
> +		intel_de_write_fw(dev_priv, DSPSIZE(i9xx_plane),
> +				  ((crtc_h - 1) << 16) | (crtc_w - 1));
> +	} else if (IS_CHERRYVIEW(dev_priv) && i9xx_plane =3D=3D PLANE_B) {
> +		intel_de_write_fw(dev_priv, PRIMPOS(i9xx_plane),
> +				  (crtc_y << 16) | crtc_x);
> +		intel_de_write_fw(dev_priv, PRIMSIZE(i9xx_plane),
> +				  ((crtc_h - 1) << 16) | (crtc_w - 1));
> +		intel_de_write_fw(dev_priv, PRIMCNSTALPHA(i9xx_plane), 0);
> +	}
> +
> +	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
> +		intel_de_write_fw(dev_priv, DSPOFFSET(i9xx_plane),
> +				  (y << 16) | x);
> +	} else if (INTEL_GEN(dev_priv) >=3D 4) {
> +		intel_de_write_fw(dev_priv, DSPLINOFF(i9xx_plane),
> +				  linear_offset);
> +		intel_de_write_fw(dev_priv, DSPTILEOFF(i9xx_plane),
> +				  (y << 16) | x);
> +	}
> +
> +	/*
> +	 * The control register self-arms if the plane was previously
> +	 * disabled. Try to make the plane enable atomic by writing
> +	 * the control register just before the surface register.
> +	 */
> +	intel_de_write_fw(dev_priv, DSPCNTR(i9xx_plane), dspcntr);
> +	if (INTEL_GEN(dev_priv) >=3D 4)
> +		intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
> +				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
> +	else
> +		intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane),
> +				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
> +
> +	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +}
> +
> +static void i9xx_disable_plane(struct intel_plane *plane,
> +			       const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	enum i9xx_plane_id i9xx_plane =3D plane->i9xx_plane;
> +	unsigned long irqflags;
> +	u32 dspcntr;
> +
> +	/*
> +	 * DSPCNTR pipe gamma enable on g4x+ and pipe csc
> +	 * enable on ilk+ affect the pipe bottom color as
> +	 * well, so we must configure them even if the plane
> +	 * is disabled.
> +	 *
> +	 * On pre-g4x there is no way to gamma correct the
> +	 * pipe bottom color but we'll keep on doing this
> +	 * anyway so that the crtc state readout works correctly.
> +	 */
> +	dspcntr =3D i9xx_plane_ctl_crtc(crtc_state);
> +
> +	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +
> +	intel_de_write_fw(dev_priv, DSPCNTR(i9xx_plane), dspcntr);
> +	if (INTEL_GEN(dev_priv) >=3D 4)
> +		intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane), 0);
> +	else
> +		intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane), 0);
> +
> +	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +}
> +
> +static bool i9xx_plane_get_hw_state(struct intel_plane *plane,
> +				    enum pipe *pipe)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	enum intel_display_power_domain power_domain;
> +	enum i9xx_plane_id i9xx_plane =3D plane->i9xx_plane;
> +	intel_wakeref_t wakeref;
> +	bool ret;
> +	u32 val;
> +
> +	/*
> +	 * Not 100% correct for planes that can move between pipes,
> +	 * but that's only the case for gen2-4 which don't have any
> +	 * display power wells.
> +	 */
> +	power_domain =3D POWER_DOMAIN_PIPE(plane->pipe);
> +	wakeref =3D intel_display_power_get_if_enabled(dev_priv, power_domain);
> +	if (!wakeref)
> +		return false;
> +
> +	val =3D intel_de_read(dev_priv, DSPCNTR(i9xx_plane));
> +
> +	ret =3D val & DISPLAY_PLANE_ENABLE;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 5)
> +		*pipe =3D plane->pipe;
> +	else
> +		*pipe =3D (val & DISPPLANE_SEL_PIPE_MASK) >>
> +			DISPPLANE_SEL_PIPE_SHIFT;
> +
> +	intel_display_power_put(dev_priv, power_domain, wakeref);
> +
> +	return ret;
> +}
> +
> +unsigned int
> +i9xx_plane_max_stride(struct intel_plane *plane,
> +		      u32 pixel_format, u64 modifier,
> +		      unsigned int rotation)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +
> +	if (!HAS_GMCH(dev_priv)) {
> +		return 32*1024;
> +	} else if (INTEL_GEN(dev_priv) >=3D 4) {
> +		if (modifier =3D=3D I915_FORMAT_MOD_X_TILED)
> +			return 16*1024;
> +		else
> +			return 32*1024;
> +	} else if (INTEL_GEN(dev_priv) >=3D 3) {
> +		if (modifier =3D=3D I915_FORMAT_MOD_X_TILED)
> +			return 8*1024;
> +		else
> +			return 16*1024;
> +	} else {
> +		if (plane->i9xx_plane =3D=3D PLANE_C)
> +			return 4*1024;
> +		else
> +			return 8*1024;
> +	}
> +}
> +
> +static const struct drm_plane_funcs i965_plane_funcs =3D {
> +	.update_plane =3D drm_atomic_helper_update_plane,
> +	.disable_plane =3D drm_atomic_helper_disable_plane,
> +	.destroy =3D intel_plane_destroy,
> +	.atomic_duplicate_state =3D intel_plane_duplicate_state,
> +	.atomic_destroy_state =3D intel_plane_destroy_state,
> +	.format_mod_supported =3D i965_plane_format_mod_supported,
> +};
> +
> +static const struct drm_plane_funcs i8xx_plane_funcs =3D {
> +	.update_plane =3D drm_atomic_helper_update_plane,
> +	.disable_plane =3D drm_atomic_helper_disable_plane,
> +	.destroy =3D intel_plane_destroy,
> +	.atomic_duplicate_state =3D intel_plane_duplicate_state,
> +	.atomic_destroy_state =3D intel_plane_destroy_state,
> +	.format_mod_supported =3D i8xx_plane_format_mod_supported,
> +};
> +
> +static struct intel_plane *
> +intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe =
pipe)
> +{
> +	struct intel_plane *plane;
> +	const struct drm_plane_funcs *plane_funcs;
> +	unsigned int supported_rotations;
> +	const u32 *formats;
> +	int num_formats;
> +	int ret, zpos;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 9)
> +		return skl_universal_plane_create(dev_priv, pipe,
> +						  PLANE_PRIMARY);
> +
> +	plane =3D intel_plane_alloc();
> +	if (IS_ERR(plane))
> +		return plane;
> +
> +	plane->pipe =3D pipe;
> +	/*
> +	 * On gen2/3 only plane A can do FBC, but the panel fitter and LVDS
> +	 * port is hooked to pipe B. Hence we want plane A feeding pipe B.
> +	 */
> +	if (HAS_FBC(dev_priv) && INTEL_GEN(dev_priv) < 4 &&
> +	    INTEL_NUM_PIPES(dev_priv) =3D=3D 2)
> +		plane->i9xx_plane =3D (enum i9xx_plane_id) !pipe;
> +	else
> +		plane->i9xx_plane =3D (enum i9xx_plane_id) pipe;
> +	plane->id =3D PLANE_PRIMARY;
> +	plane->frontbuffer_bit =3D INTEL_FRONTBUFFER(pipe, plane->id);
> +
> +	plane->has_fbc =3D i9xx_plane_has_fbc(dev_priv, plane->i9xx_plane);
> +	if (plane->has_fbc) {
> +		struct intel_fbc *fbc =3D &dev_priv->fbc;
> +
> +		fbc->possible_framebuffer_bits |=3D plane->frontbuffer_bit;
> +	}
> +
> +	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> +		formats =3D vlv_primary_formats;
> +		num_formats =3D ARRAY_SIZE(vlv_primary_formats);
> +	} else if (INTEL_GEN(dev_priv) >=3D 4) {
> +		/*
> +		 * WaFP16GammaEnabling:ivb
> +		 * "Workaround : When using the 64-bit format, the plane
> +		 *  output on each color channel has one quarter amplitude.
> +		 *  It can be brought up to full amplitude by using pipe
> +		 *  gamma correction or pipe color space conversion to
> +		 *  multiply the plane output by four."
> +		 *
> +		 * There is no dedicated plane gamma for the primary plane,
> +		 * and using the pipe gamma/csc could conflict with other
> +		 * planes, so we choose not to expose fp16 on IVB primary
> +		 * planes. HSW primary planes no longer have this problem.
> +		 */
> +		if (IS_IVYBRIDGE(dev_priv)) {
> +			formats =3D ivb_primary_formats;
> +			num_formats =3D ARRAY_SIZE(ivb_primary_formats);
> +		} else {
> +			formats =3D i965_primary_formats;
> +			num_formats =3D ARRAY_SIZE(i965_primary_formats);
> +		}
> +	} else {
> +		formats =3D i8xx_primary_formats;
> +		num_formats =3D ARRAY_SIZE(i8xx_primary_formats);
> +	}
> +
> +	if (INTEL_GEN(dev_priv) >=3D 4)
> +		plane_funcs =3D &i965_plane_funcs;
> +	else
> +		plane_funcs =3D &i8xx_plane_funcs;
> +
> +	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> +		plane->min_cdclk =3D vlv_plane_min_cdclk;
> +	else if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> +		plane->min_cdclk =3D hsw_plane_min_cdclk;
> +	else if (IS_IVYBRIDGE(dev_priv))
> +		plane->min_cdclk =3D ivb_plane_min_cdclk;
> +	else
> +		plane->min_cdclk =3D i9xx_plane_min_cdclk;
> +
> +	plane->max_stride =3D i9xx_plane_max_stride;
> +	plane->update_plane =3D i9xx_update_plane;
> +	plane->disable_plane =3D i9xx_disable_plane;
> +	plane->get_hw_state =3D i9xx_plane_get_hw_state;
> +	plane->check_plane =3D i9xx_plane_check;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 5 || IS_G4X(dev_priv))
> +		ret =3D drm_universal_plane_init(&dev_priv->drm, &plane->base,
> +					       0, plane_funcs,
> +					       formats, num_formats,
> +					       i9xx_format_modifiers,
> +					       DRM_PLANE_TYPE_PRIMARY,
> +					       "primary %c", pipe_name(pipe));
> +	else
> +		ret =3D drm_universal_plane_init(&dev_priv->drm, &plane->base,
> +					       0, plane_funcs,
> +					       formats, num_formats,
> +					       i9xx_format_modifiers,
> +					       DRM_PLANE_TYPE_PRIMARY,
> +					       "plane %c",
> +					       plane_name(plane->i9xx_plane));
> +	if (ret)
> +		goto fail;
> +
> +	if (IS_CHERRYVIEW(dev_priv) && pipe =3D=3D PIPE_B) {
> +		supported_rotations =3D
> +			DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180 |
> +			DRM_MODE_REFLECT_X;
> +	} else if (INTEL_GEN(dev_priv) >=3D 4) {
> +		supported_rotations =3D
> +			DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180;
> +	} else {
> +		supported_rotations =3D DRM_MODE_ROTATE_0;
> +	}
> +
> +	if (INTEL_GEN(dev_priv) >=3D 4)
> +		drm_plane_create_rotation_property(&plane->base,
> +						   DRM_MODE_ROTATE_0,
> +						   supported_rotations);
> +
> +	zpos =3D 0;
> +	drm_plane_create_zpos_immutable_property(&plane->base, zpos);
> +
> +	drm_plane_helper_add(&plane->base, &intel_plane_helper_funcs);
> +
> +	return plane;
> +
> +fail:
> +	intel_plane_free(plane);
> +
> +	return ERR_PTR(ret);
> +}
> +
> +static struct intel_crtc *intel_crtc_alloc(void)
> +{
> +	struct intel_crtc_state *crtc_state;
> +	struct intel_crtc *crtc;
> +
> +	crtc =3D kzalloc(sizeof(*crtc), GFP_KERNEL);
> +	if (!crtc)
> +		return ERR_PTR(-ENOMEM);
> +
> +	crtc_state =3D intel_crtc_state_alloc(crtc);
> +	if (!crtc_state) {
> +		kfree(crtc);
> +		return ERR_PTR(-ENOMEM);
> +	}
> +
> +	crtc->base.state =3D &crtc_state->uapi;
> +	crtc->config =3D crtc_state;
> +
> +	return crtc;
> +}
> +
> +static void intel_crtc_free(struct intel_crtc *crtc)
> +{
> +	intel_crtc_destroy_state(&crtc->base, crtc->base.state);
> +	kfree(crtc);
> +}
> +
> +static void intel_crtc_destroy(struct drm_crtc *crtc)
> +{
> +	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc);
> +
> +	drm_crtc_cleanup(crtc);
> +	kfree(intel_crtc);
> +}
> +
> +static int intel_crtc_late_register(struct drm_crtc *crtc)
> +{
> +	intel_crtc_debugfs_add(crtc);
> +	return 0;
> +}
> +
> +#define INTEL_CRTC_FUNCS \
> +	.gamma_set =3D drm_atomic_helper_legacy_gamma_set, \
> +	.set_config =3D drm_atomic_helper_set_config, \
> +	.destroy =3D intel_crtc_destroy, \
> +	.page_flip =3D drm_atomic_helper_page_flip, \
> +	.atomic_duplicate_state =3D intel_crtc_duplicate_state, \
> +	.atomic_destroy_state =3D intel_crtc_destroy_state, \
> +	.set_crc_source =3D intel_crtc_set_crc_source, \
> +	.verify_crc_source =3D intel_crtc_verify_crc_source, \
> +	.get_crc_sources =3D intel_crtc_get_crc_sources, \
> +	.late_register =3D intel_crtc_late_register
> +
> +static const struct drm_crtc_funcs bdw_crtc_funcs =3D {
> +	INTEL_CRTC_FUNCS,
> +
> +	.get_vblank_counter =3D g4x_get_vblank_counter,
> +	.enable_vblank =3D bdw_enable_vblank,
> +	.disable_vblank =3D bdw_disable_vblank,
> +	.get_vblank_timestamp =3D intel_crtc_get_vblank_timestamp,
> +};
> +
> +static const struct drm_crtc_funcs ilk_crtc_funcs =3D {
> +	INTEL_CRTC_FUNCS,
> +
> +	.get_vblank_counter =3D g4x_get_vblank_counter,
> +	.enable_vblank =3D ilk_enable_vblank,
> +	.disable_vblank =3D ilk_disable_vblank,
> +	.get_vblank_timestamp =3D intel_crtc_get_vblank_timestamp,
> +};
> +
> +static const struct drm_crtc_funcs g4x_crtc_funcs =3D {
> +	INTEL_CRTC_FUNCS,
> +
> +	.get_vblank_counter =3D g4x_get_vblank_counter,
> +	.enable_vblank =3D i965_enable_vblank,
> +	.disable_vblank =3D i965_disable_vblank,
> +	.get_vblank_timestamp =3D intel_crtc_get_vblank_timestamp,
> +};
> +
> +static const struct drm_crtc_funcs i965_crtc_funcs =3D {
> +	INTEL_CRTC_FUNCS,
> +
> +	.get_vblank_counter =3D i915_get_vblank_counter,
> +	.enable_vblank =3D i965_enable_vblank,
> +	.disable_vblank =3D i965_disable_vblank,
> +	.get_vblank_timestamp =3D intel_crtc_get_vblank_timestamp,
> +};
> +
> +static const struct drm_crtc_funcs i915gm_crtc_funcs =3D {
> +	INTEL_CRTC_FUNCS,
> +
> +	.get_vblank_counter =3D i915_get_vblank_counter,
> +	.enable_vblank =3D i915gm_enable_vblank,
> +	.disable_vblank =3D i915gm_disable_vblank,
> +	.get_vblank_timestamp =3D intel_crtc_get_vblank_timestamp,
> +};
> +
> +static const struct drm_crtc_funcs i915_crtc_funcs =3D {
> +	INTEL_CRTC_FUNCS,
> +
> +	.get_vblank_counter =3D i915_get_vblank_counter,
> +	.enable_vblank =3D i8xx_enable_vblank,
> +	.disable_vblank =3D i8xx_disable_vblank,
> +	.get_vblank_timestamp =3D intel_crtc_get_vblank_timestamp,
> +};
> +
> +static const struct drm_crtc_funcs i8xx_crtc_funcs =3D {
> +	INTEL_CRTC_FUNCS,
> +
> +	/* no hw vblank counter */
> +	.enable_vblank =3D i8xx_enable_vblank,
> +	.disable_vblank =3D i8xx_disable_vblank,
> +	.get_vblank_timestamp =3D intel_crtc_get_vblank_timestamp,
> +};
> +
> +int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
> +{
> +	struct intel_plane *primary, *cursor;
> +	const struct drm_crtc_funcs *funcs;
> +	struct intel_crtc *crtc;
> +	int sprite, ret;
> +
> +	crtc =3D intel_crtc_alloc();
> +	if (IS_ERR(crtc))
> +		return PTR_ERR(crtc);
> +
> +	crtc->pipe =3D pipe;
> +	crtc->num_scalers =3D RUNTIME_INFO(dev_priv)->num_scalers[pipe];
> +
> +	primary =3D intel_primary_plane_create(dev_priv, pipe);
> +	if (IS_ERR(primary)) {
> +		ret =3D PTR_ERR(primary);
> +		goto fail;
> +	}
> +	crtc->plane_ids_mask |=3D BIT(primary->id);
> +
> +	for_each_sprite(dev_priv, pipe, sprite) {
> +		struct intel_plane *plane;
> +
> +		plane =3D intel_sprite_plane_create(dev_priv, pipe, sprite);
> +		if (IS_ERR(plane)) {
> +			ret =3D PTR_ERR(plane);
> +			goto fail;
> +		}
> +		crtc->plane_ids_mask |=3D BIT(plane->id);
> +	}
> +
> +	cursor =3D intel_cursor_plane_create(dev_priv, pipe);
> +	if (IS_ERR(cursor)) {
> +		ret =3D PTR_ERR(cursor);
> +		goto fail;
> +	}
> +	crtc->plane_ids_mask |=3D BIT(cursor->id);
> +
> +	if (HAS_GMCH(dev_priv)) {
> +		if (IS_CHERRYVIEW(dev_priv) ||
> +		    IS_VALLEYVIEW(dev_priv) || IS_G4X(dev_priv))
> +			funcs =3D &g4x_crtc_funcs;
> +		else if (IS_GEN(dev_priv, 4))
> +			funcs =3D &i965_crtc_funcs;
> +		else if (IS_I945GM(dev_priv) || IS_I915GM(dev_priv))
> +			funcs =3D &i915gm_crtc_funcs;
> +		else if (IS_GEN(dev_priv, 3))
> +			funcs =3D &i915_crtc_funcs;
> +		else
> +			funcs =3D &i8xx_crtc_funcs;
> +	} else {
> +		if (INTEL_GEN(dev_priv) >=3D 8)
> +			funcs =3D &bdw_crtc_funcs;
> +		else
> +			funcs =3D &ilk_crtc_funcs;
> +	}
> +
> +	ret =3D drm_crtc_init_with_planes(&dev_priv->drm, &crtc->base,
> +					&primary->base, &cursor->base,
> +					funcs, "pipe %c", pipe_name(pipe));
> +	if (ret)
> +		goto fail;
> +
> +	BUG_ON(pipe >=3D ARRAY_SIZE(dev_priv->pipe_to_crtc_mapping) ||
> +	       dev_priv->pipe_to_crtc_mapping[pipe] !=3D NULL);
> +	dev_priv->pipe_to_crtc_mapping[pipe] =3D crtc;
> +
> +	if (INTEL_GEN(dev_priv) < 9) {
> +		enum i9xx_plane_id i9xx_plane =3D primary->i9xx_plane;
> +
> +		BUG_ON(i9xx_plane >=3D ARRAY_SIZE(dev_priv->plane_to_crtc_mapping) ||
> +		       dev_priv->plane_to_crtc_mapping[i9xx_plane] !=3D NULL);
> +		dev_priv->plane_to_crtc_mapping[i9xx_plane] =3D crtc;
> +	}
> +
> +	if (INTEL_GEN(dev_priv) >=3D 10)
> +		drm_crtc_create_scaling_filter_property(&crtc->base,
> +						BIT(DRM_SCALING_FILTER_DEFAULT) |
> +						BIT(DRM_SCALING_FILTER_NEAREST_NEIGHBOR));
> +
> +	intel_color_init(crtc);
> +
> +	intel_crtc_crc_init(crtc);
> +
> +	drm_WARN_ON(&dev_priv->drm, drm_crtc_index(&crtc->base) !=3D crtc->pipe=
);
> +
> +	return 0;
> +
> +fail:
> +	intel_crtc_free(crtc);
> +
> +	return ret;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 722a1cf61941..2507a72ee249 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -87,56 +87,6 @@
>  #include "intel_tc.h"
>  #include "intel_vga.h"
>  =

> -/* Primary plane formats for gen <=3D 3 */
> -static const u32 i8xx_primary_formats[] =3D {
> -	DRM_FORMAT_C8,
> -	DRM_FORMAT_XRGB1555,
> -	DRM_FORMAT_RGB565,
> -	DRM_FORMAT_XRGB8888,
> -};
> -
> -/* Primary plane formats for ivb (no fp16 due to hw issue) */
> -static const u32 ivb_primary_formats[] =3D {
> -	DRM_FORMAT_C8,
> -	DRM_FORMAT_RGB565,
> -	DRM_FORMAT_XRGB8888,
> -	DRM_FORMAT_XBGR8888,
> -	DRM_FORMAT_XRGB2101010,
> -	DRM_FORMAT_XBGR2101010,
> -};
> -
> -/* Primary plane formats for gen >=3D 4, except ivb */
> -static const u32 i965_primary_formats[] =3D {
> -	DRM_FORMAT_C8,
> -	DRM_FORMAT_RGB565,
> -	DRM_FORMAT_XRGB8888,
> -	DRM_FORMAT_XBGR8888,
> -	DRM_FORMAT_XRGB2101010,
> -	DRM_FORMAT_XBGR2101010,
> -	DRM_FORMAT_XBGR16161616F,
> -};
> -
> -/* Primary plane formats for vlv/chv */
> -static const u32 vlv_primary_formats[] =3D {
> -	DRM_FORMAT_C8,
> -	DRM_FORMAT_RGB565,
> -	DRM_FORMAT_XRGB8888,
> -	DRM_FORMAT_XBGR8888,
> -	DRM_FORMAT_ARGB8888,
> -	DRM_FORMAT_ABGR8888,
> -	DRM_FORMAT_XRGB2101010,
> -	DRM_FORMAT_XBGR2101010,
> -	DRM_FORMAT_ARGB2101010,
> -	DRM_FORMAT_ABGR2101010,
> -	DRM_FORMAT_XBGR16161616F,
> -};
> -
> -static const u64 i9xx_format_modifiers[] =3D {
> -	I915_FORMAT_MOD_X_TILED,
> -	DRM_FORMAT_MOD_LINEAR,
> -	DRM_FORMAT_MOD_INVALID
> -};
> -
>  static void i9xx_crtc_clock_get(struct intel_crtc *crtc,
>  				struct intel_crtc_state *pipe_config);
>  static void ilk_pch_clock_get(struct intel_crtc *crtc,
> @@ -162,7 +112,6 @@ static void skl_pfit_enable(const struct intel_crtc_s=
tate *crtc_state);
>  static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
>  static void intel_modeset_setup_hw_state(struct drm_device *dev,
>  					 struct drm_modeset_acquire_ctx *ctx);
> -static struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc=
 *crtc);
>  =

>  struct intel_limit {
>  	struct {
> @@ -1301,12 +1250,6 @@ static void assert_planes_disabled(struct intel_cr=
tc *crtc)
>  		assert_plane_disabled(plane);
>  }
>  =

> -static void assert_vblank_disabled(struct drm_crtc *crtc)
> -{
> -	if (I915_STATE_WARN_ON(drm_crtc_vblank_get(crtc) =3D=3D 0))
> -		drm_crtc_vblank_put(crtc);
> -}
> -
>  void assert_pch_transcoder_disabled(struct drm_i915_private *dev_priv,
>  				    enum pipe pipe)
>  {
> @@ -1791,55 +1734,6 @@ enum pipe intel_crtc_pch_transcoder(struct intel_c=
rtc *crtc)
>  		return crtc->pipe;
>  }
>  =

> -static u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *cr=
tc_state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	u32 mode_flags =3D crtc->mode_flags;
> -
> -	/*
> -	 * From Gen 11, In case of dsi cmd mode, frame counter wouldnt
> -	 * have updated at the beginning of TE, if we want to use
> -	 * the hw counter, then we would find it updated in only
> -	 * the next TE, hence switching to sw counter.
> -	 */
> -	if (mode_flags & (I915_MODE_FLAG_DSI_USE_TE0 | I915_MODE_FLAG_DSI_USE_T=
E1))
> -		return 0;
> -
> -	/*
> -	 * On i965gm the hardware frame counter reads
> -	 * zero when the TV encoder is enabled :(
> -	 */
> -	if (IS_I965GM(dev_priv) &&
> -	    (crtc_state->output_types & BIT(INTEL_OUTPUT_TVOUT)))
> -		return 0;
> -
> -	if (INTEL_GEN(dev_priv) >=3D 5 || IS_G4X(dev_priv))
> -		return 0xffffffff; /* full 32 bit counter */
> -	else if (INTEL_GEN(dev_priv) >=3D 3)
> -		return 0xffffff; /* only 24 bits of frame count */
> -	else
> -		return 0; /* Gen2 doesn't have a hardware frame counter */
> -}
> -
> -void intel_crtc_vblank_on(const struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -
> -	assert_vblank_disabled(&crtc->base);
> -	drm_crtc_set_max_vblank_count(&crtc->base,
> -				      intel_crtc_max_vblank_count(crtc_state));
> -	drm_crtc_vblank_on(&crtc->base);
> -}
> -
> -void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -
> -	drm_crtc_vblank_off(&crtc->base);
> -	assert_vblank_disabled(&crtc->base);
> -}
> -
>  void intel_enable_pipe(const struct intel_crtc_state *new_crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(new_crtc_state->uapi.crtc);
> @@ -4046,171 +3940,6 @@ int skl_check_plane_surface(struct intel_plane_st=
ate *plane_state)
>  	return 0;
>  }
>  =

> -static void i9xx_plane_ratio(const struct intel_crtc_state *crtc_state,
> -			     const struct intel_plane_state *plane_state,
> -			     unsigned int *num, unsigned int *den)
> -{
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	unsigned int cpp =3D fb->format->cpp[0];
> -
> -	/*
> -	 * g4x bspec says 64bpp pixel rate can't exceed 80%
> -	 * of cdclk when the sprite plane is enabled on the
> -	 * same pipe. ilk/snb bspec says 64bpp pixel rate is
> -	 * never allowed to exceed 80% of cdclk. Let's just go
> -	 * with the ilk/snb limit always.
> -	 */
> -	if (cpp =3D=3D 8) {
> -		*num =3D 10;
> -		*den =3D 8;
> -	} else {
> -		*num =3D 1;
> -		*den =3D 1;
> -	}
> -}
> -
> -static int i9xx_plane_min_cdclk(const struct intel_crtc_state *crtc_stat=
e,
> -				const struct intel_plane_state *plane_state)
> -{
> -	unsigned int pixel_rate;
> -	unsigned int num, den;
> -
> -	/*
> -	 * Note that crtc_state->pixel_rate accounts for both
> -	 * horizontal and vertical panel fitter downscaling factors.
> -	 * Pre-HSW bspec tells us to only consider the horizontal
> -	 * downscaling factor here. We ignore that and just consider
> -	 * both for simplicity.
> -	 */
> -	pixel_rate =3D crtc_state->pixel_rate;
> -
> -	i9xx_plane_ratio(crtc_state, plane_state, &num, &den);
> -
> -	/* two pixels per clock with double wide pipe */
> -	if (crtc_state->double_wide)
> -		den *=3D 2;
> -
> -	return DIV_ROUND_UP(pixel_rate * num, den);
> -}
> -
> -unsigned int
> -i9xx_plane_max_stride(struct intel_plane *plane,
> -		      u32 pixel_format, u64 modifier,
> -		      unsigned int rotation)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -
> -	if (!HAS_GMCH(dev_priv)) {
> -		return 32*1024;
> -	} else if (INTEL_GEN(dev_priv) >=3D 4) {
> -		if (modifier =3D=3D I915_FORMAT_MOD_X_TILED)
> -			return 16*1024;
> -		else
> -			return 32*1024;
> -	} else if (INTEL_GEN(dev_priv) >=3D 3) {
> -		if (modifier =3D=3D I915_FORMAT_MOD_X_TILED)
> -			return 8*1024;
> -		else
> -			return 16*1024;
> -	} else {
> -		if (plane->i9xx_plane =3D=3D PLANE_C)
> -			return 4*1024;
> -		else
> -			return 8*1024;
> -	}
> -}
> -
> -static u32 i9xx_plane_ctl_crtc(const struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	u32 dspcntr =3D 0;
> -
> -	if (crtc_state->gamma_enable)
> -		dspcntr |=3D DISPPLANE_GAMMA_ENABLE;
> -
> -	if (crtc_state->csc_enable)
> -		dspcntr |=3D DISPPLANE_PIPE_CSC_ENABLE;
> -
> -	if (INTEL_GEN(dev_priv) < 5)
> -		dspcntr |=3D DISPPLANE_SEL_PIPE(crtc->pipe);
> -
> -	return dspcntr;
> -}
> -
> -static u32 i9xx_plane_ctl(const struct intel_crtc_state *crtc_state,
> -			  const struct intel_plane_state *plane_state)
> -{
> -	struct drm_i915_private *dev_priv =3D
> -		to_i915(plane_state->uapi.plane->dev);
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	unsigned int rotation =3D plane_state->hw.rotation;
> -	u32 dspcntr;
> -
> -	dspcntr =3D DISPLAY_PLANE_ENABLE;
> -
> -	if (IS_G4X(dev_priv) || IS_GEN(dev_priv, 5) ||
> -	    IS_GEN(dev_priv, 6) || IS_IVYBRIDGE(dev_priv))
> -		dspcntr |=3D DISPPLANE_TRICKLE_FEED_DISABLE;
> -
> -	switch (fb->format->format) {
> -	case DRM_FORMAT_C8:
> -		dspcntr |=3D DISPPLANE_8BPP;
> -		break;
> -	case DRM_FORMAT_XRGB1555:
> -		dspcntr |=3D DISPPLANE_BGRX555;
> -		break;
> -	case DRM_FORMAT_ARGB1555:
> -		dspcntr |=3D DISPPLANE_BGRA555;
> -		break;
> -	case DRM_FORMAT_RGB565:
> -		dspcntr |=3D DISPPLANE_BGRX565;
> -		break;
> -	case DRM_FORMAT_XRGB8888:
> -		dspcntr |=3D DISPPLANE_BGRX888;
> -		break;
> -	case DRM_FORMAT_XBGR8888:
> -		dspcntr |=3D DISPPLANE_RGBX888;
> -		break;
> -	case DRM_FORMAT_ARGB8888:
> -		dspcntr |=3D DISPPLANE_BGRA888;
> -		break;
> -	case DRM_FORMAT_ABGR8888:
> -		dspcntr |=3D DISPPLANE_RGBA888;
> -		break;
> -	case DRM_FORMAT_XRGB2101010:
> -		dspcntr |=3D DISPPLANE_BGRX101010;
> -		break;
> -	case DRM_FORMAT_XBGR2101010:
> -		dspcntr |=3D DISPPLANE_RGBX101010;
> -		break;
> -	case DRM_FORMAT_ARGB2101010:
> -		dspcntr |=3D DISPPLANE_BGRA101010;
> -		break;
> -	case DRM_FORMAT_ABGR2101010:
> -		dspcntr |=3D DISPPLANE_RGBA101010;
> -		break;
> -	case DRM_FORMAT_XBGR16161616F:
> -		dspcntr |=3D DISPPLANE_RGBX161616;
> -		break;
> -	default:
> -		MISSING_CASE(fb->format->format);
> -		return 0;
> -	}
> -
> -	if (INTEL_GEN(dev_priv) >=3D 4 &&
> -	    fb->modifier =3D=3D I915_FORMAT_MOD_X_TILED)
> -		dspcntr |=3D DISPPLANE_TILED;
> -
> -	if (rotation & DRM_MODE_ROTATE_180)
> -		dspcntr |=3D DISPPLANE_ROTATE_180;
> -
> -	if (rotation & DRM_MODE_REFLECT_X)
> -		dspcntr |=3D DISPPLANE_MIRROR;
> -
> -	return dspcntr;
> -}
> -
>  int i9xx_check_plane_surface(struct intel_plane_state *plane_state)
>  {
>  	struct drm_i915_private *dev_priv =3D
> @@ -4271,197 +4000,6 @@ int i9xx_check_plane_surface(struct intel_plane_s=
tate *plane_state)
>  	return 0;
>  }
>  =

> -static bool i9xx_plane_has_windowing(struct intel_plane *plane)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	enum i9xx_plane_id i9xx_plane =3D plane->i9xx_plane;
> -
> -	if (IS_CHERRYVIEW(dev_priv))
> -		return i9xx_plane =3D=3D PLANE_B;
> -	else if (INTEL_GEN(dev_priv) >=3D 5 || IS_G4X(dev_priv))
> -		return false;
> -	else if (IS_GEN(dev_priv, 4))
> -		return i9xx_plane =3D=3D PLANE_C;
> -	else
> -		return i9xx_plane =3D=3D PLANE_B ||
> -			i9xx_plane =3D=3D PLANE_C;
> -}
> -
> -static int
> -i9xx_plane_check(struct intel_crtc_state *crtc_state,
> -		 struct intel_plane_state *plane_state)
> -{
> -	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -	int ret;
> -
> -	ret =3D chv_plane_check_rotation(plane_state);
> -	if (ret)
> -		return ret;
> -
> -	ret =3D intel_atomic_plane_check_clipping(plane_state, crtc_state,
> -						DRM_PLANE_HELPER_NO_SCALING,
> -						DRM_PLANE_HELPER_NO_SCALING,
> -						i9xx_plane_has_windowing(plane));
> -	if (ret)
> -		return ret;
> -
> -	ret =3D i9xx_check_plane_surface(plane_state);
> -	if (ret)
> -		return ret;
> -
> -	if (!plane_state->uapi.visible)
> -		return 0;
> -
> -	ret =3D intel_plane_check_src_coordinates(plane_state);
> -	if (ret)
> -		return ret;
> -
> -	plane_state->ctl =3D i9xx_plane_ctl(crtc_state, plane_state);
> -
> -	return 0;
> -}
> -
> -static void i9xx_update_plane(struct intel_plane *plane,
> -			      const struct intel_crtc_state *crtc_state,
> -			      const struct intel_plane_state *plane_state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	enum i9xx_plane_id i9xx_plane =3D plane->i9xx_plane;
> -	u32 linear_offset;
> -	int x =3D plane_state->color_plane[0].x;
> -	int y =3D plane_state->color_plane[0].y;
> -	int crtc_x =3D plane_state->uapi.dst.x1;
> -	int crtc_y =3D plane_state->uapi.dst.y1;
> -	int crtc_w =3D drm_rect_width(&plane_state->uapi.dst);
> -	int crtc_h =3D drm_rect_height(&plane_state->uapi.dst);
> -	unsigned long irqflags;
> -	u32 dspaddr_offset;
> -	u32 dspcntr;
> -
> -	dspcntr =3D plane_state->ctl | i9xx_plane_ctl_crtc(crtc_state);
> -
> -	linear_offset =3D intel_fb_xy_to_linear(x, y, plane_state, 0);
> -
> -	if (INTEL_GEN(dev_priv) >=3D 4)
> -		dspaddr_offset =3D plane_state->color_plane[0].offset;
> -	else
> -		dspaddr_offset =3D linear_offset;
> -
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
> -	intel_de_write_fw(dev_priv, DSPSTRIDE(i9xx_plane),
> -			  plane_state->color_plane[0].stride);
> -
> -	if (INTEL_GEN(dev_priv) < 4) {
> -		/*
> -		 * PLANE_A doesn't actually have a full window
> -		 * generator but let's assume we still need to
> -		 * program whatever is there.
> -		 */
> -		intel_de_write_fw(dev_priv, DSPPOS(i9xx_plane),
> -				  (crtc_y << 16) | crtc_x);
> -		intel_de_write_fw(dev_priv, DSPSIZE(i9xx_plane),
> -				  ((crtc_h - 1) << 16) | (crtc_w - 1));
> -	} else if (IS_CHERRYVIEW(dev_priv) && i9xx_plane =3D=3D PLANE_B) {
> -		intel_de_write_fw(dev_priv, PRIMPOS(i9xx_plane),
> -				  (crtc_y << 16) | crtc_x);
> -		intel_de_write_fw(dev_priv, PRIMSIZE(i9xx_plane),
> -				  ((crtc_h - 1) << 16) | (crtc_w - 1));
> -		intel_de_write_fw(dev_priv, PRIMCNSTALPHA(i9xx_plane), 0);
> -	}
> -
> -	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
> -		intel_de_write_fw(dev_priv, DSPOFFSET(i9xx_plane),
> -				  (y << 16) | x);
> -	} else if (INTEL_GEN(dev_priv) >=3D 4) {
> -		intel_de_write_fw(dev_priv, DSPLINOFF(i9xx_plane),
> -				  linear_offset);
> -		intel_de_write_fw(dev_priv, DSPTILEOFF(i9xx_plane),
> -				  (y << 16) | x);
> -	}
> -
> -	/*
> -	 * The control register self-arms if the plane was previously
> -	 * disabled. Try to make the plane enable atomic by writing
> -	 * the control register just before the surface register.
> -	 */
> -	intel_de_write_fw(dev_priv, DSPCNTR(i9xx_plane), dspcntr);
> -	if (INTEL_GEN(dev_priv) >=3D 4)
> -		intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
> -				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
> -	else
> -		intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane),
> -				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> -}
> -
> -static void i9xx_disable_plane(struct intel_plane *plane,
> -			       const struct intel_crtc_state *crtc_state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	enum i9xx_plane_id i9xx_plane =3D plane->i9xx_plane;
> -	unsigned long irqflags;
> -	u32 dspcntr;
> -
> -	/*
> -	 * DSPCNTR pipe gamma enable on g4x+ and pipe csc
> -	 * enable on ilk+ affect the pipe bottom color as
> -	 * well, so we must configure them even if the plane
> -	 * is disabled.
> -	 *
> -	 * On pre-g4x there is no way to gamma correct the
> -	 * pipe bottom color but we'll keep on doing this
> -	 * anyway so that the crtc state readout works correctly.
> -	 */
> -	dspcntr =3D i9xx_plane_ctl_crtc(crtc_state);
> -
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
> -	intel_de_write_fw(dev_priv, DSPCNTR(i9xx_plane), dspcntr);
> -	if (INTEL_GEN(dev_priv) >=3D 4)
> -		intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane), 0);
> -	else
> -		intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane), 0);
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> -}
> -
> -static bool i9xx_plane_get_hw_state(struct intel_plane *plane,
> -				    enum pipe *pipe)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	enum intel_display_power_domain power_domain;
> -	enum i9xx_plane_id i9xx_plane =3D plane->i9xx_plane;
> -	intel_wakeref_t wakeref;
> -	bool ret;
> -	u32 val;
> -
> -	/*
> -	 * Not 100% correct for planes that can move between pipes,
> -	 * but that's only the case for gen2-4 which don't have any
> -	 * display power wells.
> -	 */
> -	power_domain =3D POWER_DOMAIN_PIPE(plane->pipe);
> -	wakeref =3D intel_display_power_get_if_enabled(dev_priv, power_domain);
> -	if (!wakeref)
> -		return false;
> -
> -	val =3D intel_de_read(dev_priv, DSPCNTR(i9xx_plane));
> -
> -	ret =3D val & DISPLAY_PLANE_ENABLE;
> -
> -	if (INTEL_GEN(dev_priv) >=3D 5)
> -		*pipe =3D plane->pipe;
> -	else
> -		*pipe =3D (val & DISPPLANE_SEL_PIPE_MASK) >>
> -			DISPPLANE_SEL_PIPE_SHIFT;
> -
> -	intel_display_power_put(dev_priv, power_domain, wakeref);
> -
> -	return ret;
> -}
> -
>  static void skl_detach_scaler(struct intel_crtc *intel_crtc, int id)
>  {
>  	struct drm_device *dev =3D intel_crtc->base.dev;
> @@ -11908,33 +11446,6 @@ static void ilk_pch_clock_get(struct intel_crtc =
*crtc,
>  					 &pipe_config->fdi_m_n);
>  }
>  =

> -static void intel_crtc_state_reset(struct intel_crtc_state *crtc_state,
> -				   struct intel_crtc *crtc)
> -{
> -	memset(crtc_state, 0, sizeof(*crtc_state));
> -
> -	__drm_atomic_helper_crtc_state_reset(&crtc_state->uapi, &crtc->base);
> -
> -	crtc_state->cpu_transcoder =3D INVALID_TRANSCODER;
> -	crtc_state->master_transcoder =3D INVALID_TRANSCODER;
> -	crtc_state->hsw_workaround_pipe =3D INVALID_PIPE;
> -	crtc_state->output_format =3D INTEL_OUTPUT_FORMAT_INVALID;
> -	crtc_state->scaler_state.scaler_id =3D -1;
> -	crtc_state->mst_master_transcoder =3D INVALID_TRANSCODER;
> -}
> -
> -static struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc=
 *crtc)
> -{
> -	struct intel_crtc_state *crtc_state;
> -
> -	crtc_state =3D kmalloc(sizeof(*crtc_state), GFP_KERNEL);
> -
> -	if (crtc_state)
> -		intel_crtc_state_reset(crtc_state, crtc);
> -
> -	return crtc_state;
> -}
> -
>  /* Returns the currently programmed mode of the given encoder. */
>  struct drm_display_mode *
>  intel_encoder_current_mode(struct intel_encoder *encoder)
> @@ -11975,14 +11486,6 @@ intel_encoder_current_mode(struct intel_encoder =
*encoder)
>  	return mode;
>  }
>  =

> -static void intel_crtc_destroy(struct drm_crtc *crtc)
> -{
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc);
> -
> -	drm_crtc_cleanup(crtc);
> -	kfree(intel_crtc);
> -}
> -
>  /**
>   * intel_wm_need_update - Check whether watermarks need updating
>   * @cur: current plane state
> @@ -15186,17 +14689,6 @@ static int intel_atomic_prepare_commit(struct in=
tel_atomic_state *state)
>  	return 0;
>  }
>  =

> -u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc)
> -{
> -	struct drm_device *dev =3D crtc->base.dev;
> -	struct drm_vblank_crtc *vblank =3D &dev->vblank[drm_crtc_index(&crtc->b=
ase)];
> -
> -	if (!vblank->max_vblank_count)
> -		return (u32)drm_crtc_accurate_vblank_count(&crtc->base);
> -
> -	return crtc->base.funcs->get_vblank_counter(&crtc->base);
> -}
> -
>  void intel_crtc_arm_fifo_underrun(struct intel_crtc *crtc,
>  				  struct intel_crtc_state *crtc_state)
>  {
> @@ -16249,336 +15741,6 @@ void intel_plane_destroy(struct drm_plane *plan=
e)
>  	kfree(to_intel_plane(plane));
>  }
>  =

> -static bool i8xx_plane_format_mod_supported(struct drm_plane *_plane,
> -					    u32 format, u64 modifier)
> -{
> -	switch (modifier) {
> -	case DRM_FORMAT_MOD_LINEAR:
> -	case I915_FORMAT_MOD_X_TILED:
> -		break;
> -	default:
> -		return false;
> -	}
> -
> -	switch (format) {
> -	case DRM_FORMAT_C8:
> -	case DRM_FORMAT_RGB565:
> -	case DRM_FORMAT_XRGB1555:
> -	case DRM_FORMAT_XRGB8888:
> -		return modifier =3D=3D DRM_FORMAT_MOD_LINEAR ||
> -			modifier =3D=3D I915_FORMAT_MOD_X_TILED;
> -	default:
> -		return false;
> -	}
> -}
> -
> -static bool i965_plane_format_mod_supported(struct drm_plane *_plane,
> -					    u32 format, u64 modifier)
> -{
> -	switch (modifier) {
> -	case DRM_FORMAT_MOD_LINEAR:
> -	case I915_FORMAT_MOD_X_TILED:
> -		break;
> -	default:
> -		return false;
> -	}
> -
> -	switch (format) {
> -	case DRM_FORMAT_C8:
> -	case DRM_FORMAT_RGB565:
> -	case DRM_FORMAT_XRGB8888:
> -	case DRM_FORMAT_XBGR8888:
> -	case DRM_FORMAT_ARGB8888:
> -	case DRM_FORMAT_ABGR8888:
> -	case DRM_FORMAT_XRGB2101010:
> -	case DRM_FORMAT_XBGR2101010:
> -	case DRM_FORMAT_ARGB2101010:
> -	case DRM_FORMAT_ABGR2101010:
> -	case DRM_FORMAT_XBGR16161616F:
> -		return modifier =3D=3D DRM_FORMAT_MOD_LINEAR ||
> -			modifier =3D=3D I915_FORMAT_MOD_X_TILED;
> -	default:
> -		return false;
> -	}
> -}
> -
> -static const struct drm_plane_funcs i965_plane_funcs =3D {
> -	.update_plane =3D drm_atomic_helper_update_plane,
> -	.disable_plane =3D drm_atomic_helper_disable_plane,
> -	.destroy =3D intel_plane_destroy,
> -	.atomic_duplicate_state =3D intel_plane_duplicate_state,
> -	.atomic_destroy_state =3D intel_plane_destroy_state,
> -	.format_mod_supported =3D i965_plane_format_mod_supported,
> -};
> -
> -static const struct drm_plane_funcs i8xx_plane_funcs =3D {
> -	.update_plane =3D drm_atomic_helper_update_plane,
> -	.disable_plane =3D drm_atomic_helper_disable_plane,
> -	.destroy =3D intel_plane_destroy,
> -	.atomic_duplicate_state =3D intel_plane_duplicate_state,
> -	.atomic_destroy_state =3D intel_plane_destroy_state,
> -	.format_mod_supported =3D i8xx_plane_format_mod_supported,
> -};
> -
> -static bool i9xx_plane_has_fbc(struct drm_i915_private *dev_priv,
> -			       enum i9xx_plane_id i9xx_plane)
> -{
> -	if (!HAS_FBC(dev_priv))
> -		return false;
> -
> -	if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> -		return i9xx_plane =3D=3D PLANE_A; /* tied to pipe A */
> -	else if (IS_IVYBRIDGE(dev_priv))
> -		return i9xx_plane =3D=3D PLANE_A || i9xx_plane =3D=3D PLANE_B ||
> -			i9xx_plane =3D=3D PLANE_C;
> -	else if (INTEL_GEN(dev_priv) >=3D 4)
> -		return i9xx_plane =3D=3D PLANE_A || i9xx_plane =3D=3D PLANE_B;
> -	else
> -		return i9xx_plane =3D=3D PLANE_A;
> -}
> -
> -static struct intel_plane *
> -intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe =
pipe)
> -{
> -	struct intel_plane *plane;
> -	const struct drm_plane_funcs *plane_funcs;
> -	unsigned int supported_rotations;
> -	const u32 *formats;
> -	int num_formats;
> -	int ret, zpos;
> -
> -	if (INTEL_GEN(dev_priv) >=3D 9)
> -		return skl_universal_plane_create(dev_priv, pipe,
> -						  PLANE_PRIMARY);
> -
> -	plane =3D intel_plane_alloc();
> -	if (IS_ERR(plane))
> -		return plane;
> -
> -	plane->pipe =3D pipe;
> -	/*
> -	 * On gen2/3 only plane A can do FBC, but the panel fitter and LVDS
> -	 * port is hooked to pipe B. Hence we want plane A feeding pipe B.
> -	 */
> -	if (HAS_FBC(dev_priv) && INTEL_GEN(dev_priv) < 4 &&
> -	    INTEL_NUM_PIPES(dev_priv) =3D=3D 2)
> -		plane->i9xx_plane =3D (enum i9xx_plane_id) !pipe;
> -	else
> -		plane->i9xx_plane =3D (enum i9xx_plane_id) pipe;
> -	plane->id =3D PLANE_PRIMARY;
> -	plane->frontbuffer_bit =3D INTEL_FRONTBUFFER(pipe, plane->id);
> -
> -	plane->has_fbc =3D i9xx_plane_has_fbc(dev_priv, plane->i9xx_plane);
> -	if (plane->has_fbc) {
> -		struct intel_fbc *fbc =3D &dev_priv->fbc;
> -
> -		fbc->possible_framebuffer_bits |=3D plane->frontbuffer_bit;
> -	}
> -
> -	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> -		formats =3D vlv_primary_formats;
> -		num_formats =3D ARRAY_SIZE(vlv_primary_formats);
> -	} else if (INTEL_GEN(dev_priv) >=3D 4) {
> -		/*
> -		 * WaFP16GammaEnabling:ivb
> -		 * "Workaround : When using the 64-bit format, the plane
> -		 *  output on each color channel has one quarter amplitude.
> -		 *  It can be brought up to full amplitude by using pipe
> -		 *  gamma correction or pipe color space conversion to
> -		 *  multiply the plane output by four."
> -		 *
> -		 * There is no dedicated plane gamma for the primary plane,
> -		 * and using the pipe gamma/csc could conflict with other
> -		 * planes, so we choose not to expose fp16 on IVB primary
> -		 * planes. HSW primary planes no longer have this problem.
> -		 */
> -		if (IS_IVYBRIDGE(dev_priv)) {
> -			formats =3D ivb_primary_formats;
> -			num_formats =3D ARRAY_SIZE(ivb_primary_formats);
> -		} else {
> -			formats =3D i965_primary_formats;
> -			num_formats =3D ARRAY_SIZE(i965_primary_formats);
> -		}
> -	} else {
> -		formats =3D i8xx_primary_formats;
> -		num_formats =3D ARRAY_SIZE(i8xx_primary_formats);
> -	}
> -
> -	if (INTEL_GEN(dev_priv) >=3D 4)
> -		plane_funcs =3D &i965_plane_funcs;
> -	else
> -		plane_funcs =3D &i8xx_plane_funcs;
> -
> -	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> -		plane->min_cdclk =3D vlv_plane_min_cdclk;
> -	else if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> -		plane->min_cdclk =3D hsw_plane_min_cdclk;
> -	else if (IS_IVYBRIDGE(dev_priv))
> -		plane->min_cdclk =3D ivb_plane_min_cdclk;
> -	else
> -		plane->min_cdclk =3D i9xx_plane_min_cdclk;
> -
> -	plane->max_stride =3D i9xx_plane_max_stride;
> -	plane->update_plane =3D i9xx_update_plane;
> -	plane->disable_plane =3D i9xx_disable_plane;
> -	plane->get_hw_state =3D i9xx_plane_get_hw_state;
> -	plane->check_plane =3D i9xx_plane_check;
> -
> -	if (INTEL_GEN(dev_priv) >=3D 5 || IS_G4X(dev_priv))
> -		ret =3D drm_universal_plane_init(&dev_priv->drm, &plane->base,
> -					       0, plane_funcs,
> -					       formats, num_formats,
> -					       i9xx_format_modifiers,
> -					       DRM_PLANE_TYPE_PRIMARY,
> -					       "primary %c", pipe_name(pipe));
> -	else
> -		ret =3D drm_universal_plane_init(&dev_priv->drm, &plane->base,
> -					       0, plane_funcs,
> -					       formats, num_formats,
> -					       i9xx_format_modifiers,
> -					       DRM_PLANE_TYPE_PRIMARY,
> -					       "plane %c",
> -					       plane_name(plane->i9xx_plane));
> -	if (ret)
> -		goto fail;
> -
> -	if (IS_CHERRYVIEW(dev_priv) && pipe =3D=3D PIPE_B) {
> -		supported_rotations =3D
> -			DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180 |
> -			DRM_MODE_REFLECT_X;
> -	} else if (INTEL_GEN(dev_priv) >=3D 4) {
> -		supported_rotations =3D
> -			DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180;
> -	} else {
> -		supported_rotations =3D DRM_MODE_ROTATE_0;
> -	}
> -
> -	if (INTEL_GEN(dev_priv) >=3D 4)
> -		drm_plane_create_rotation_property(&plane->base,
> -						   DRM_MODE_ROTATE_0,
> -						   supported_rotations);
> -
> -	zpos =3D 0;
> -	drm_plane_create_zpos_immutable_property(&plane->base, zpos);
> -
> -	drm_plane_helper_add(&plane->base, &intel_plane_helper_funcs);
> -
> -	return plane;
> -
> -fail:
> -	intel_plane_free(plane);
> -
> -	return ERR_PTR(ret);
> -}
> -
> -static int intel_crtc_late_register(struct drm_crtc *crtc)
> -{
> -	intel_crtc_debugfs_add(crtc);
> -	return 0;
> -}
> -
> -#define INTEL_CRTC_FUNCS \
> -	.gamma_set =3D drm_atomic_helper_legacy_gamma_set, \
> -	.set_config =3D drm_atomic_helper_set_config, \
> -	.destroy =3D intel_crtc_destroy, \
> -	.page_flip =3D drm_atomic_helper_page_flip, \
> -	.atomic_duplicate_state =3D intel_crtc_duplicate_state, \
> -	.atomic_destroy_state =3D intel_crtc_destroy_state, \
> -	.set_crc_source =3D intel_crtc_set_crc_source, \
> -	.verify_crc_source =3D intel_crtc_verify_crc_source, \
> -	.get_crc_sources =3D intel_crtc_get_crc_sources, \
> -	.late_register =3D intel_crtc_late_register
> -
> -static const struct drm_crtc_funcs bdw_crtc_funcs =3D {
> -	INTEL_CRTC_FUNCS,
> -
> -	.get_vblank_counter =3D g4x_get_vblank_counter,
> -	.enable_vblank =3D bdw_enable_vblank,
> -	.disable_vblank =3D bdw_disable_vblank,
> -	.get_vblank_timestamp =3D intel_crtc_get_vblank_timestamp,
> -};
> -
> -static const struct drm_crtc_funcs ilk_crtc_funcs =3D {
> -	INTEL_CRTC_FUNCS,
> -
> -	.get_vblank_counter =3D g4x_get_vblank_counter,
> -	.enable_vblank =3D ilk_enable_vblank,
> -	.disable_vblank =3D ilk_disable_vblank,
> -	.get_vblank_timestamp =3D intel_crtc_get_vblank_timestamp,
> -};
> -
> -static const struct drm_crtc_funcs g4x_crtc_funcs =3D {
> -	INTEL_CRTC_FUNCS,
> -
> -	.get_vblank_counter =3D g4x_get_vblank_counter,
> -	.enable_vblank =3D i965_enable_vblank,
> -	.disable_vblank =3D i965_disable_vblank,
> -	.get_vblank_timestamp =3D intel_crtc_get_vblank_timestamp,
> -};
> -
> -static const struct drm_crtc_funcs i965_crtc_funcs =3D {
> -	INTEL_CRTC_FUNCS,
> -
> -	.get_vblank_counter =3D i915_get_vblank_counter,
> -	.enable_vblank =3D i965_enable_vblank,
> -	.disable_vblank =3D i965_disable_vblank,
> -	.get_vblank_timestamp =3D intel_crtc_get_vblank_timestamp,
> -};
> -
> -static const struct drm_crtc_funcs i915gm_crtc_funcs =3D {
> -	INTEL_CRTC_FUNCS,
> -
> -	.get_vblank_counter =3D i915_get_vblank_counter,
> -	.enable_vblank =3D i915gm_enable_vblank,
> -	.disable_vblank =3D i915gm_disable_vblank,
> -	.get_vblank_timestamp =3D intel_crtc_get_vblank_timestamp,
> -};
> -
> -static const struct drm_crtc_funcs i915_crtc_funcs =3D {
> -	INTEL_CRTC_FUNCS,
> -
> -	.get_vblank_counter =3D i915_get_vblank_counter,
> -	.enable_vblank =3D i8xx_enable_vblank,
> -	.disable_vblank =3D i8xx_disable_vblank,
> -	.get_vblank_timestamp =3D intel_crtc_get_vblank_timestamp,
> -};
> -
> -static const struct drm_crtc_funcs i8xx_crtc_funcs =3D {
> -	INTEL_CRTC_FUNCS,
> -
> -	/* no hw vblank counter */
> -	.enable_vblank =3D i8xx_enable_vblank,
> -	.disable_vblank =3D i8xx_disable_vblank,
> -	.get_vblank_timestamp =3D intel_crtc_get_vblank_timestamp,
> -};
> -
> -static struct intel_crtc *intel_crtc_alloc(void)
> -{
> -	struct intel_crtc_state *crtc_state;
> -	struct intel_crtc *crtc;
> -
> -	crtc =3D kzalloc(sizeof(*crtc), GFP_KERNEL);
> -	if (!crtc)
> -		return ERR_PTR(-ENOMEM);
> -
> -	crtc_state =3D intel_crtc_state_alloc(crtc);
> -	if (!crtc_state) {
> -		kfree(crtc);
> -		return ERR_PTR(-ENOMEM);
> -	}
> -
> -	crtc->base.state =3D &crtc_state->uapi;
> -	crtc->config =3D crtc_state;
> -
> -	return crtc;
> -}
> -
> -static void intel_crtc_free(struct intel_crtc *crtc)
> -{
> -	intel_crtc_destroy_state(&crtc->base, crtc->base.state);
> -	kfree(crtc);
> -}
> -
>  static void intel_plane_possible_crtcs_init(struct drm_i915_private *dev=
_priv)
>  {
>  	struct intel_plane *plane;
> @@ -16591,100 +15753,6 @@ static void intel_plane_possible_crtcs_init(str=
uct drm_i915_private *dev_priv)
>  	}
>  }
>  =

> -static int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe =
pipe)
> -{
> -	struct intel_plane *primary, *cursor;
> -	const struct drm_crtc_funcs *funcs;
> -	struct intel_crtc *crtc;
> -	int sprite, ret;
> -
> -	crtc =3D intel_crtc_alloc();
> -	if (IS_ERR(crtc))
> -		return PTR_ERR(crtc);
> -
> -	crtc->pipe =3D pipe;
> -	crtc->num_scalers =3D RUNTIME_INFO(dev_priv)->num_scalers[pipe];
> -
> -	primary =3D intel_primary_plane_create(dev_priv, pipe);
> -	if (IS_ERR(primary)) {
> -		ret =3D PTR_ERR(primary);
> -		goto fail;
> -	}
> -	crtc->plane_ids_mask |=3D BIT(primary->id);
> -
> -	for_each_sprite(dev_priv, pipe, sprite) {
> -		struct intel_plane *plane;
> -
> -		plane =3D intel_sprite_plane_create(dev_priv, pipe, sprite);
> -		if (IS_ERR(plane)) {
> -			ret =3D PTR_ERR(plane);
> -			goto fail;
> -		}
> -		crtc->plane_ids_mask |=3D BIT(plane->id);
> -	}
> -
> -	cursor =3D intel_cursor_plane_create(dev_priv, pipe);
> -	if (IS_ERR(cursor)) {
> -		ret =3D PTR_ERR(cursor);
> -		goto fail;
> -	}
> -	crtc->plane_ids_mask |=3D BIT(cursor->id);
> -
> -	if (HAS_GMCH(dev_priv)) {
> -		if (IS_CHERRYVIEW(dev_priv) ||
> -		    IS_VALLEYVIEW(dev_priv) || IS_G4X(dev_priv))
> -			funcs =3D &g4x_crtc_funcs;
> -		else if (IS_GEN(dev_priv, 4))
> -			funcs =3D &i965_crtc_funcs;
> -		else if (IS_I945GM(dev_priv) || IS_I915GM(dev_priv))
> -			funcs =3D &i915gm_crtc_funcs;
> -		else if (IS_GEN(dev_priv, 3))
> -			funcs =3D &i915_crtc_funcs;
> -		else
> -			funcs =3D &i8xx_crtc_funcs;
> -	} else {
> -		if (INTEL_GEN(dev_priv) >=3D 8)
> -			funcs =3D &bdw_crtc_funcs;
> -		else
> -			funcs =3D &ilk_crtc_funcs;
> -	}
> -
> -	ret =3D drm_crtc_init_with_planes(&dev_priv->drm, &crtc->base,
> -					&primary->base, &cursor->base,
> -					funcs, "pipe %c", pipe_name(pipe));
> -	if (ret)
> -		goto fail;
> -
> -	BUG_ON(pipe >=3D ARRAY_SIZE(dev_priv->pipe_to_crtc_mapping) ||
> -	       dev_priv->pipe_to_crtc_mapping[pipe] !=3D NULL);
> -	dev_priv->pipe_to_crtc_mapping[pipe] =3D crtc;
> -
> -	if (INTEL_GEN(dev_priv) < 9) {
> -		enum i9xx_plane_id i9xx_plane =3D primary->i9xx_plane;
> -
> -		BUG_ON(i9xx_plane >=3D ARRAY_SIZE(dev_priv->plane_to_crtc_mapping) ||
> -		       dev_priv->plane_to_crtc_mapping[i9xx_plane] !=3D NULL);
> -		dev_priv->plane_to_crtc_mapping[i9xx_plane] =3D crtc;
> -	}
> -
> -	if (INTEL_GEN(dev_priv) >=3D 10)
> -		drm_crtc_create_scaling_filter_property(&crtc->base,
> -						BIT(DRM_SCALING_FILTER_DEFAULT) |
> -						BIT(DRM_SCALING_FILTER_NEAREST_NEIGHBOR));
> -
> -	intel_color_init(crtc);
> -
> -	intel_crtc_crc_init(crtc);
> -
> -	drm_WARN_ON(&dev_priv->drm, drm_crtc_index(&crtc->base) !=3D crtc->pipe=
);
> -
> -	return 0;
> -
> -fail:
> -	intel_crtc_free(crtc);
> -
> -	return ret;
> -}
>  =

>  int intel_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
>  				      struct drm_file *file)
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index f0a5bf69656f..0eba91d18e96 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -659,6 +659,13 @@ struct intel_plane *
>  intel_cursor_plane_create(struct drm_i915_private *dev_priv,
>  			  enum pipe pipe);
>  =

> +/* crtc */
> +u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_stat=
e);
> +int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe);
> +struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc *crtc);
> +void intel_crtc_state_reset(struct intel_crtc_state *crtc_state,
> +			    struct intel_crtc *crtc);
> +
>  /* modesetting */
>  void intel_modeset_init_hw(struct drm_i915_private *i915);
>  int intel_modeset_init_noirq(struct drm_i915_private *i915);
> -- =

> 2.27.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
